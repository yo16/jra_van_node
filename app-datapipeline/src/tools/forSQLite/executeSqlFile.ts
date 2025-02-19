/*
    tools/SQLite
    SQLファイルを実行する
*/

import path from "path";
import { execSync } from "child_process";

import { DB_FILE_PATH } from "../../const.js";


// `sqlite3 データベースファイル名 < SQLファイル名`の形式で、SQLファイルを実行する
export function executeOneQueryFile(
    sqlFilePath: string
) {
    try {
        // DBファイルのフルパスを取得
        const dbFileFullPath = path.resolve(DB_FILE_PATH);

        // SQLファイルのフルパスを取得
        const sqlFileFullPath = path.resolve(sqlFilePath);


        // コマンド実行
        const command = `sqlite3 "${dbFileFullPath}" < "${sqlFileFullPath}"`;
        execSync(
            command,
            {
                stdio: "inherit",
                shell: "cmd.exe",
            }
        );
    } catch (error) {
        console.error("SQLファイルの実行に失敗しました:", sqlFilePath, error);
        throw error;
    }
}
