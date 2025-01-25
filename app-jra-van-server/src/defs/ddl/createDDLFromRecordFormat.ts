/*
    RecordFormat全部からテーブル定義を作成する
*/

import { RecordFormat } from "../recordFormat.js";
import { createDDLFromOneRecordType } from "./createDDLFromOneRecordType.js";

// RecordFormatからDDLを作成する
export function createDDLFromRecordFormat() {
    for (const recordTypeId of Object.keys(RecordFormat())) {
        createDDLFromOneRecordType(recordTypeId);
    }
}


