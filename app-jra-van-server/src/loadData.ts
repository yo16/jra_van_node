import winax from "winax";
import fs from "fs";

//import {RecordSpecs} from "./dataFormat";

const fileDir = "./data";

export function loadData(
    dataSpec: string,
    propFromTimestamp: string,
) {
    let raceData = "";
    let jvlink = null;
    try {
        // COMオブジェクトを読み込む
        jvlink = new winax.Object("JVDTLab.JVLink");

        // JVLinkの初期化
        const result = jvlink.JVInit("UNKNOWN");
        if (result < 0) {
            throw new Error(`JVInit failed with code: ${result}`);
        }
        console.log({result});

        // 読み込み
        let fromTimestamp = propFromTimestamp;
        while (true) {
            try {
                const ret = oneJVOpenProcess(jvlink, dataSpec, fromTimestamp);
                if (ret.success) {
                    // 正常終了時は、ループを抜ける
                    break;
                }

                // successでない場合、fromTimestampを書き換えて再実行
                fromTimestamp = ret.lastFileTimestamp;
                console.log("RETRY !!!", fromTimestamp);
                // リトライは怪しいので、いったん中止
                console.log("NO RETRY!!");
                throw new Error("NO RETRY!!");
            }
            catch ( error ) {
                if (error instanceof Error) {
                    throw error;
                }
                throw new Error("oneJVOpenProcess ERROR");
            }
        }

    } catch (error) {
        if (error instanceof Error) {
            return { error: error.message };
        }
        return { error: "An unknown error occurred" };
    }


    return { data: raceData };
}



// oneJVOpenProcess
//  JDOpen～JDCloseを１回行うプロセス
//  正常であれば１回しか呼ばれないが、success:falseで途中中断すると再度呼ばれる
function oneJVOpenProcess(
    jvlink: winax.Object,
    dataSpec: string,
    fromTime: string,
): {success: boolean, lastFileTimestamp: string} {
    let curFileName: string = "";
    let succeeded = false;
    let lastFileTimestamp = "";
    try {
        // データ取得のためのパラメータ設定
        // option
        const option = 4;   // 4:ダイアログなしのセットアップデータ

        // readCount（出力引数）
        const out_readCount = new winax.Variant(0, "pint32" as any);
        // downloadCount（出力引数）
        const out_downloadCount = new winax.Variant(0, "pint32" as any);
        // lastfiletimestamp（出力引数）
        const out_lastFileTimestamp = new winax.Variant("", "pstring" as any);

        // JVOpen
        const openResult = jvlink.JVOpen(
            dataSpec, fromTime, option,
            out_readCount, out_downloadCount, out_lastFileTimestamp
        );
        if (openResult < 0) {
            console.log({ openResult });
            throw new Error(`JVOpen failed with code: ${openResult}`);
        }
        console.log("----- JVOpen -----");
        console.log(`   dataSpec: ${dataSpec}`);
        console.log(`   fromTime: ${fromTime}`);
        console.log(`   option: ${option}`);
        console.log(`   readCount: ${out_readCount.valueOf()}`);
        console.log(`   downloadCount: ${out_downloadCount.valueOf()}`);
        console.log(`   lastFileTimestamp: ${out_lastFileTimestamp.valueOf()}`);


        const bufferSize = 103000;
        let varFileName = new winax.Variant("", "pstring" as any);
        let fileDescriptor: number = -1;
        console.time("OneFile");
        // データの読み込み＆ファイル出力
        AllFilesLoop: while (true) {
            try {

                // JVRead
                //const varBuffer = new winax.Variant(new Array(bufferSize+1).fill(" ").join(""), "pstring" as any);
                const varBuffer = new winax.Variant("", "pstring" as any);
                const readResult = jvlink.JVRead(varBuffer, bufferSize, varFileName);
                //console.log(`JVRead結果: ${readResult}`);
                // １ファイル開始 or 続き
                if (readResult > 0) {
                    // ファイル情報を設定
                    curFileName = varFileName.valueOf();

                    let updateLocalFile = false;
                    if (fileDescriptor < 0) {
                        // ファイルがすでに存在する場合はスキップ
                        try {
                            // curFileNameの先頭2文字を取得
                            const filePath = getFilePath(curFileName);
                            // ファイルの存在確認
                            fs.accessSync(filePath, fs.constants.F_OK);

                            // ファイルは存在する
                            // このファイルはスキップ
                            jvlink.JVSkip();
                            console.log(`${filePath} -> skipped`);

                            curFileName = "";
                            fileDescriptor = -1;

                            // ローカルファイルは更新しない
                            updateLocalFile = false

                        } catch (err) {
                            // ファイルが存在しない場合は継続
                            if (err instanceof Error && (err as NodeJS.ErrnoException).code === 'ENOENT') {
                                // ファイルが存在しない場合は、後でファイルを更新する
                                updateLocalFile = true
                            } else {
                                // それ以外は普通にエラー
                                throw new Error("fs.accessSyncかJVSkip でunknownエラー");
                            }
                        }

                    } else {
                        // 続きの場合は更新する
                        updateLocalFile = true;
                    }

                    // 読んだ結果を、ローカルファイルへ出力
                    // ファイルを開いていなかったら、この関数が開き、fdを返す
                    if (updateLocalFile) {
                        fileDescriptor = writeProcess(
                            fileDescriptor,
                            curFileName,
                            varBuffer.valueOf(),
                            (bufferSize !== readResult),     // bufferいっぱいでなければ行末
                        );
                    }
                }

                // １ファイル終了
                else if (readResult === -1) {
                    // ファイルを閉じる
                    if (fileDescriptor > 0) {
                        console.timeEnd("OneFile");
                        fs.closeSync(fileDescriptor);
                    }

                    // ファイル情報を初期化
                    curFileName = "";
                    fileDescriptor = -1;
                    console.time("OneFile");
                }

                // 全ファイル終了
                else if (readResult === 0) {
                    console.timeEnd("OneFile");
                    // ループを抜ける
                    break AllFilesLoop;
                }

                // -3の場合は、ちょっと待って、そのままループさせる
                else if (readResult === -3) {   // ダウンロード中
                    // 何もしない
                    // 待たない
                }

                // 何かのエラー
                else {
                    throw new Error(`jvlink.JVRead Error. code=${readResult}`);
                }
                
            } catch ( error ) {
                if (error instanceof Error) {
                    console.log(`oneJVOpenProcess.AllFilesLoop error. ${error.message}`);
                    throw error;
                }
                throw new Error("oneJVOpenProcess.AllFilesLoop error");
            }
        }
        // ファイルを開いていたら閉じる
        if (fileDescriptor > 0) {
            fs.closeSync(fileDescriptor);
        }

        // 正常終了
        succeeded = true;

    } catch (error) {
        // 何らかの理由で中断した場合、m_CurrentFileTimestampを返して、
        // 呼び出し元から、それ以降をOpenするところからやり直してもらう
        console.warn("oneJVOpenProcess top-try.catch");
        if (error instanceof Error) {
            console.log(error.message);
        }

        // 今のファイル削除
        if (curFileName.length > 0) {
            console.log(`JVFileDelete: ${curFileName}`);
            jvlink.JVFileDelete(
                curFileName
            );
        }

        // 異常終了
        succeeded = false;

    } finally {
        // 最後に実行したファイルのタイムスタンプを取得
        // クローズする前に取得しておく
        console.log(`aaaaaaaaaaaaaaaaaa ${curFileName}`);
        const curTimestamp = curFileName.slice(4, 10) + "00000000";
        lastFileTimestamp = curTimestamp;
        //lastFileTimestamp = jvlink.m_CurrentFileTimestamp;

        // JVLinkのクローズ
        if (jvlink) {
            jvlink.JVClose();
            console.log("closed!");
        }
        console.timeEnd("OneFile");
    }
    
    // 終了
    return {
        success: succeeded,
        lastFileTimestamp,
    };
}


// JVReadを１回（＝ファイルの１行）行うプロセス
// ファイルオープンはここで行い、クローズは外部で行う
function writeProcess(
    fd: number,
    fileName: string,
    writeString: string,
    isLineEnd: boolean,
): number {
    let retFd: number = fd;
    try {
        // 開いてなかったら開く
        if (retFd < 0) {
            const filePath = getFilePath(fileName);
            console.log(`Open: ${filePath}`);
            retFd = fs.openSync(filePath, "w");
        }

        // トリムして改行付きの文字列にする
        //const line = isLineEnd
        //    ? (writeString.trimEnd() + "\r\n")
        //    : writeString
        //;

        // 出力
        //fs.writeSync(retFd, line);
        fs.writeSync(retFd, writeString);

    } catch (error) {
        console.log("ERROR: writeProcess");
        if (error instanceof Error) {
            console.log(error.message);
            throw new Error(`FileAccessError: ${error.message}`);
        }
        throw new Error("FileAccessError. (no detail)");
    }

    return retFd;
}

// ファイル名から、ファイルパスを取得
function getFilePath(fileName: string) {
    const dirName = fileName.slice(0, 2);
    const filePath = `${fileDir}/${dirName}/${fileName}`;

    // ディレクトリがなかったら作る
    fs.mkdirSync(fileDir, { recursive: true });
    fs.mkdirSync(`${fileDir}/${dirName}`, { recursive: true });

    return filePath;
}

const sleep = (ms: number) => new Promise((resolve) => setTimeout(resolve, ms));
