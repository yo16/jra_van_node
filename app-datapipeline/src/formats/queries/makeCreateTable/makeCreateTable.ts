/*
    テーブルの作成クエリを作成する
*/

import fs from "fs";
import path from "path";

import { TableColumnType, ColumnType } from "../../jvdata/parseRecordFormat/types.js";
import { QUERY_CREATE_TABLE_PATH, DB_SYSTEM_NAME } from "../../../const.js";


export function makeCreateTable(tableColumnType: TableColumnType) {
    // 出力するファイルパス
    const outputFilePath = path.join(QUERY_CREATE_TABLE_PATH, `${tableColumnType.tableNameEn}.sql`);
    fs.mkdirSync(path.dirname(outputFilePath), { recursive: true });

    // ファイルを作成する
    console.log(`Creating ${outputFilePath}`);
    fs.writeFileSync(outputFilePath, "");

    // クエリを作成する
    const query = makeCreateTableQuery(tableColumnType);

    // クエリをファイルに書き込む
    fs.writeFileSync(outputFilePath, query);
}



// テーブルの作成クエリを作成する
function makeCreateTableQuery(tableColumnType: TableColumnType, withPk: boolean = true) {
    let query = "";

    // テーブル
    query += `-- ${tableColumnType.tableNameJp}\n`;
    query += `CREATE TABLE IF NOT EXISTS ${tableColumnType.tableNameEn}${withPk ? "" : "_NoPk"} (\n`;

    // 列
    query += tableColumnType.columns
        .map(column => makeColumn(column))
        .join(",\n")
    ;

    // 主キー
    if (withPk) {
        query += ",\n";
        query += `    PRIMARY KEY (\n`;
        query += tableColumnType.columns
            .filter(column => column.isPk)
            .map(column => `        ${column.columnNameEn}`)
            .join(",\n")
        ;
        query += "\n";
        query += `    )\n`;
    }

    query += `);\n`;
    return query;
}



// 列定義のクエリを作成する
function makeColumn(column: ColumnType) {
    // 型をDB用の型に変換する
    const dbType = convertToDbType(column.dataType, column.length, column.isNotNull);

    let query = "";
    query += `    -- ${column.columnNameJp}\n`;
    query += `    ${column.columnNameEn} ${dbType}`;
    return query;
}



// 型をDB用の型に変換する
function convertToDbType(dataType: string, length: number, isNotNull: boolean) {
    let dataTypeForDB = "";
    if (DB_SYSTEM_NAME === "SQLite") {
        // SQLiteの場合
        switch (dataType) {
            case "string":
                dataTypeForDB = "TEXT";
                break;

            case "number":
                if (Number.isInteger(length)) {
                    dataTypeForDB = "INTEGER";
                } else {
                    dataTypeForDB = "REAL";
                }
                break;

            default:
                throw new Error(`dataType[${dataType}]は未対応`);
        }
        if (isNotNull) {
            dataTypeForDB += " NOT NULL";
        } else {
            dataTypeForDB += " NULL";
        }
    } else {
        throw new Error(`DB_SYSTEM_NAME[${DB_SYSTEM_NAME}]は未対応`);
    }
    return dataTypeForDB;
}

