/*
PKなしのレコード群から、PKをつけたときの最新のレコード群を抽出し
PKありのテーブルへinsertする
*/

import { getTableColumnMap } from "../formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import { TableColumnType } from "../formats/jvdata/parseRecordFormat/types.js";
import { migrateOneTableLatestRecord } from "./migrateOneTableLatestRecord.js";



export function migrateLatestRecord() {
    const tableColumnMap = getTableColumnMap();

    // １つのTypeIdから、TableColumnTypeの配列を取得する
    for (const recordTypeId in tableColumnMap) {
        // TypeIdに対応するTableColumnTypeの配列を取得する
        // tableColumnTypeの１つが、テーブルの１つに対応する
        const tableColumnTypes: TableColumnType[] = tableColumnMap[recordTypeId];

        for (const tableColumnType of tableColumnTypes) {
            migrateOneTableLatestRecord(tableColumnType.tableNameEn);
        }
    }

    console.log("Created All `Delete All Records` queries");
}
