/*
    create table のクエリを作成する
*/

import { TableColumnType } from "../../jvdata/parseRecordFormat/types.js";
import { getTableColumnMap } from "../../jvdata/parseRecordFormat/getTableColumnMap.js";
import { makeCreateTable } from "./makeCreateTable.js";

export function makeCreateTables(
    withPk: boolean = true
) {
    // 定義情報を読み取る
    const tableColumnMap = getTableColumnMap();

    // １つのTypeIdから、TableColumnTypeの配列を取得する
    for (const recordTypeId in tableColumnMap) {
        // TypeIdに対応するTableColumnTypeの配列を取得する
        // tableColumnTypeの１つが、テーブルの１つに対応する
        const tableColumnTypes: TableColumnType[] = tableColumnMap[recordTypeId];

        for (const tableColumnType of tableColumnTypes) {
            makeCreateTable(tableColumnType, withPk);
        }
    }

    console.log("Created All `create table` queries");
}

