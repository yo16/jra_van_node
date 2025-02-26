/*
テーブル内のレコードをすべて削除するクエリを作成
*/

import path from "path";
import fs from "fs";

import { TableColumnType } from "../../jvdata/parseRecordFormat/types.js";
import { QUERY_DELETE_ALL_RECORDS_PATH } from "../../../const.js";




export function makeOneQuery_DeleteAllRecords(
    tableColumnType: TableColumnType
) {
    // クエリを生成
    const query = makeOneQueryString_DeleteAllRecords(tableColumnType);

    // クエリをファイルに出力
    const outputFilePath = path.join(
        QUERY_DELETE_ALL_RECORDS_PATH,
        `${tableColumnType.tableNameEn}.sql`
    );
    fs.mkdirSync(path.dirname(outputFilePath), { recursive: true });
    fs.writeFileSync(outputFilePath, query);
}



function makeOneQueryString_DeleteAllRecords(
    tableColumnType: TableColumnType
) {
    const query = `-- ${tableColumnType.tableNameEn}
DELETE FROM ${tableColumnType.tableNameEn};
`;

    return query;
}

