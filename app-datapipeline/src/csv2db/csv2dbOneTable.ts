/*
１つのTableColumnTypeに対して、csvをDBへinsertする
*/

import path from "path";
import fs from "fs";
import { spawnSync } from "child_process";

import { TableColumnType } from "../formats/jvdata/parseRecordFormat/types.js";
import { DB_FILE_PATH, CSV_SAVE_PATH } from "../const.js";


export async function csv2dbOneTable(
    tcType: TableColumnType,
    withPk: boolean = true,
) {
    // テーブル名を取得する
    const tableName = tcType.tableNameEn;

    // CSVが格納されているフォルダ
    const csvFolderPath = path.join(CSV_SAVE_PATH, tcType.recordTypeId);
    // CSVのフォルダがない場合は、何もせず終了する
    if (!fs.existsSync(csvFolderPath)) {
        console.log(`CSVのフォルダがないため、何もせず終了します。フォルダパス: ${csvFolderPath}`);
        return;
    }

    // DBファイルパス
    const dbFilePath = DB_FILE_PATH;
    // ファイルパスをフルパスに変換し、スラッシュを `/` に統一
    const dbFilePath_forCommand = path.resolve(dbFilePath).replace(/\\/g, "/");

    // フォルダ内のファイルを取得する
    const csvFileNames = fs.readdirSync(csvFolderPath)
        .filter(fileName => fileName.includes(`_${tableName}.csv`));

    // ファイルをDBへinsertする
    for (const csvFileName of csvFileNames) {
        // ファイルパスを取得する
        const csvFilePath = path.join(csvFolderPath, csvFileName);
        // ファイルパスをフルパスに変換し、スラッシュを `/` に統一
        const csvFilePath_forCommand = path.resolve(csvFilePath).replace(/\\/g, "/");

        try {
            // コマンド
            const sqliteCommand = getSqliteCommand(dbFilePath_forCommand, csvFilePath_forCommand, tableName, withPk);

            // コマンド実行
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
        } catch (error) {
            console.error("インポートに失敗しました:", error);
            throw error;
        }
        const csvData = fs.readFileSync(csvFilePath, "utf-8");
    }
}



// コマンドの文字列を生成
function getSqliteCommand(
    dbFilePath: string,
    csvFilePath: string,
    tableName: string,
    withPk: boolean,
): string {
    const sqliteCommand = ".mode csv\r\n"
        + `.import "${csvFilePath}" ${tableName}${withPk ? "" : "_NoPk"}\r\n`
        + ".exit\r\n"
        .trim();
    return sqliteCommand;
}
