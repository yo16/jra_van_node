/*
    定義情報（recordFormat.json）を読み取った結果から、すべてのテーブル名と列名を取得する
*/


import { TableColumnTypeMap } from "./types.js";
import { parseRecordTypeJson } from "./parseRecordTypeJson.js";


// 定義情報を読み取った結果を保存する変数
let savedAllTableColumns: TableColumnTypeMap | undefined = undefined;

// 定義情報を読み取った結果を返す
export function getTableColumnMap(): TableColumnTypeMap {
    if (savedAllTableColumns === undefined) {
        // まだ読み込んでいない場合は読み込んで保存する
        savedAllTableColumns = parseRecordTypeJson();
    }

    return savedAllTableColumns;
}

