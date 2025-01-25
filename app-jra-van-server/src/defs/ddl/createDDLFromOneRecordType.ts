/*
    レコードタイプ１つに対してDDLを作成する
*/

import { RecordFormat, ColumnType } from "../recordFormat.js";
import { DB_TABLE_DDL_DIR_BASE, DB_SYSTEM_NAME } from "../const.js";
import fs from "fs";
import path from "path";


// レコードタイプ１つに対してDDLを作成する
export function createDDLFromOneRecordType(
    recordTypeId: string
) {
    // for debug
    //if (recordTypeId !== "KS") {
    //    console.log("debug: KSのみ作成する!");
    //    return;
    //}
    console.log(recordTypeId);

    // RecordFormatElementを取得する
    const curRecordFormatElement = RecordFormat()[recordTypeId];

    // クエリを生成する
    const subTablesQuery: string[] = [];
    let query = "";
    query += `-- ${curRecordFormatElement.recordTypeNameJp}\n`;
    query += `CREATE TABLE ${curRecordFormatElement.recordTypeNameEn} (\n`;
    for (const column of curRecordFormatElement.columns) {
        //console.log("debug: column: ", column.columnNameEn);
        // サブカラムがある場合は、サブカラムをパースする
        if (column.subColumnsInfo) {
            //console.log("debug: ★サブカラムがある場合は、サブカラムをパースする");
            // 別テーブルの場合は、別テーブルを作成するクエリを作る
            if (column.subColumnsInfo.repeatItemHandling === "別テーブル") {
                //console.log("debug: 別テーブル");
                subTablesQuery.push(createSubTableQuery(column));
            }

            // 横持ちの場合は、列名を変えて、今のテーブルに列を追加する
            else if (column.subColumnsInfo.repeatItemHandling === "横持ち") {
                //console.log("debug: 横持ち");
                query += createYokoMochiQuery(column);

            } else {
                console.error("column.subColumnsInfo.repeatItemHandlingが不正", column.subColumnsInfo.repeatItemHandling);
            }

        // サブカラムがない場合は、通常のカラムの定義を出力する
        } else {
            query += createOneColumnQuery(column);
        }
    }
    // 末尾の`,\n`を、`\n`に変える
    query = query.replace(/,\n$/, "\n");
    query += ");\n";

    // 出力ファイルへ出力
    const outputFilePath = path.join(DB_TABLE_DDL_DIR_BASE, `${recordTypeId}.sql`);
    console.log({outputFilePath})
    fs.writeFile(outputFilePath, query, { encoding: "utf-8" }, (err) => {
        if (err) {
            console.error(err);
        } else {
            //console.log(`DDL for ${recordTypeId} created successfully.`);
        }
    });
}

// 別テーブルを作成するクエリを作る
function createSubTableQuery(column: ColumnType) {
    return "";
}


// 横持ちの場合は、列名を変えて、今のテーブルに列を追加する
function createYokoMochiQuery(column: ColumnType, paramPrefix: string = "") {
    if (!column.subColumnsInfo) {
        console.error("column.subColumnsInfoがない");
        return "";
    }

    // 繰り返し回数
    const repeats = column.subColumnsInfo.repeats;
    // ループ識別子
    const repeatNumLoopIdentifer = column.subColumnsInfo.repeatSuffixRule ??
        Array.from({length: repeats}, (_, i) => `${i+1}`);

    // サブカラムから、列定義を生成する
    let query = "";
    RepeatNumLoop: for (let i = 0; i < repeats; i++) {
        // トップ.seq.subSeqのループ a,b,c...を繰り返す
        const isSingleSubColumn = column.subColumnsInfo.subColumns.length === 1;
        SubColumnsLoop: for (const subColumn of column.subColumnsInfo.subColumns) {
            // ここで subColumn は、subSeq=a、subSeq=b、subSeq=c...の単位

            if (isSingleSubColumn) {
                // singleの場合(subSeq=aしかない）
                // さらにサブカラムを持っていたら、再帰的にサブカラムをパースする
                if (subColumn.subColumnsInfo) {
                    // このケースはないはず！
                    console.error("singleのサブカラムがさらにサブカラムを持っているケース");
                    throw new Error("singleのサブカラムがさらにサブカラムを持っているケース");
                    //query += createYokoMochiQuery(subColumn, `${column.columnNameEn}_${repeatNumLoopIdentifer[i]}`);
                }
                // サブカラムを持っていない場合は、今のsubColumnを追加する
                else {
                    const columnName =
                        ((paramPrefix) ? `${paramPrefix}_` : "") +
                        column.columnNameEn +
                        `_${repeatNumLoopIdentifer[i]}`;        // identiferは後ろに追加
                    ;
                    query += createOneColumnQuery({
                        ...subColumn,
                        columnNameEn: columnName
                    });
                }
            } else {
                // 複数の場合は、その項目名のprefixはすべて共通
                const prefix = `${column.columnNameEn}_${repeatNumLoopIdentifer[i]}`;
                // さらにサブカラムを持っていたら、再帰的にサブカラムをパースする
                if (subColumn.subColumnsInfo) { 
                    query += createYokoMochiQuery(subColumn, prefix);
                }
                // サブカラムを持っていない場合は、今のsubColumnをそのまま追加する
                else {
                    query += createOneColumnQuery({
                        ...subColumn,
                        columnNameEn: `${prefix}_${subColumn.columnNameEn}`
                    });
                }
            }
        }
    }

    return query;
}



// CREATE TABLEの１列分のクエリを作成する
function createOneColumnQuery(column: ColumnType) {
    return "    " +
        `-- ${column.columnNameJp} \n` +
        "    " +
        `${column.columnNameEn} ` +
        `${convertDataType(column.dataType, column.length, column.nullable)},\n`
}



// Jsonに記述されているデータタイプから、使用するDBのデータタイプへ変換する
function convertDataType(dataType: string, length: number, nullable: boolean) {
    let dataTypeForDB = "";
    if (DB_SYSTEM_NAME === "SQLite") {
        // SQLiteの場合
        switch (dataType) {
            case "string":
                dataTypeForDB = "TEXT";
                break;

            case "number":
                if (Number.isInteger(length)) {
                    dataTypeForDB = "INTEGER";
                } else {
                    dataTypeForDB = "REAL";
                }
                break;

            default:
                throw new Error(`dataType[${dataType}]は未対応`);
        }
        if (nullable) {
            dataTypeForDB += " NULL";
        } else {
            dataTypeForDB += " NOT NULL";
        }
    } else {
        throw new Error(`DB_SYSTEM_NAME[${DB_SYSTEM_NAME}]は未対応`);
    }
    return dataTypeForDB;
}

