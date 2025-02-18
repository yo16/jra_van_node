/*
    1 つの RecordTypeId に対する jvdata を csv に変換し、保存する
*/

import fs from "fs";
import path from "path";
import readline from "readline";
import iconv from "iconv-lite";

import { TableColumnType, ColumnType } from "../formats/jvdata/parseRecordFormat/types.js";
import { JVDATA_SAVE_PATH, CSV_SAVE_PATH } from "../const.js";



// 1 つの RecordTypeId に対する jvdata を csv に変換し、保存する
export default async function convertOneRecordTypeJvdataToCsv(
    tcTypes: TableColumnType[],
): Promise<void> {
    // レコードタイプID
    // この関数内のレコードタイプIDはすべて同じはずなので、１つ目の要素を使用する
    const recordTypeId = tcTypes[0].recordTypeId;
    //// debug
    //if (recordTypeId !== "RA") {
    //    return;
    //}

    // 入力フォルダ：jvdata 群が格納されているフォルダ
    const jvdataFolderPath = path.join(JVDATA_SAVE_PATH, recordTypeId);

    // 入力フォルダ自体が存在しなかったら、何もせず終了する
    if (!fs.existsSync(jvdataFolderPath)) {
        return;
    }

    // jvdata ファイルを読み込む
    const jvdataFiles = fs.readdirSync(jvdataFolderPath);

    // jvdata ファイルを csv へ変換する
    for (const jvdataFile of jvdataFiles) {
        // jvdataのファイルパスを取得
        const jvdataFilePath = path.join(jvdataFolderPath, jvdataFile);

        // １つの jvdata ファイルを csv へ変換する
        await convertOneTableColumnTypeJvdataToCsv(
            recordTypeId,
            jvdataFilePath,
            tcTypes
        );
    }
}



// 1 つの jvdata ファイルを csv ファイルへ変換する
// テスト用にexportしている
export async function convertOneTableColumnTypeJvdataToCsv(
    recordTypeId: string,
    jvdataFilePath: string,
    tcTypes: TableColumnType[],
    skipIfExists: boolean = false,
): Promise<void> {
    // 出力フォルダ
    const outputFolderPath = path.join(CSV_SAVE_PATH, recordTypeId);

    // 出力フォルダが存在しない場合は作成する
    if (!fs.existsSync(outputFolderPath)) {
        fs.mkdirSync(outputFolderPath, { recursive: true });
    }
    
    // 入力ファイルを読み込む
    const inputFileName = path.basename(jvdataFilePath);
    const inputFileStream = fs.createReadStream(jvdataFilePath);
    const inRl = readline.createInterface({ input: inputFileStream });

    // 出力ファイルを管理するマップ
    const outputFiles = new Map();

    try {
        for await (const line of inRl) {
            // 行をパースして、ファイル名ごとの要素に分解する
            const outputLines = parseLine(
                line,
                tcTypes,
            );

            // 出力ファイルを開いていない場合は開く
            for (const { fileName } of outputLines) {
                if ( !outputFiles.has(fileName) ) {
                    // 出力ファイルパスを決定
                    const outputFilePath = path.join(outputFolderPath, `${inputFileName}_${fileName}`);

                    // 出力ファイルが既に存在する場合で、skipIfExistsがtrueの場合は、何もせずこの関数を終了する
                    if (skipIfExists && fs.existsSync(outputFilePath)) {
                        return;
                    }

                    // 出力ファイルを開く
                    const outputFileStream = fs.createWriteStream(
                        outputFilePath,
                        { flags: "w" }      // 上書き
                    );
                    outputFiles.set(fileName, outputFileStream);
                }
            }

            // 出力ファイルに書き込む
            for (const { fileName, csvLine } of outputLines) {
                const outputFileStream = outputFiles.get(fileName);
                outputFileStream.write(csvLine + "\n");
            }

        }
    
    } catch (error) {
        console.error(error);
        throw new Error(error as string);
    } finally {
        // 入力ファイルをクローズ
        inRl.close();

        // 開いた出力ファイルをすべてクローズ
        for (const outputFileStream of outputFiles.values()) {
            outputFileStream.end();
        }
    }
}



// JVDataの１行をパースして、ファイルごとの出力行に分解する
// テスト用にexportしている
export function parseLine(
    jvdataLine: string,
    tcTypes: TableColumnType[],
): {
    fileName: string,
    csvLine: string,
}[] {
    const outputLines: {
        fileName: string,
        csvLine: string,
    }[] = [];

    // tcTypesごとに、出力用のlineを作成する
    for (const tcType of tcTypes) {
        const { fileName, csvLine } = createCsvLine(jvdataLine, tcType);
        outputLines.push({ fileName, csvLine });
    }

    return outputLines;
}



// １行のJVDataを、ファイルごとの出力行に分解する
// テスト用にexportしている
export function createCsvLine(
    jvdataLine: string,
    tcType: TableColumnType,
): {
    fileName: string,
    csvLine: string,
} {
    const fileName = `${tcType.tableNameEn}.csv`;
    const csvElements: string[] = [];

    // 列のstartPosから、列のlength分の文字列を取得する
    for (const column of tcType.columns) {
        // startPosがnullの場合は、CSVとしては使用しないので、スキップする
        if (column.startPos === null) {
            continue;
        }

        // 開始位置は、0-based
        const valueStr = substringSJIS(jvdataLine, column.startPos, column.length);

        // トリム
        const valueStrTrimmed = trimValue(valueStr, column);

        // トリムした文字列を、CSVの要素として追加する
        csvElements.push(valueStrTrimmed);
    }

    // elementsを、CSVの1行に変換して返す
    return {
        fileName,
        csvLine: csvElements
            .map(element => element.length > 0 ? `"${element}"` : element)
            .join(","),
    }
}



// 文字列をShift_JISでエンコードして、指定されたバイト位置から指定されたバイト数分の文字列を返す
function substringSJIS(str: string, startByte: number, byteLength: number): string {
    const sjisBuffer = iconv.encode(str, "Shift_JIS");
    const slicedBuffer = sjisBuffer.subarray(startByte, startByte + byteLength);
    return iconv.decode(slicedBuffer, "Shift_JIS");
}



// 値のトリム
function trimValue(
    value_str: string,
    cType: ColumnType,
): string {
    let result = value_str;
    if (cType.paddingCharacter?.includes("sp")) {
        result = result
            .replace(/^ +/g, "")
            .replace(/ +$/g, "");
    }
    if (cType.paddingCharacter?.includes("Ｓ")) {
        result = result
            .replace(/^　+/g, "")
            .replace(/　+$/g, "");
    }

    // 数値の場合は、0でトリムする（文字列の場合は、必要/不要の判断ができないため、そのままにする）
    if ((cType.dataType !== "string") && (cType.paddingCharacter === "0")) {
        result = result
            .replace(/^0+/g, "");
    }

    // いずれのpaddingCharacterの指定の場合でも、
    // そのトリム結果が半角スペースだけの場合は、
    // そのカラムの値は、空文字列とする
    // （"TK"にしかない特別なケース）
    if (/^\s+$/.test(result)) {
        result = "";
    }

    return result;
}
