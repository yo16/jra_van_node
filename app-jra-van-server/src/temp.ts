import winax from "winax";
import fs from "fs";

//import {RecordSpecs} from "./dataFormat";

const fileDir = "./data";

export function loadTemp() {

    try {
        let raceData = "";
        let jvlink = null;

        // COMオブジェクトを読み込む
        jvlink = new winax.Object("JVDTLab.JVLink");

        // JVLinkの初期化
        const result = jvlink.JVInit("UNKNOWN");
        if (result < 0) {
            const errorMessage = `JVInitでエラー: ${result}`;
            console.error(errorMessage);
            throw new Error(errorMessage);
        }
        console.log({result});

        
        //jvlink.JVFileDelete(
        //    "H1VM2004119920230808163012.jvd"
        //);
        //jvlink.JVFileDelete(
        //    "H6VM2004119920230808163013.jvd"
        //);

        // 読み込み
        //const executeType: string = "sokuhou";
        const executeType: string = "chikuseki";
        if (executeType === "chikuseki") {
            // 蓄積系

            const dataSpec = "RACE";
            let fromTimestamp = "19860101000000";
            //const fromTimestamp = "20250101000000";
            //const option = 1;   // 1:通常データ
            //const option = 2;   // 2:今週データ
            //const option = 3;   // 3:セットアップデータ
            //const option = 4;   // 4:ダイアログなしのセットアップデータ
            const option = 2;

            // readCount（出力引数）
            const out_readCount = new winax.Variant(0, "pint32" as any);
            // downloadCount（出力引数）
            const out_downloadCount = new winax.Variant(0, "pint32" as any);
            // lastfiletimestamp（出力引数）
            const out_lastFileTimestamp = new winax.Variant("", "pstring" as any);

            // JVOpen
            console.log("JVOpen!");
            const openResult = jvlink.JVOpen(
                dataSpec, fromTimestamp, option,
                out_readCount, out_downloadCount, out_lastFileTimestamp
            );

            console.log({openResult});
            if (openResult !== 0) {
                const errorMessage = `JVOpenでエラー: ${openResult}`;
                console.error(errorMessage);
                throw new Error(errorMessage);
            }
            console.log(out_readCount.valueOf());
            console.log(out_downloadCount.valueOf());
            console.log(out_lastFileTimestamp.valueOf());

            console.log(jvlink.m_TotalReadFilesize);
            console.log(jvlink.m_CurrentReadFilesize);
            console.log(jvlink.m_CurrentFileTimestamp);

        } else {
            // 速報系
            const dataSpec = "0B42";        // 0B42:時系列オッズ（馬連） → 8.O2形式で出力される
            const key = "202501110711";     // 1/11 中京競馬場 11R
            const openResult = jvlink.JVRTOpen(
                dataSpec, key
            );
            console.log({openResult});
            if (openResult !== 0) {
                const errorMessage = `JVRTOpenでエラー: ${openResult}`;
                console.error(errorMessage);
                throw new Error(errorMessage);
            }


        }

        console.log("よむよ");
        const bufferSize = 103000;
        //const varBuffer = new winax.Variant(new Array(bufferSize).fill(" ").join(""), "pstring" as any);
        const varBuffer = new winax.Variant("", "pstring" as any);
        const varFileName = new winax.Variant("", "pstring" as any);
        const readResult = jvlink.JVRead(varBuffer, bufferSize, varFileName);
        console.log({readResult});
        console.log(`=>${ varBuffer.valueOf() }<=`);
        console.log(bufferSize);
        console.log(`=>${ varFileName.valueOf() }<=`);
    }
    catch (err){
        console.log("何かのエラー");
        if (err instanceof Error){
            console.error(err.message);
        }
    }


    return;
}



//loadTemp();

import { getAccumulatedData } from "./collectData/getAccumulatedData.js";
//import { DataSpecs } from "./dataFormatDefs";
// 蓄積系のキー名(=dataSpec)を取得する
//const dataSpecList = Object.keys(DataSpecs.Setup);

/*
const dataSpecList = [
    "TOKU",
    "RACE",
    "DIFF",
    "DIFN",
    "BLOD",
    "BLDN",
    "MING",
    "SNAP",
    "SNPN",
    "SLOP",
    "YSCH",
    "HOSE",
    "HOSN",
    "HOYU",
    "COMM",
    "WOOD",
];
getAccumulatedData(dataSpecList, "20250118000000");
*/

/*
import { getRealtimeData } from "./collectData/getRealtimeData.js";

// key: “YYYYMMDDJJKKHHRR”
const YYYYMMDD = "20250111";
//   JJ=場コード[05: 東京競馬場 | 06: 中山競馬場]
const JJ = "06";
//   KK=回次
const KK = "01";
//   HH=日次
const HH = "03";
//   RR=レース番号
// 1～12を前ゼロで2桁にする
const RRs = Array.from({length: 12}, (_, i) => (i + 1).toString().padStart(2, '0'));
console.log(RRs);
for (const RR of RRs) {
    await getRealtimeData(["0B42"], `${YYYYMMDD}${JJ}${KK}${HH}${RR}`);
}
*/

import { createDDLFromRecordFormat } from "./defs/ddl/createDDLFromRecordFormat.js";
createDDLFromRecordFormat();

