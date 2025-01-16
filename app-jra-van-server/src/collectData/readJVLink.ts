// 読み込みと、ローカルへの保存
// オープンはされている前提
// すでに存在するファイルは、スキップする（オプション）
// エラー時は、読み込み途中のファイルを削除する

import winax from "winax";
import fs from "fs";

const LOCAL_DIR_BASE = "./data";

export async function readJVLink(
    jvlink: winax.Object,
    skipFileIfExists: boolean,
) {
    // ファイルを読み込みながら、同時にローカルファイルへ保存する
    let curFileName = "";
    let fileDescriptor = -1;
    let startTime = 0;
    let lineCount = 0;
    try {
        // ファイルを読み込むループ
        FileReadLoop: while (true) {
            // bufferSizeは、最大の値を設定しておく
            const bufferSize = 103000;
            // ファイル名
            const varFileName = new winax.Variant("", "pstring" as any);
            // JVRead
            const varBuffer = new winax.Variant("", "pstring" as any);
            const readResult = jvlink.JVRead(varBuffer, bufferSize, varFileName);
            curFileName = varFileName.valueOf();

            // 戻り値のハンドリング
            if (readResult > 0) {   // 正常に読み込めた
                // ファイルパスを決定, ファイル名の先頭２文字をサブディレクトリとする
                const filePath = getFilePath(curFileName);

                // ローカルファイルのオープン前に、ファイルが存在する場合
                if (checkFileExists(filePath) && (fileDescriptor < 0)) {    // ファイルが存在する
                    if (skipFileIfExists) {         // オプションでスキップ
                        // スキップ
                        jvlink.JVSkip();
                        console.log(`${curFileName} skipped`);
                        continue;
                    } else {                        // オプションでスキップしない（削除）
                        // スキップしない場合は、ファイルを削除（最初からやり直すため）
                        //console.log("DEBUG: unlinkSync start");
                        fs.unlinkSync(filePath);
                        //console.log("DEBUG: unlinkSync end");
                        console.log(`${curFileName} deleted(1)`);
                        }
                }

                // ファイルをローカルファイルへ出力する
                // ファイルを開いていない場合は開く
                if (fileDescriptor < 0) {
                    // フォルダを作成
                    //console.log("DEBUG: mkdirSync start");
                    fs.mkdirSync(getDirName(curFileName), { recursive: true });
                    //console.log("DEBUG: mkdirSync end");
                    // ファイルを開く
                    //console.log("DEBUG: openSync start");
                    fileDescriptor = fs.openSync(filePath, "w");
                    //console.log("DEBUG: openSync end");

                    // 時間計測を開始
                    startTime = performance.now();
                }
                const buffer = varBuffer.valueOf();
                //console.log(`DEBUG(${curFileName}, ${readResult}): ${buffer}`);
                // ファイルへ書き込む
                //console.log("DEBUG: writeFileSync start");
                fs.writeFileSync(fileDescriptor, buffer);
                //console.log("DEBUG: writeFileSync end");
                lineCount++;
            }
            // １ファイル正常に終了
            else if (readResult === -1) {
                // ローカルファイルを閉じる
                if (fileDescriptor > 0) {
                    //console.log("DEBUG: closeSync start");
                    fs.closeSync(fileDescriptor);
                    //console.log("DEBUG: closeSync end");
                }

                // 時間計測を終了
                const endTime = performance.now();
                console.log(`${curFileName} saved, ${endTime - startTime}ms, ${lineCount} lines`);

                // ファイル情報を初期化
                curFileName = "";
                fileDescriptor = -1;
                lineCount = 0;

                //console.log("DEBUG: break FileReadLoop");
                //break FileReadLoop; // debug
            }
            // 全ファイル正常に終了
            else if (readResult === 0) {
                break FileReadLoop;
            }
            // ダウンロード中
            else if (readResult === -3) {
                // 少し待つ
                await new Promise(resolve => setTimeout(resolve, 500));
            }
            // そのほか、何かのエラー
            else {
                throw new Error(`jvlink.JVRead Error. code=${readResult}`);
            }
        }

    } catch (error) {
        // エラーが発生した場合は、読み込み途中のファイルを削除する
        if (curFileName !== "") {
            // JVLink上のファイルを削除
            jvlink.JVFileDelete(curFileName);
            // ローカルファイルを削除
            const localFilePath = getFilePath(curFileName);
            if (checkFileExists(localFilePath)) {
                //console.log("DEBUG: unlinkSync start");
                fs.unlinkSync(localFilePath);
                //console.log("DEBUG: unlinkSync end");
            }

            console.log(`${curFileName} deleted(2)`);
        }
        
        // エラーハンドリング
        if (error instanceof Error) {
            console.error(error.message);
            throw error;
        } else {
            console.error(error);
        }
        throw new Error("Failed to readJVLink");
    }
}

// ファイルの存在を確認する
function checkFileExists(fileName: string) {
    try {
        fs.accessSync(fileName, fs.constants.F_OK);
    } catch {
        // 存在しない
        return false;
    }

    // 存在する
    return true;
}

// ファイル名から、ファイルパスを決定する
function getFilePath(fileName: string) {
    const subDir = fileName.slice(0, 2);
    return `${LOCAL_DIR_BASE}/${subDir}/${fileName}`;
}

// ファイル名から、フォルダ名を決定する
function getDirName(fileName: string) {
    const subDir = fileName.slice(0, 2);
    return `${LOCAL_DIR_BASE}/${subDir}`;
}

