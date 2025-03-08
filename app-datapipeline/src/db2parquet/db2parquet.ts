/*
DBファイルから、Parquetファイルを作成する
*/

import { getTableColumnMap } from "../formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import { TableColumnType } from "../formats/jvdata/parseRecordFormat/types.js";
import { db2parquet_OneTable } from "./db2parquet_OneTable.js";

// すべてのテーブルをParquetファイルに変換する
export async function db2parquet() {
    const tableColumnMap = getTableColumnMap();
    
    // サブディレクトリとして、出力の日時フォルダを作成する（2024-03-20_123456の形）
    const now = new Date();
    const dateStr = now.toISOString().split("T")[0];
    //const timeStr = now.toTimeString().split(" ")[0].replace(/:/g, "");
    //const outputSubDir = `${dateStr}_${timeStr}`;
    const outputSubDir = `${dateStr}`;

    // １つのTypeIdから、TableColumnTypeの配列を取得する
    for (const recordTypeId in tableColumnMap) {
        // TypeIdに対応するTableColumnTypeの配列を取得する
        // tableColumnTypeの１つが、テーブルの１つに対応する
        const tableColumnTypes: TableColumnType[] = tableColumnMap[recordTypeId];

        for (const tableColumnType of tableColumnTypes) {
            // １つのテーブルをParquetファイルに変換する
            await db2parquet_OneTable(
                tableColumnType.tableNameEn,
                outputSubDir
            );
        }
    }

    console.log("db2parquet end.");
}
    