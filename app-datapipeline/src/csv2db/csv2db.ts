/*
    csvファイルを DBへinsertする処理
*/


import fs from "fs";
import path from "path";

import { getTableColumnMap } from "../formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import { TableColumnType } from "../formats/jvdata/parseRecordFormat/types.js";
import { csv2dbOneTable } from "./csv2dbOneTable.js";


export async function csv2Db(
    withPk: boolean = true
) {
    // テーブル名と列名のマップを取得する
    const tcMap = getTableColumnMap();

    // すべてのレコードタイプIDに対して、csvをDBへinsertする
    for (const recordTypeId in tcMap) {
        const tcTypes: TableColumnType[] = tcMap[recordTypeId];

        // １つのレコードタイプIDに対して、複数のTableColumnTypeが存在する（本テーブルと別テーブル）
        for (const tcType of tcTypes) {
            // １つのTableColumnTypeに対して、csvをDBへinsertする
            csv2dbOneTable(tcType, withPk);
        }
    }
}



/*
import { csvToDbOneFile } from "./csvToDbOneFile.js";


import { getTableName } from "../defs/getTableName.js";



// データベースファイルとcsvファイルのパス
export const DB_FILE = "./data/Db/jra_van_sqlite.db";



export async function csvToDb() {
    const root = "./data/Csv/Accumulated";

    const entries = fs.readdirSync(root, { withFileTypes: true });
    RecordTypeIDLoop: for (const entry of entries) {
        //// "RA"フォルダだけを対象とする
        //if (entry.name !== "RA") {
        //    continue;
        //}


        const fullPath = path.join(root, entry.name);
    
        if (entry.isDirectory()) {
            // サブフォルダ内のファイルを処理
            const files = fs.readdirSync(fullPath);
            for (const file of files) {
                const filePath = path.join(fullPath, file);
                if (fs.statSync(filePath).isFile()) {
                    const tableName = `${getTableName(filePath)}_NoPK`;
                    console.log("tableName: ", tableName);

                    // csvファイルをDBにインポートする
                    try {
                        csvToDbOneFile(DB_FILE, filePath, tableName);
                        //break RecordTypeIDLoop; // for debug
                    } catch (error) {
                        console.error("CSVをSQLiteにインポートに失敗しました:", error);
                        throw error;
                    }
                }
            }
        }
    }
}


*/