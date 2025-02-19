/*
    JVLinkのデータを読み込み、保存する
    Open時に指定したDataSpecによって決まる、複数のファイルが
    エラー時には、Errorをthrowする
*/

import winax from "winax";
import fs from "fs";
import path from "path";

import { JV_DATA_PATH } from "../const.js";

export async function readAndSaveJVLinkData(
    // JVLinkのCOMオブジェクト
    jvLink: winax.Object,
    // 出力ファイルが既に存在している場合はスキップするフラグ
    skipExistingFiles: boolean = false,
): Promise<void> {
    try {
        // 読み込むデータのバッファ
        const varBuffer = new winax.Variant("", "pstring" as any);
        // バッファサイズ
        const bufferSize = 103000;
        // 読み込むファイル名（出力引数）
        let out_varFileName = new winax.Variant("", "pstring" as any);

        // 出力ファイルのファイルディスクリプター
        let fd: number = -1;

        // 読み込むループ
        while (true) {
            // JVLinkのデータを読む
            const readResult = jvLink.JVRead(varBuffer, bufferSize, out_varFileName);

            // 戻り値によって、処理を分岐
            //     >0: １ファイル開始 or 続き
            //     -1: １ファイル終了
            //      0: 全ファイル終了
            //     -3: ダウンロード中（少し待つと再開できる）
            if (readResult > 0) {
                // １ファイル開始 or 続き
                // ファイルパスを決定
                const filePath = getFilePath(out_varFileName.valueOf());

                // スキップフラグがtrueで、ファイルが既に存在していて、未オープンの状態だったら、スキップ
                if (skipExistingFiles && fs.existsSync(filePath) && (fd < 0)) {
                    console.log(`${filePath} Skipped!`);
                    jvLink.JVSkip();
                    continue;
                }

                // ファイルを開く
                if (fd < 0) {
                    console.log(filePath);
                    fd = fs.openSync(filePath, "w");
                }

                // ファイルへ出力
                fs.writeFileSync(filePath, varBuffer.valueOf());

            } else if (readResult === -1) {
                // １ファイル終了
                // ファイルを閉じる
                fs.closeSync(fd);
                fd = -1;

            } else if (readResult === 0) {
                // 全ファイル終了
                // ループを抜ける
                console.log("All files finished!");
                break;


            } else if (readResult === -3) {
                // ダウンロード中
                // 少し待つ
                await new Promise(resolve => setTimeout(resolve, 500));

            } else {
                // エラー
                throw new Error(`JVRead failed with code: ${readResult}`);
            }
        }

    } catch (error) {
        if (error instanceof Error) {
            throw error;
        }
        throw new Error("An unknown error occurred");
    }

    return;
}



// ファイル名から、ファイルパスを取得
function getFilePath(fileName: string) {
    // ファイル名の先頭2文字を取得し、ディレクトリ名とする
    const dirName = fileName.slice(0, 2);
    const filePath = path.join(JV_DATA_PATH, dirName, fileName);

    // ディレクトリがなかったら作る
    fs.mkdirSync(path.dirname(filePath), { recursive: true });

    return filePath;
}

