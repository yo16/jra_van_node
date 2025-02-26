/*
テーブル内のレコードをすべて削除するクエリを作成
ExtractAndInsertLatestRecordでInsertする前に実行する想定
*/

import { TableColumnType } from "../../jvdata/parseRecordFormat/types.js";
import { getTableColumnMap } from "../../../formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import { makeOneQuery_DeleteAllRecords } from "./makeOneQuery_DeleteAllRecords.js";


export function makeDeleteAllTablesRecords()
{
    const tableColumnMap = getTableColumnMap();

    // １つのTypeIdから、TableColumnTypeの配列を取得する
    for (const recordTypeId in tableColumnMap) {
        // TypeIdに対応するTableColumnTypeの配列を取得する
        // tableColumnTypeの１つが、テーブルの１つに対応する
        const tableColumnTypes: TableColumnType[] = tableColumnMap[recordTypeId];

        for (const tableColumnType of tableColumnTypes) {
            makeOneQuery_DeleteAllRecords(tableColumnType);
        }
    }

    console.log("Created All `Delete All Records` queries");
}

