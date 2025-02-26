/*
    PKのないデータレイクの１つのテーブルから、最新のレコードを抽出し、
    PKのあるテーブルへinsertするクエリを作成する
*/
import path from "path";
import fs from "fs";
import { TableColumnType } from "../../jvdata/parseRecordFormat/types.js";
import { QUERY_EXTRACT_AND_INSERT_LATEST_RECORDS_PATH } from "../../../const.js";



export function makeOneQuery_EILR(
    tableColumnType: TableColumnType,
) {
    // クエリを生成
    const query = makeOneQueryString_EILR(tableColumnType);

    // クエリをファイルに出力
    const outputFilePath = path.join(
        QUERY_EXTRACT_AND_INSERT_LATEST_RECORDS_PATH,
        `${tableColumnType.tableNameEn}.sql`
    );
    fs.mkdirSync(path.dirname(outputFilePath), { recursive: true });
    fs.writeFileSync(outputFilePath, query);
}



function makeOneQueryString_EILR(
    tableColumnType: TableColumnType,
) {
    // ベースのテーブル名
    const baseTableName = tableColumnType.tableNameEn;
    // PKなしのテーブル名
    const noPkTableName = baseTableName + "_NoPk";
    // PKありのテーブル名
    const pkTableName = baseTableName;

    // 全ての列名の配列
    const allColumnNames = tableColumnType.columns.map(column => column.columnNameEn);
    // PK列の列名の配列
    const pkColumnNames = tableColumnType.columns.filter(column => column.isPk).map(column => column.columnNameEn);

    // クエリを生成
    const query = `-- ${noPkTableName} -> ${pkTableName}
WITH DedupData AS (
    SELECT
${allColumnNames.map(column => `        t.${column}`).join(",\n")},
        ROW_NUMBER() OVER (
            PARTITION BY
${pkColumnNames.map(column => `                t.${column}`).join(",\n")}
            ORDER BY
                t.creationDate DESC,
                t.rowid ASC
        ) AS rn
    FROM
        ${noPkTableName} t
)
INSERT INTO ${pkTableName} (
${allColumnNames.map(column => `    ${column}`).join(",\n")}
)
SELECT
${allColumnNames.map(column => `    ${column}`).join(",\n")}
FROM
    DedupData
WHERE
    DedupData.rn = 1
;
`;

    return query;
}





