/*
    JVServerからJVData（固定長ファイル）の読み込みメイン
    /dataフォルダへ格納する
*/

import winax from "winax";

import { openJVLinkFile } from "./openJVLinkFile.js";
import { readAndSaveJVLinkData } from "./readAndSaveJVLinkData.js";


// JVServerからJVData（固定長ファイル）の読み込みメイン
export async function loadJVDataFromJVServer(
    // 読み込み始める日時(yyyyMMdd)
    startDate: string,
    // DataSpec
    dataSpec: string = "RACE",
    // 出力ファイルが既に存在している場合はスキップするフラグ
    skipExistingFiles: boolean = true,
): Promise<{success: boolean, error?: string}> {    
    let jvLink: winax.Object | null = null;
    try {
        // JVServerのCOMオブジェクトを作成
        jvLink = new winax.Object("JVDTLab.JVLink");

        // JVLinkの初期化
        const result = jvLink.JVInit("UNKNOWN");
        if (result < 0) {
            throw new Error(`JVInit failed with code: ${result}`);
        }
        //console.log({result});

        // JVLinkを開く
        openJVLinkFile(jvLink, dataSpec, startDate);

        // ファイルを読み込み、保存
        await readAndSaveJVLinkData(jvLink, skipExistingFiles);

        // JVLinkを閉じる
        jvLink.JVClose();
        jvLink = null;

    } catch (error) {
        if (error instanceof Error) {
            return {
                success: false,
                error: error.message,
            };
        }
        return {
            success: false,
            error: "An unknown error occurred",
        };
    
    } finally {
        // JVLinkを閉じる
        if (jvLink) {
            jvLink.JVClose();
        }
    }

    return { success: true };
}

