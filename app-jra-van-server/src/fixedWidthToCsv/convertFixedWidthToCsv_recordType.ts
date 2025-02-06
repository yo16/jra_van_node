import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import { FixedThreadPool, DynamicThreadPool, availableParallelism } from "poolifier";

import { DATATYPE_DIR_BASE, CSV_DIR_BASE } from "../defs/const.js";




// 1つのRecordTypeIDに対するCSVファイルを作成する
export async function convertFixedWidthToCsv_recordType(
    dataType: "Accumulated" | "Realtime",
    recordTypeID: string,
) {
    // 読み込むフォルダパス
    const sourceFolderPath = `${DATATYPE_DIR_BASE[dataType]}/${recordTypeID}`;
    // 書き込むフォルダパス
    const csvFolderPath = `${CSV_DIR_BASE[dataType]}/${recordTypeID}`;
    fs.mkdirSync(csvFolderPath, { recursive: true });

    // フォルダ内のすべての固定長ファイルを取得する
    const fileList = fs.readdirSync(sourceFolderPath);

    // DataSpecsに従って、ファイルを読み込む
    try {
        // スレッドプールを作成
        const __filename = fileURLToPath(import.meta.url);
        const __dirname = path.dirname(__filename);
        /*
        const pool = new DynamicThreadPool(
            Math.floor(availableParallelism() * 0.5),
            availableParallelism(),
            path.resolve(__dirname, 'convertFixedWidthToCsv_OneFileWorker.js'),
            { errorHandler: (e) => console.error(e) }
        );
        */
        const pool = new FixedThreadPool(
            8,
            path.resolve(__dirname, 'convertFixedWidthToCsv_OneFileWorker.js'),
            {
                errorHandler: (e) => console.error(e),
            },
        );

        /*
        const promises = fileList.map(async (fileName) => {
            // 入出力のファイル名を設定
            const curSourceFileName = fileName;
            const curCsvFileName = `${fileName}.csv`;
            const sourceFilePath = path.join(sourceFolderPath, curSourceFileName);
            const csvFilePath = path.join(csvFolderPath, curCsvFileName);

            // スレッドプールを使って並列実行
            return await pool.execute({
                recordTypeID,
                sourceFilePath,
                csvFilePath
            });
        });

        // すべてのファイルをCSVに変換する
        await Promise.all(promises);
        */
        // タスクを小さなバッチに分割して実行
        /*
        const batchSize = 8;
        for (let i = 0; i < fileList.length; i += batchSize) {
            const batch = fileList.slice(i, i + batchSize);
            const promises = batch.map(async (fileName) => {
                const curSourceFileName = fileName;
                const curCsvFileName = `${fileName}.csv`;
                const sourceFilePath = path.join(sourceFolderPath, curSourceFileName);
                const csvFilePath = path.join(csvFolderPath, curCsvFileName);
                return await pool.execute({
                    recordTypeID,
                    sourceFilePath,
                    csvFilePath
                });
            });

            // すべてのファイルをCSVに変換する
            await Promise.all(promises);
        }
        */
        const runningTasks: Promise<any>[] = [];
        for (const fileName of fileList) {
            const curSourceFileName = fileName;
            const curCsvFileName = `${fileName}.csv`;
            const sourceFilePath = path.join(sourceFolderPath, curSourceFileName);
            const csvFilePath = path.join(csvFolderPath, curCsvFileName);
            runningTasks.push(pool.execute({ recordTypeID, sourceFilePath, csvFilePath }));

            // タスクが8個以上になったら、実行する
            if (runningTasks.length >= 8) {
                await Promise.race(runningTasks);
                // 完了したタスクを配列から削除
                const completedIndex = await Promise.race(
                    runningTasks.map(async (task, index) => {
                        try {
                            await task;
                            return index;
                        } catch (error) {
                            return -1;
                        }
                    }),
                );
                if (completedIndex !== -1) {
                    runningTasks.splice(completedIndex, 1);
                }
            }
        }

        // 残りのタスクを実行
        await Promise.all(runningTasks);

        // スレッドプールを破棄
        pool.destroy();

    } catch (error) {
        if (error instanceof Error) {
            const errorMessage = `Error processing recordTypeID: ${recordTypeID}: ${error.message}`;
            console.error(errorMessage);
        } else {
            const errorMessage = `Error processing recordTypeID: ${recordTypeID}: ${error}`;
            console.error(errorMessage);
        }
        throw error;
    }
}
