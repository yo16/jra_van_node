// 蓄積型データを、DataSpecを使って取得する

import winax from "winax";
import { readJVLink } from "./readJVLink";

export async function getAccumulatedDataByDataSpec(
    jvlink: winax.Object,
    dataSpec: string,
    fromTime: string,
    option: number,
    skipFileIfExists: boolean,
) {
    // オープンと読み込みを行う
    // 読み込み時にエラーが発生した場合は、読み込み途中のファイルを削除し、オープンからやり直す
    try {
        let repeatCount = 0;
        const repeatLimit = 10;
        while (repeatCount < repeatLimit) {
            // オープン
            try {
                openJVLink(jvlink, dataSpec, fromTime, option);
            } catch (error) {
                throw error;
            }

            // 読み込みと、ローカルへの保存
            try {
                // 読み込みと、ローカルへの保存
                await readJVLink(jvlink, skipFileIfExists);

                // 正常終了したので、ループを抜ける
                break;
                
            } catch (error) {
                // エラーが発生した場合は、console.errorでエラーを出力して、オープンからやり直す
                console.error(`Error occurred during data reading. Starting retry attempt ${repeatCount + 1}`);
                console.error(error);

                // リトライの前に、クローズ
                jvlink.JVClose();
            }

            // 無限ループ防止
            repeatCount++;
        }

    } catch (error) {
        if (error instanceof Error) {
            console.error(error.message);
            throw error;
        } else {
            console.error(error);
        }
        throw new Error("Failed to getAccumulatedDataByDataSpec");

    } finally {
        // オープンをクローズする
        jvlink.JVClose();
    }

    // 正常終了
    return;
}

function openJVLink(
    jvlink: winax.Object,
    dataSpec: string,
    fromTime: string,
    option: number
) {
    // オープン
    try {
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
            throw new Error(`jvlink.JVOpen failed with code: ${openResult}`);
        }

    } catch (error) {
        if (error instanceof Error) {
            console.error(error.message);
            throw error;
        } else {
            console.error(error);
        }
        throw new Error("Failed to openJVLink");
    }
}
