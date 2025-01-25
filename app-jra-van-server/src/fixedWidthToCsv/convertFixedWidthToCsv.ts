// 固定長のテキストファイルから、CSVファイルを作成する
// 固定長のテキストファイルのフォーマットは、dataFormat.tsで定義されている
// DataSpecに対するDataFormatは、dataFormatDefs.tsで定義されている

import fs from "fs";
import readline from "readline";

import { DataSpecs } from "../defs/dataFormatDefs.js";
import { RecordFormat, ColumnType } from "../defs/recordFormat.js";



// 複数のDataSpecに対するCSVファイルを作成する
// nullのときは、dataTypeのすべてのDataSpecに対するCSVファイルを作成する
export function convertFixedWidthToCsv(
    dataType: "Accumulated" | "Realtime" | "Setup",
    dataSpecNameList: string[] | null,
) {
    // 対象となるDataSpecを取得する
    const dataSpecList = dataSpecNameList ? dataSpecNameList : Object.keys(DataSpecs[dataType]);

    // 複数のDataSpecに対するCSVファイルを作成する
    for (const dataSpecName of dataSpecList) {
        convertFixedWidthToCsv_dataSpec(dataType, dataSpecName);
    }
}



// 1つのDataSpecのすべてのRecordTypeIdに対するCSVファイルを作成する
export function convertFixedWidthToCsv_dataSpec(
    dataType: "Accumulated" | "Realtime" | "Setup",
    dataSpecName: string,
) {
    // 1つのDataSpecのすべてのRecordTypeIDに対するCSVファイルを作成する
    for (const recordTypeID of DataSpecs[dataType][dataSpecName]) {
        convertFixedWidthToCsv_recordType(dataType, recordTypeID);
    }
}



// 1つのRecordTypeIDに対するCSVファイルを作成する
export function convertFixedWidthToCsv_recordType(
    dataType: "Accumulated" | "Realtime" | "Setup",
    recordTypeID: string,
) {
    // 読み込むフォルダパス
    const sourceFolderPath = `./data/${dataType}/${recordTypeID}`;
    // 書き込むフォルダパス
    const csvFolderPath = `./csv/${dataType}/${recordTypeID}`;

    // フォルダ内のすべての固定長ファイルを取得する
    const fileList = fs.readdirSync(sourceFolderPath);

    // DataSpecsに従って、ファイルを読み込む
    try {
        let curSourceFileName = "";
        let curCsvFileName = "";
        for (const fileName of fileList) {
            curSourceFileName = fileName;
            curCsvFileName = `${fileName}.csv`;
            const sourceFilePath = `${sourceFolderPath}/${curSourceFileName}`;
            const csvFilePath = `${csvFolderPath}/${curCsvFileName}`;

            // csvファイルを開く
            const csvFile = fs.openSync(`${csvFolderPath}/${curCsvFileName}`, "w");

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
                        const record = parseFixedWidthString(line, recordTypeID);
                        // csv形式に変換する
                        const csvContent = convertRecordToCsv(record);
                        // csvファイルに書き込む
                        fs.writeFileSync(csvFilePath, csvContent);

                    } catch (error) {
                        if (error instanceof Error) {
                            const errorMessage = `Error reading file ${curSourceFileName}: ${error.message}`;
                            console.error(errorMessage);
                        } else {
                            const errorMessage = `Error reading file ${curSourceFileName}: ${error}`;
                            console.error(errorMessage);
                        }
                        rl.close();

                        throw error;
                    }
                });
                rl.on("close", () => {
                    console.log("readline closed");
                });
                
            } catch (error) {
                if (error instanceof Error) {
                    const errorMessage = `Error reading file ${curSourceFileName}: ${error.message}`;
                    console.error(errorMessage);
                } else {
                    const errorMessage = `Error reading file ${curSourceFileName}: ${error}`;
                    console.error(errorMessage);
                }
                // ループの途中だが、エラーが起きたらすべて抜けて中断する
                throw error;

            } finally {
                // csvファイルを閉じる
                fs.closeSync(csvFile);
            }
        }
    } catch (error) {
        if (error instanceof Error) {
            const errorMessage = `Error reading file: ${error.message}`;
            console.error(errorMessage);
        } else {
            const errorMessage = `Error reading file: ${error}`;
            console.error(errorMessage);
        }
        throw error;
    }
}



// 固定長文字列の１行を、RecordFormatに従ってパースする
function parseFixedWidthString(fixedWidthString: string, recordTypeID: string) {
    // 戻り値は、順序が大事なため、配列とする
    const record: {key: string, value: string}[] = [];

    // パースする
    for (const column of RecordFormat()[recordTypeID].columns) {
        // サブカラムがある場合は、サブカラムをパースする
        if (column.subColumnsInfo) {
            for (const subColumn of column.subColumnsInfo.subColumns) {
                record.push({
                    key: subColumn.columnNameEn,
                    value: fixedWidthString.slice(
                        column.startPos + subColumn.startPos - 1,
                        column.startPos + subColumn.startPos - 1 + subColumn.bytes
                    ),
                });
            }
            
        // サブカラムがない場合は、通常のカラムをパースする
        } else {
            record.push({
                key: column.columnNameEn,
                value: fixedWidthString.slice(
                    column.startPos - 1,
                    column.startPos - 1 + column.bytes
                ),
            });
        }
    }

    return record;
}



// 1つのRecordを、CSV形式の文字列に変換する
function convertRecordToCsv(record: {key: string, value: string}[]) {
    return record.map(column => `"${column.value}"`).join(",");
}

