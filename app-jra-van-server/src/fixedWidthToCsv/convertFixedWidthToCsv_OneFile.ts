import readline from "readline";
import fs, { WriteStream } from "fs";
import path from "path";
import { parseFixedWidthString } from "./parseFixedWidthString.js";
//import { RecordSet } from "./parseFixedWidthString.js";
import { TOP_TABLE_NAME } from "./parseFixedWidthString.js";


// １つの固定長ファイルをCSVに変換する
export async function convertFixedWidthToCsv_OneFile(
    recordTypeID: string,
    sourceFilePath: string,
    csvFilePath: string,
) {
    return new Promise<void>((resolve, reject) => {
        // ファイルの存在を確認し、すでに存在する場合は何もせず終了する
        const curFileComment = `Processing recordTypeID: ${recordTypeID}, sourceFilePath: ${path.basename(sourceFilePath)}`;
        if (fs.existsSync(csvFilePath)) {
            console.log(`${curFileComment} skipped`);
            resolve();
            return;
        }
        console.log(curFileComment);

        // 出力用csvファイルを開く
        const csvFiles: {[tableName: string]: WriteStream} = {};

        try {
            // ソースファイルを読み込み、１行ずつパースして、csvファイルに書き込む
            const readStream = fs.createReadStream(sourceFilePath, {encoding: "utf-8"});
            // readlineインターフェイスを作成
            const rl = readline.createInterface({
                input: readStream,
                crlfDelay: Infinity, // 行区切りをOSに依存せず処理
            });
            // 行ごとにパースして、csvファイルに書き込む
            rl.on("line", (line) => {
                try {
                    // パースする
                    const recordSets = parseFixedWidthString(line, recordTypeID);
                    for (const recordSet of recordSets) {
                        // csv形式に変換する
                        const csvContent = convertRecordToCsv(recordSet.recordColumnDatas);

                        // tableNameに対応するCSVが開かれていない場合は開く
                        if (csvFiles[recordSet.tableName] === undefined) {
                            // csvFilePathをベースに、csvファイル名を作成する
                            let curCsvFilePath = csvFilePath;
                            if (recordSet.tableName !== TOP_TABLE_NAME) {
                                // csvFilePathから拡張子を削除
                                curCsvFilePath = csvFilePath.replace(/\.[^.]+$/, "");
                                // サフィックスとしてtableNameを追加
                                curCsvFilePath = `${curCsvFilePath}_${recordSet.tableName}.csv`;
                            }

                            // csvファイルを開く
                            //csvFiles[recordSet.tableName] = fs.openSync(curCsvFilePath, "w");
                            csvFiles[recordSet.tableName] = fs.createWriteStream(curCsvFilePath, {encoding: "utf-8"});
                        }
                        
                        // csvファイルに書き込む
                        //fs.writeSync(csvFiles[recordSet.tableName], `${csvContent}\n`);
                        csvFiles[recordSet.tableName].write(`${csvContent}\n`);
                        
                    }

                } catch (error) {
                    if (error instanceof Error) {
                        const errorMessage = `Error processing file ${sourceFilePath}: ${error.message}`;
                        console.error(errorMessage);
                    } else {
                        const errorMessage = `Error processing file ${sourceFilePath}: ${error}`;
                        console.error(errorMessage);
                    }
                    rl.close();

                    reject(error);
                }
            });
            rl.on("close", () => {
                //console.log("readline closed");

                // 出力ファイル（csvファイル）を閉じる
                for (const csvFile of Object.values(csvFiles)) {
                    //fs.closeSync(csvFile);
                    csvFile.end();
                }
                resolve();
            });
            
        } catch (error) {
            if (error instanceof Error) {
                const errorMessage = `Error processing file ${sourceFilePath}: ${error.message}`;
                console.error(errorMessage);
            } else {
                const errorMessage = `Error processing file ${sourceFilePath}: ${error}`;
                console.error(errorMessage);
            }
            // ループの途中だが、エラーが起きたらすべて抜けて中断する
            reject(error);

        }
    });
}


// 1つのRecordを、CSV形式の文字列に変換する
function convertRecordToCsv(recordColumnDatas: {key: string, value: string | number}[]) {
    // keyは使わない
    return recordColumnDatas.map(column => {
        if (typeof column.value === "number") {
            if (isNaN(column.value)) {
                return "";  // ダブルクォーテーションで括らない
            }
        } else {
            if (column.value === "") {
                return "";  // ダブルクォーテーションで括らない
            }
        }
        return `"${column.value}"`;
    }).join(",");
}
