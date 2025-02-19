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

    // tcTypesの中で、startPosが配列になっているindexを取得する
    // （そのindexのtcTypesは、別テーブルの列である）
    const betsuTableColumnTypesIndexes: number[] = [];
    for (let i = 0; i < tcTypes.length; i++) {
        for (const column of tcTypes[i].columns) {
            if (Array.isArray(column.startPos)) {
                betsuTableColumnTypesIndexes.push(i);
                break;
            }
        }
    }

    try {
        for await (const line of inRl) {
            // 行をパースして、ファイル名ごとの要素に分解する
            const outputLines = parseLine(
                line,
                tcTypes,
                betsuTableColumnTypesIndexes,
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
            for (const { fileName, csvLines } of outputLines) {
                const outputFileStream = outputFiles.get(fileName);
                for (const csvLine of csvLines) {
                    outputFileStream.write(csvLine + "\n");
                }
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
    betsuTableColumnTypesIndexes: number[],    // tcTypesの中で、startPosが配列になっているindex
): {
    fileName: string,
    csvLines: string[],
}[] {
    const outputLines: {
        fileName: string,
        csvLines: string[],
    }[] = [];

    // tcTypesごとに、出力用のlineを作成する
    for (const [index, tcType] of tcTypes.entries()) {
        if (betsuTableColumnTypesIndexes.includes(index)) {
            // 別テーブルの場合
            const { fileName, csvLines } = createCsvLine_BetsuTable(
                jvdataLine,
                tcType,
            );
            outputLines.push({ fileName, csvLines });
        } else {
            // 通常の列の場合
            // 列のstartPosから、列のlength分の文字列を取得する
            const { fileName, csvLine } = createCsvLine(
                jvdataLine,
                tcType,
            );
            outputLines.push({ fileName, csvLines: [csvLine] });
        }
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
    // elementsを、CSVの1行に変換して返す
    return {
        fileName: `${tcType.tableNameEn}.csv`,
        csvLine: readColumns(jvdataLine, tcType.columns),
    };
}



// １行のJVDataを、ファイルごとの出力行に分解する（別テーブル用）
// テスト用にexportしている
export function createCsvLine_BetsuTable(
    jvdataLine: string,
    tcType: TableColumnType,
): {
    fileName: string,
    csvLines: string[],
} {
    const fileName = `${tcType.tableNameEn}.csv`;
    const csvLines: string[] = [];

    const retLines: string[] = [];

    const singleLineColumns: ColumnType[] = [];
    let multiLineColumnStartingIndex = -1;
    for (let i=0; i<tcType.columns.length; i++) {
        // 単一行→複数行になった判定
        if (Array.isArray(tcType.columns[i].startPos)) {
            multiLineColumnStartingIndex = i;
            break;
        }

        // 単一行の場合は、ColumnTypeへ詰める
        singleLineColumns.push(tcType.columns[i]);
    }
    // 必ず見つかり、必ず単一行も存在するはず
    console.assert(multiLineColumnStartingIndex > 0, "multiLineColumnStartingIndexが0以下です");
    // 単一行の最終項目は、seqのはず
    console.assert(tcType.columns[multiLineColumnStartingIndex - 1].columnNameEn === "seq", "単一行の最終項目は、seqのはず");

    // ColumnType[]を、CSVの1行に変換する
    const csvLineSingleLine = readColumns(jvdataLine, tcType.columns);

    // multiLineColumnStartingIndex 以降は、複数行の列
    const multiLineStartPos = tcType.columns[multiLineColumnStartingIndex].startPos;

    // 複数行の列の情報を得る
    const csvLineMultiLine: string[] = [];
    const multiLineRowCount = (multiLineStartPos as number[]).length;
    const multiLineColCount = tcType.columns.length - multiLineColumnStartingIndex;
    const multiLineColumns = tcType.columns.slice(multiLineColumnStartingIndex);
    // １行分の列をコピー（複数行で、更新しながら使いまわす）
    const oneLineColumns: ColumnType[] = structuredClone(multiLineColumns);
    // 複数行の１行分のデータを取得
    for (let i=0; i<multiLineRowCount; i++) {       // i: 行
        // i行目のデータだけにする
        for( let j=0; j<multiLineColCount; j++) {       // j: 列
            oneLineColumns[j].startPos = (multiLineColumns[j].startPos as number[])[i];
        }
        // １行分のデータを取得
        const oneLineCsvLine = readColumns(jvdataLine, oneLineColumns);
        // 空の行の場合は、スキップする
        if (oneLineCsvLine.length === 0) {
            continue;
        }
        // 空の行でない場合は、複数行のデータに追加する
        csvLineMultiLine.push(oneLineCsvLine);
    }

    // 単一行のデータと、複数行のデータ（作れた行だけ）を結合する
    for (let i=0; i<csvLineMultiLine.length; i++) {
        retLines.push(
            `${csvLineSingleLine},"${i}",${csvLineMultiLine[i]}`
        );
    }

    return {
        fileName,
        csvLines: retLines,
    };
}



// １行のJVDataを、ColumnType[]にしたがって読み、CSVの1行に変換する
function readColumns(
    jvdataLine: string,
    columns: ColumnType[],
): string {
    const retCsvElements: string[] = [];

    // 何かの要素が含まれているかどうか（空の行を判定する）
    let hasElements = false;

    // 列のstartPosから、列のlength分の文字列を取得する
    for (const column of columns) {
        // startPosがnullの場合は、CSVとしては使用しないので、スキップする
        if (column.startPos === null) {
            continue;
        }
        if (Array.isArray(column.startPos)) {
            // 別テーブルの項目がある場合は、この関数が呼ばれていないはずだが、
            // 万が一入った場合は、スキップする
            continue;
        }

        // 開始位置は、0-based
        const valueStr = substringSJIS(jvdataLine, column.startPos, column.length);

        // トリム
        const valueStrTrimmed = trimValue(valueStr, column);

        // トリムした文字列が空文字列でない場合は、hasElementsをtrueにする
        if (valueStrTrimmed.length > 0) {
            hasElements = true;
        }

        // トリムした文字列を、CSVの要素として追加する
        retCsvElements.push(valueStrTrimmed);
    }

    // 空の行の場合は、空文字列を返す
    if (!hasElements) {
        return "";
    }

    // elementsを、CSV要素の配列として返す
    return retCsvElements
            .map(element => element.length > 0 ? `"${element}"` : element)
            .join(",");
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
