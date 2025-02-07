/*
    JVLinkのファイルを開く
    エラー時には、Errorをthrowする
*/

import winax from "winax";


export function openJVLinkFile(
    // JVLinkのCOMオブジェクト
    jvLink: winax.Object,
    // DataSpec
    dataSpec: string,
    // startDate（yyyyMMdd）
    startDate: string,
): void {
    try {
        // データ取得のためのパラメータ設定

        // fromTime
        const fromTime = `${startDate}000000`;
        // option
        const option = 4;   // 4:ダイアログなしのセットアップデータ

        // readCount（出力引数）
        const out_readCount = new winax.Variant(0, "pint32" as any);
        // downloadCount（出力引数）
        const out_downloadCount = new winax.Variant(0, "pint32" as any);
        // lastfiletimestamp（出力引数）
        const out_lastFileTimestamp = new winax.Variant("", "pstring" as any);

        // JVOpen
        const openResult = jvLink.JVOpen(
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
    } catch (error) {
        if (error instanceof Error) {
            throw error;
        }
        throw new Error("An unknown error occurred");
    }

    return;
}

