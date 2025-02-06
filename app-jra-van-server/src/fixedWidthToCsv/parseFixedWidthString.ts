
import { RecordFormat } from "../defs/recordFormat.js";
import { ColumnType } from "../defs/recordFormat.js";
import { substringSJIS } from "./substringSJIS.js";

export const TOP_TABLE_NAME = "__TOP_TABLE__";
export type RecordSet = {
    tableName: string,       // トップのテーブルは"__TOP_TABLE__"、サブカラムのテーブルはそのテーブル名が入る
    recordColumnDatas: {key: string, value: string | number}[],
};


// 固定長文字列の１行を、RecordFormatに従ってパースする
export function parseFixedWidthString(
    fixedWidthString: string,
    recordTypeID: string
): RecordSet[] {
    // １行をパースして、メインのテーブルのレコード（tableName is null）と、サブカラムのテーブルのレコード（tableName is not null）を返す
    const recordSets: RecordSet[]
        = parseColumns(
            fixedWidthString,
            RecordFormat()[recordTypeID].columns,
        );

    return recordSets;
}


// fixedWidthStringを、ColumnType[]に従ってパースする
// サブカラムがあったときに再帰的に呼び出したいため、この関数を定義する
function parseColumns(
    fixedWidthString: string,           // パース対象となる固定長の文字列
    columns: ColumnType[],              // パースするカラムの定義
    subColumnStartPos: number=0         // サブカラムの開始位置
): RecordSet[] {
    //console.log("parseColumns Start");
    //console.log({columns});

    const recordSets: RecordSet[] = [];
    const recordColumnDatas: {key: string, value: string | number}[] = [];

    // 主キーの文字列を作成する（繰り返しの別テーブル用）
    let pkValues: (string | number)[] = [];

    for (const column of columns) {

        // サブカラムがある場合は、サブカラムをパースする
        if (column.subColumnsInfo) {
            // 繰り返し対応方法によって扱いを変える
            // 「別テーブル」の場合は、別のファイルへ書く
            // 「横持ち」の場合は、同じファイルへ書く
            if (column.subColumnsInfo.repeatItemHandling === "別テーブル") {
                // 別のファイルとして読み、recordSetsへ追加する
                // 複数のRecordSetを返す
                const subRecordSets = readSubTableRecord(fixedWidthString, column, pkValues);
                recordSets.push(...subRecordSets);
            }
            else if (column.subColumnsInfo.repeatItemHandling === "横持ち") {
                // 同じファイルへ書く
                // repeatCount回数分、サブカラムをパースする
                const repeats = column.subColumnsInfo.repeats;
                const oneRepeatBytes = column.bytes;
                for (let i = 0; i < repeats; i++) {
                    const curSubColumnStartPos = subColumnStartPos + column.startPos - 1 + i * oneRepeatBytes;
                    //console.log({curSubColumnStartPos});
                    const subRecordSets = parseColumns(fixedWidthString, column.subColumnsInfo.subColumns, curSubColumnStartPos);
                    if (subRecordSets.length !== 1) {
                        // １個しかないはず
                        throw new Error("subRecordSets.length !== 1 (1)");
                    }
                    recordColumnDatas.push(...subRecordSets[0].recordColumnDatas);
                }
            }

        }
        else {
            // サブカラムがない場合は、通常のカラムをパースする
            // valueの取得
            //const value_str = fixedWidthString.slice(
            //    repeatIndent + column.startPos - 1,
            //    repeatIndent + column.startPos - 1 + column.bytes
            //);
            const value_str = substringSJIS(
                fixedWidthString,
                subColumnStartPos + column.startPos - 1,
                column.bytes
            );
            //console.log({value_str}, subColumnStartPos + column.startPos - 1, column.bytes);
            // valueのトリム
            const value_trimmed = (() => {
                let result = value_str;
                if (column.paddingCharacter?.includes("sp")) {
                    result = result.replace(/^ +/g, "").replace(/ +$/g, "");
                }
                if (column.paddingCharacter?.includes("Ｓ")) {
                    result = result.replace(/^　+/g, "").replace(/　+$/g, "");
                }

                // 数値の場合は、0でトリムする（文字列の場合は、必要/不要の判断ができないため、そのままにする）
                if ((column.dataType !== "string") && (column.paddingCharacter === "0")) {
                    result = result.replace(/^0+/g, "");
                }

                // いずれのpaddingCharacterの指定の場合でも、
                // そのトリム結果が半角スペースだけの場合は、
                // そのカラムの値は、空文字列とする
                // （"TK"にしかない特別なケース）
                if (/^\s+$/.test(result)) {
                    result = "";
                }

                return result;
            })();
            //console.log({value_trimmed});
            // valueのdataTypeによって、valueの型を変える
            // あとでCSVにするため、あえてNumberにする必要はないが、必要な処理（小数点をつける）の間に判別できるのでしておく
            const value = (column.dataType === "string")
                ? value_trimmed
                : (value_trimmed.length === 0 ? NaN : (
                    Number.isInteger(column.length)
                        ? parseInt(value_trimmed)
                        : (()=>{
                            // 整数部の桁数（残りが小数点以下）
                            const integerDigits = Math.trunc(column.length);
                            return parseFloat(value_trimmed.slice(0, integerDigits) + "." + value_trimmed.slice(integerDigits));
                        })()
                ));


            recordColumnDatas.push({
                key: column.columnNameEn,
                value,
            });

            // 主キーの場合は、pkValuesへ追加する
            if (column.isPk) {
                pkValues.push(value);
            }
        }
    }

    // メインのテーブルのレコードを追加する
    recordSets.push({
        tableName: TOP_TABLE_NAME,
        recordColumnDatas,
    });

    return recordSets;
}



function readSubTableRecord(
    fixedWidthString: string,           // パース対象となる固定長の文字列
    column: ColumnType,                  // サブカラムをもつ１列を指定する
    pkValues: (string | number)[]        // 主キーの値
): RecordSet[] {
    // subColumnsInfoを持っている前提
    if (!column.subColumnsInfo) {
        throw new Error("column.subColumnsInfo is undefined");
    }

    // 戻り値のレコードセット
    // すべて同じtableNameで複数のRecordSetを返す
    const retRecords: RecordSet[] = [];

    // サブカラムのテーブル名を取得
    const curTableName = column.columnNameEn;
    // サブカラムの定義を取得
    const subColumns = column.subColumnsInfo.subColumns;
    // 主キーの値の配列（サブカラムのテーブルの先頭に設定するため）
    const pkRecordVals = pkValues.map((value, index) => ({
        key: `pk${index}`,
        value,
    }));

    // repeatsの数だけ、サブカラムの内容をパースする
    for (let i = 0; i < column.subColumnsInfo.repeats; i++) {
        // パース
        const subRecordSets = parseColumns(
            fixedWidthString,
            subColumns,
            column.startPos - 1 + i * column.bytes
        );
        // 1個しかないはず
        if (subRecordSets.length !== 1) {
            console.error({subRecordSets});
            throw new Error("subRecordSets.length !== 1 (2)");
        }
        // １列目の値が空の場合は、そこで終了とする
        const firstColumnValue: string | number = subRecordSets[0].recordColumnDatas[0].value;
        // １列目の値がNaNの場合は、そこで終了とする
        if (typeof firstColumnValue === "string" && firstColumnValue.length === 0) {
            break;
        }
        if (typeof firstColumnValue === "number" && isNaN(firstColumnValue)) {
            
            break;
        }

        // 列データの配列に追加
        const curColumnDatas = [...pkRecordVals, ...subRecordSets[0].recordColumnDatas];
        // レコードセットを追加
        retRecords.push({
            tableName: curTableName,
            recordColumnDatas: curColumnDatas,
        });
    }

    return retRecords;
}
