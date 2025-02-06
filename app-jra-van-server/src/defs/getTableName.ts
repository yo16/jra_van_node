/*
CSVファイルからテーブル名を取得する
*/
import path from "path";

import { RecordFormat } from "./recordFormat.js";


export function getTableName(csvFilePath: string): string {
    const fileName = path.basename(csvFilePath);

    // 先頭の２文字はRecordTypeID
    const recordTypeId = fileName.substring(0, 2);

    // RecordTypeIDからRecordFormatを取得
    const recordFormat = RecordFormat()[recordTypeId];

    // RecordFormatからテーブル名を取得
    const baseTableName = recordFormat.recordTypeNameEn;


    // もしファイル名の、".jvd"と".csv"の間に"_"がある場合は、その部分をテーブル名に追加する
    // 例えば、"O6SW2025010520250107132201.jvd_TrifectaOdds.csv"の場合は、"TrifectaOdds"をテーブル名に追加する
    let tableName = baseTableName;
    if (fileName.includes("_")) {
        tableName = baseTableName + "_" + fileName.substring(fileName.indexOf("_") + 1, fileName.indexOf(".csv"));
    }

    return tableName;
}
