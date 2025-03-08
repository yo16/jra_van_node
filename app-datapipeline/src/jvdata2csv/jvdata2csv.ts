/*
    すべての jvdata を csv に変換する
*/

import { getTableColumnMap } from "../formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import { TableColumnType, DataKindAndRecordTypeId } from "../formats/jvdata/parseRecordFormat/types.js";
import convertOneRecordTypeJvdataToCsv from "./convertOneRecordTypeJvdataToCsv.js";
import { convertRTJvdataToCsv } from "./convertOneRecordTypeJvdataToCsv.js";

export function convertAllJvdataToCsv() {
    const skipIfExists = true;

    const tcMap = getTableColumnMap();

    // 蓄積系の jvdata を csv に変換する
    for (const recordTypeId in tcMap) {
        const tcTypes: TableColumnType[] = tcMap[recordTypeId];

        // 1 つの RecordTypeId に対する jvdata を csv に変換し、保存する
        convertOneRecordTypeJvdataToCsv(tcTypes, skipIfExists);
    }

    // 速報系の jvdata を csv に変換する
    // データ種別(DataKind)ごとに、フォルダに格納されている
    const dataKinds: DataKindAndRecordTypeId[] = [
        {
            dataKindId: "0B41",
            dataKindName: "時系列オッズ(単複枠)",
            recordTypeId: "O1",
            recordTypeName: "オッズ(単複枠)",
        },
        {
            dataKindId: "0B42",
            dataKindName: "時系列オッズ(馬連)",
            recordTypeId: "O2",
            recordTypeName: "オッズ(馬連)",
        },
    ];
    for (const dataKind of dataKinds) {
        const tcTypes: TableColumnType[] = tcMap[dataKind.recordTypeId];
        convertRTJvdataToCsv(dataKind, tcTypes, skipIfExists);
    }
}



