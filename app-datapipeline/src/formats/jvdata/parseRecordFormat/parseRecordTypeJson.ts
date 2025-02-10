/*
    定義情報（recordFormat.json）を読み取り、すべてのテーブル名と列名を取得し、
    TableColumnsMap型にする
*/

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

import { RecordTypeJson, TableColumnTypeMap } from "./types.js";
import { parseColumns } from "./parseColumns.js";



const __dirname = path.dirname(fileURLToPath(import.meta.url));
const RECORD_FORMAT_JSON_PATH = path.join(__dirname, "recordFormat.json");



export function parseRecordTypeJson(): TableColumnTypeMap {
    // JSONファイルを読み込む
    const inputFile = fs.readFileSync(path.join(RECORD_FORMAT_JSON_PATH), 'utf8');

    // JSONファイルをパースし、RecordTypeJson型のマップへ変換する
    const recordFormat = JSON.parse(inputFile) as Record<string, RecordTypeJson>;

    // RecordTypeJson型のマップをTableColumnTypeMap型へ変換する
    const retData: TableColumnTypeMap = {};
    for (const [recordTypeId, value] of Object.entries(recordFormat)) {
        retData[recordTypeId] = parseColumns(
            value.header,
            value.columns,
        );
    }

    return retData;
}
