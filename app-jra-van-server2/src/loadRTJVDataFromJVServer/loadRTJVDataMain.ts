/*
    JVServerからJVData（固定長ファイル）の読み込みメイン
    RT(Real Time・速報系)データの読み込み
    /data/JVData/RealTimeフォルダへ格納する
*/

import winax from "winax";

import { getKeyInfoArray } from "./getKeyInfoArray.js";

//import { openJVLinkFile } from "./openJVLinkFile.js";
//import { readAndSaveJVLinkData } from "./readAndSaveJVLinkData.js";
import { openRTJVLinkFile } from "./openRTJVLinkFile.js";
import { readAndSaveJVLinkData } from "../common/readAndSaveJVLinkData.js";


// JVServerからJVData（固定長ファイル）の読み込みメイン
// dataSpec
//  0B31: オッズ1（単複枠）
//  0B32: オッズ2（馬連）
//  0B33: オッズ3（ワイド）
//  0B34: オッズ4（馬単）
//  0B35: オッズ5（３連複）
//  0B36: オッズ6（３連単）
export async function loadRTJVDataFromJVServer(
    // 読み込み始める日時(yyyyMMdd)
    startDate: string,
    // DataSpec
    dataSpec: string = "0B42",
    // 出力ファイルが既に存在している場合はスキップするフラグ
    skipExistingFiles: boolean = true,
): Promise<{success: boolean, error?: string}> {    
    // DBに接続して、startDate以降のレース情報＝"キー情報の配列"を取得する
    let keyInfoArray: string[] = [];
    try {
        // DBに接続して、startDate以降のレースのキー情報の配列を得る
        // キー情報：YYYYMMDDJJKKHHRR
        //     YYYY: 年
        //     MM: 月
        //     DD: 日
        //     JJ: 場コード、開催場所
        //     KK: 回次
        //     HH: 日次
        //     RR: レース番号
        keyInfoArray = await getKeyInfoArray(startDate);

    } catch (error) {
        if (error instanceof Error) {
            return {
                success: false,
                error: error.message,
            };
        }
    }
    // 見つからない場合はエラーとして終了する
    if (keyInfoArray.length === 0) {
        return {
            success: false,
            error: "No data found",
        };
    }


    // JVLinkへ接続して、情報を得る
    let jvLink: winax.Object | null = null;
    try {
        // JVServerのCOMオブジェクトを作成
        jvLink = new winax.Object("JVDTLab.JVLink");
        if (!jvLink) {
            throw new Error("JVLink object creation failed");
        }

        // JVLinkの初期化
        const result = jvLink.JVInit("UNKNOWN");
        if (result < 0) {
            throw new Error(`JVInit failed with code: ${result}`);
        }
        //console.log({result});

        // キー情報の配列を順に読み込む
        //keyInfoArray = keyInfoArray.slice(0, 1);    // ★★★★★ for debug
        console.log("keyInfoArray.length", keyInfoArray.length);
        for (const keyInfo of keyInfoArray) {
            if (!jvLink) {
                throw new Error(`JVLink object creation failed(2) ${keyInfo}`);
            }

            // JVLinkを開く
            const openResult = openRTJVLinkFile(jvLink, dataSpec, keyInfo);
            if (openResult === 1) {
                // 該当レコード無し（警告終了）
                //console.warn(`該当レコード無し: ${keyInfo}`);
                continue;
            }

            // ファイルを読み込み、保存
            const isAccumulation = false;
            await readAndSaveJVLinkData(
                jvLink,
                skipExistingFiles,
                isAccumulation
            );

            // JVLinkを閉じる
            jvLink.JVClose();
        }
        jvLink = null;

    } catch (error) {
        if (error instanceof Error) {
            console.log("エラーです loadRTJVDataFromJVServer");
            console.log(error.message);
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

