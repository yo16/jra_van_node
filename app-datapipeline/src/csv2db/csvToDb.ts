/*
CSVファイルをDBにインポートする
*/

/*
import fs from "fs";
import path from "path";

import { csvToDbOneFile } from "./csvToDbOneFile.js";
import { getTableName } from "../defs/getTableName.js";



// データベースファイルとcsvファイルのパス
export const DB_FILE = "./data/Db/jra_van_sqlite.db";
//export const CSV_FILE = "./data/Csv/Accumulated/RA/RABW2025011920250117112839.jvd.csv";
//export const TABLE_NAME = "RaceDetail";



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
