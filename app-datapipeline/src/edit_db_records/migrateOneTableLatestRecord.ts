/*
PKなしのテーブルから、PKありのテーブルへ最新のレコードを移行する
*/

import path from "path";

import { QUERY_DELETE_ALL_RECORDS_PATH, QUERY_EXTRACT_AND_INSERT_LATEST_RECORDS_PATH } from "../const.js";
import { executeOneQueryFile } from "../tools/forSQLite/executeSqlFile.js";


export function migrateOneTableLatestRecord(
    tableName: string
) {
    // Delete文のクエリのファイルパス
    const deleteQueryFilePath = path.join(
        QUERY_DELETE_ALL_RECORDS_PATH,
        `${tableName}.sql`
    );

    // Insert文のクエリのファイルパス
    const insertQueryFilePath = path.join(
        QUERY_EXTRACT_AND_INSERT_LATEST_RECORDS_PATH,
        `${tableName}.sql`
    );

    // Delete文のクエリを実行
    executeOneQueryFile(deleteQueryFilePath);

    // Insert文のクエリを実行
    executeOneQueryFile(insertQueryFilePath);
}


