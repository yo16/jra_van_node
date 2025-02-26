/*
１つのCSVファイルをDBにインポートする
*/
import path from "path";
import { spawnSync } from "child_process";
import fs from "fs";


export async function csvToDbOneFile(
    dbFilePath: string,
    csvFilePath: string,
    tableName: string,
) {
    // DBファイルが存在するか確認
    if (!fs.existsSync(dbFilePath)) {
        console.error("DBファイルが見つかりません:", dbFilePath);
        process.exit(1);
    }

    // CSVファイルが存在するか確認
    if (!fs.existsSync(csvFilePath)) {
        console.error("CSVファイルが見つかりません:", csvFilePath);
        process.exit(1);
    }

    // 絶対パスに変換し、スラッシュを `/` に統一
    const dbFilePath_forCommand = path.resolve(dbFilePath).replace(/\\/g, "/");
    //const dbFilePath_forCommand = dbFilePath.replace(/\\/g, "/");
    //const dbFilePath_forCommand = path.resolve(dbFilePath);
    const csvFilePath_forCommand = path.resolve(csvFilePath).replace(/\\/g, "/");

    // SQLite3 のインポート用コマンドを標準入力で渡す
    const sqliteCommand = `
.mode csv
.import "${csvFilePath_forCommand}" ${tableName}
.exit
    `.trim();
    //console.log("--------------------------------");
    //console.log("DBファイル: ", dbFilePath_forCommand);
    //console.log("CSVファイル: ", csvFilePath_forCommand);
    //console.log("実行コマンド:\n", sqliteCommand);
    //console.log("--------------------------------");

    // コマンド実行
    try {
        //execSync(command, { stdio: "inherit", shell: "cmd.exe" });
        //execSync(`echo "${sqliteCommand}" | sqlite3 "${dbFilePath_forCommand}"`, {
        //    stdio: "inherit",
        //    shell: "cmd.exe"
        //});
        const result = spawnSync("sqlite3", [dbFilePath_forCommand], {
            input: sqliteCommand,
            stdio: ["pipe", "inherit", "inherit"],
            shell: true,
        });

        if (result.error) {
            throw result.error;
        }
        if (result.status !== 0) {
            throw new Error(`SQLiteのインポートに失敗しました。ステータスコード: ${result.status}`);
        }

        //console.log("CSVをSQLiteにインポートしました。");

    } catch (error) {
        console.error("インポートに失敗しました:", error);
        throw error;
    }
}

