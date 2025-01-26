/*
    データベースの初期化
*/
import sqlite3 from "sqlite3";
import { DB_PATH, DB_TABLE_DDL_DIR_BASE, DB_SYSTEM_NAME } from "./defs/const.js";
import fs from "fs";
import path from "path";

export async function initializeDb() {
    switch (DB_SYSTEM_NAME) {
        case "SQLite":
            await initializeSQLiteDb();
            break;
        default:
            console.error(`DB_SYSTEM_NAME: ${DB_SYSTEM_NAME} is not supported`);
            break;
    }
    return true;
}



// SQLiteのデータベースを初期化する
async function initializeSQLiteDb() {
    // データベースを初期化する
    const db = new sqlite3.Database(DB_PATH);

    // フォルダ内にある*.sqlファイルを順番に開く
    const files = fs.readdirSync(DB_TABLE_DDL_DIR_BASE)
        .filter(file => path.extname(file) === '.sql');
    for (const file of files) {
        console.log(`SQLFile: ${file}`);
        // ファイルを読み込む
        const sql = fs.readFileSync(DB_TABLE_DDL_DIR_BASE + "/" + file, "utf8");
        // ファイルを実行する
        db.serialize(() => {
            db.run(sql, (err) => {
                if (err) {
                    console.error(`Error executing SQL file: ${file}`, err);
                }
            });
        });
    }
    
    await db.close();

    return true;
}

