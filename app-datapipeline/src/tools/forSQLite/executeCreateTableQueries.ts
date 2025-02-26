/*
    tools/SQLite/executeCreateTableQueries.ts
    テーブル作成クエリを実行する
*/

import fs from "fs";
import path from "path";

import { executeOneQueryFile } from "./executeSqlFile.js";
import { QUERY_CREATE_TABLE_PATH, QUERY_CREATE_TABLE_NOPK_PATH } from "../../const.js";


export function executeCreateTableQueries(
    withPk: boolean = true
) {
    // クエリファイルが入っているフォルダ
    const queryFolderPath = withPk ? QUERY_CREATE_TABLE_PATH : QUERY_CREATE_TABLE_NOPK_PATH;

    // クエリファイルを取得
    const queryFilePaths = fs.readdirSync(queryFolderPath);

    // クエリファイルを実行
    for (const queryFilePath of queryFilePaths) {
        const sqlFilePath = path.join(queryFolderPath, queryFilePath);
        executeOneQueryFile(sqlFilePath);
    }
}
