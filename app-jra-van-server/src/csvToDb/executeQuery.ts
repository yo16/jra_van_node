/*
クエリを実行する
*/
import fs from "fs";
import path from "path";

import { execSync } from "child_process";

import { DB_PATH, INSERT_QUERY_DIR_BASE } from "../defs/const.js";

export async function executeQuery() {
    const dbFilePath = DB_PATH;

    // クエリファイルを選択する
    const queryFiles = fs.readdirSync(INSERT_QUERY_DIR_BASE);
    for (const file of queryFiles) {
        const filePath = path.join(INSERT_QUERY_DIR_BASE, file);
        if (fs.statSync(filePath).isFile()) {
            // １つのクエリファイルを実行する
            executeOneQueryFile(dbFilePath, filePath);
            
            // for debug
            throw new Error("for debug");
        }
    }
}


// `sqlite3 データベースファイル名 < SQLファイル名`の形式で、SQLファイルを実行する
function executeOneQueryFile(
    dbFilePath: string,
    queryFilePath: string
) {
    try {
        // コマンド実行
        //const command = `sqlite3 ${dbFilePath} < ${queryFilePath}`;
        const command = `sqlite3 "D:\\Public\\github\\yo16\\jra_van_node\\app-jra-van-server\\data\\Db\\jra_van_sqlite.db" < "D:\\Public\\github\\yo16\\jra_van_node\\app-jra-van-server\\ddl\\insert\\BloodlineInfo.sql"`;
        execSync(
            command,
            {
                stdio: "inherit",
                shell: "cmd.exe",
            }
        );
    } catch (error) {
        console.error("クエリを実行に失敗しました:", queryFilePath, error);
        throw error;
    }
}
