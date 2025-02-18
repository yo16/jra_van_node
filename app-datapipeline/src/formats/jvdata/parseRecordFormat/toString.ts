/*
パースした結果を確認するために、定義情報を文字列へ変換する
*/

import fs from "fs";

import { getTableColumnMap } from "./getTableColumnMap.js";
import { TableColumnTypeMap } from "./types.js";


export function mapToString(tableColumnTypeMap: TableColumnTypeMap | undefined = undefined): string {
    if (tableColumnTypeMap === undefined) {
        tableColumnTypeMap = getTableColumnMap();
    }

    return JSON.stringify(tableColumnTypeMap, null, 2);
}


export function mapToFile(
    filePath: string,
    tableColumnTypeMap: TableColumnTypeMap | undefined = undefined
): void {
    if (tableColumnTypeMap === undefined) {
        tableColumnTypeMap = getTableColumnMap();
    }

    fs.writeFileSync(filePath, mapToString(tableColumnTypeMap));
}
