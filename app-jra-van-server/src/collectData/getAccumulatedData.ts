/*
    蓄積型のデータを取得する
*/

import winax from "winax";
import { getAccumulatedDataByDataSpec } from "./getAccumulatedDataByDataSpec.js";

export async function getAccumulatedData(
    dataSpecList: string[], // 複数のdataspecを指定する
    fromTime: string,
    skipFileIfExists: boolean = true,
) {
    // 初期化
    let jvlink: winax.Object | null = null;
    try {
        // COMオブジェクトを読み込む
        jvlink = new winax.Object("JVDTLab.JVLink");

        // JVLinkの初期化
        const result = jvlink.JVInit("UNKNOWN");
        if (result < 0) {
            throw new Error(`JVInit failed with code: ${result}`);
        }
    } catch (error) {
        if (error instanceof Error) {
            console.error(error.message);
            throw error;
        } else {
            console.error(error);
        }
        throw new Error("Failed to initialize JVLink");
    }

    // データ取得
    try {
        // dataSpecごとに、getAccumulatedDataByDataSpecを呼ぶ
        const option = 4;   // 4:ダイアログ無しセットアップデータ(初回のみ)
        for (const dataSpec of dataSpecList) {
            console.log(`dataSpec: ${dataSpec} start`);
            await getAccumulatedDataByDataSpec(
                jvlink,
                dataSpec, fromTime, option,
                skipFileIfExists,
            );
            console.log(`dataSpec: ${dataSpec} end`);
        }
    } catch (error) {
        if (error instanceof Error) {
            console.error(error.message);
            throw error;
        } else {
            console.error(error);
        }
        throw new Error("getAccumulatedData failed");
    }
}
