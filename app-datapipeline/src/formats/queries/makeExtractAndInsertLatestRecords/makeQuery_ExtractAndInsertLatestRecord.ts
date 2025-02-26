/*
    PKのないデータレイクのテーブルから、最新のレコードを抽出し、
    PKのあるテーブルへinsertするクエリを作成する
*/

import { TableColumnType } from "../../jvdata/parseRecordFormat/types.js";
import { getTableColumnMap } from "../../../formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import { makeOneQuery_EILR } from "./makeOneQuery_EILR.js";


export function makeQuery_ExtractAndInsertLatestRecord() {
    const tableColumnMap = getTableColumnMap();

    // １つのTypeIdから、TableColumnTypeの配列を取得する
    for (const recordTypeId in tableColumnMap) {
        // TypeIdに対応するTableColumnTypeの配列を取得する
        // tableColumnTypeの１つが、テーブルの１つに対応する
        const tableColumnTypes: TableColumnType[] = tableColumnMap[recordTypeId];

        for (const tableColumnType of tableColumnTypes) {
            makeOneQuery_EILR(tableColumnType);
        }
    }

    console.log("Created All `Extract and Insert Latest Record` queries");
}