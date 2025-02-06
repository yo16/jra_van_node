/*
    リアルタイム型のデータを取得する
*/
import winax from "winax";
import { readJVLink } from "./readJVLink.js";
import { DATATYPE_DIR_BASE } from "../defs/const.js";

export async function getRealtimeDataByDataSpec(
    jvlink: winax.Object,
    dataSpec: string,
    key: string,
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
                const ret = openRTJVLink(jvlink, dataSpec, key);
                if (ret === 1) {
                    // 該当データなし
                    // 何もせず正常終了
                    break;
                }
            } catch (error) {
                throw error;
            }

            // 読み込みと、ローカルへの保存
            try {
                // 読み込みと、ローカルへの保存
                await readJVLink(
                    jvlink,
                    skipFileIfExists,
                    `${DATATYPE_DIR_BASE.Realtime}`
                );

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


function openRTJVLink(
    jvlink: winax.Object,
    dataSpec: string,
    key: string,
): number {
    // オープン
    try {
        // JVRTOpen
        const openResult = jvlink.JVRTOpen(
            dataSpec,
            key
        );
        if (openResult === -1) {
            // 該当データなし
            // 何もせず正常終了だが、Openの後にReadをしないように、1を返す
            //console.log(`No data found for ${dataSpec} from ${fromTime}`);
            return 1;
        } else if (openResult < 0) {
            console.error(`jvlink.JVRTOpen(${dataSpec}, ${key})`);
            throw new Error(`jvlink.JVRTOpen failed with code: ${openResult}`);
        }

    } catch (error) {
        if (error instanceof Error) {
            console.error(error.message);
            throw error;
        } else {
            console.error(error);
        }
        throw new Error("Failed to open realtime JVLink");
    }

    return 0;
}
