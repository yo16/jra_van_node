/*
    すべての jvdata を csv に変換する
*/

import { getTableColumnMap } from "../formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import { TableColumnType } from "../formats/jvdata/parseRecordFormat/types.js";
import convertOneRecordTypeJvdataToCsv from "./convertOneRecordTypeJvdataToCsv.js";


export function convertAllJvdataToCsv() {
    const tcMap = getTableColumnMap();

    // すべての jvdata を csv に変換する
    for (const recordTypeId in tcMap) {
        const tcTypes: TableColumnType[] = tcMap[recordTypeId];

        // 1 つの RecordTypeId に対する jvdata を csv に変換し、保存する
        convertOneRecordTypeJvdataToCsv(tcTypes);
    }
}
