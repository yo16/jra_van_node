/*
    JVLinkのファイルを開く
    エラー時には、Errorをthrowする
*/

import winax from "winax";


export function openRTJVLinkFile(
    // JVLinkのCOMオブジェクト
    jvLink: winax.Object,
    // DataSpec
    dataSpec: string,
    // データ取得キー
    keyInfo: string,
): number {
    try {
        // データ取得のためのパラメータ設定

        // JVRTOpen
        //console.log("----- JVRTOpen -----");
        //console.log(`   dataSpec: ${dataSpec}`);
        //console.log(`   keyInfo: ${keyInfo}`);
        const openResult = jvLink.JVRTOpen(
            dataSpec,
            keyInfo,
        );
        if (openResult === -1) {
            // 該当レコード無し（警告終了）
            //console.warn("該当レコード無し");
            return 1;
        }
        if (openResult < 0) {
            console.log({ openResult });
            console.log("エラーです openRTJVLinkFile");
            throw new Error(`JVRTOpen failed with code: ${openResult}`);
        }
    } catch (error) {
        if (error instanceof Error) {
            throw error;
        }
        throw new Error("An unknown error occurred");
    }

    return 0;
}

