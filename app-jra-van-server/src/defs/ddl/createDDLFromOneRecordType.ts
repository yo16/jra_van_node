/*
    レコードタイプ１つに対してDDLを作成する
*/

import { RecordFormat } from "../recordFormat.js";
import type { RecordFormatElement, ColumnType } from "../recordFormat.js";
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
    const curRecordFormatElement: RecordFormatElement = RecordFormat()[recordTypeId];

    function createQuery(curRecordFormatElement: RecordFormatElement, withPK: boolean = true) {
        const subTablesQuery: {query: string, tableNameEn: string}[] = [];
        let query = "";
        query += `-- ${curRecordFormatElement.recordTypeNameJp}${withPK ? "" : " NoPK"}\n`;

        query += `CREATE TABLE IF NOT EXISTS ${curRecordFormatElement.recordTypeNameEn}${withPK ? "" : "_NoPK"} (\n`;
        let pkColumns: ColumnType[] = [];
        for (const column of curRecordFormatElement.columns) {
            //console.log("debug: column: ", column.columnNameEn);
            // サブカラムがある場合は、サブカラムをパースする
            if (column.subColumnsInfo) {
                //console.log("debug: ★サブカラムがある場合は、サブカラムをパースする");
                // 別テーブルの場合は、別テーブルを作成するクエリを作る
                if (column.subColumnsInfo.repeatItemHandling === "別テーブル") {
                    //console.log("debug: 別テーブル");
                    subTablesQuery.push(createSubTableQuery(curRecordFormatElement, column, pkColumns, withPK));
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
                const curColumnQuery = createOneColumnQuery(column);
                query += curColumnQuery;

                // 主キーの場合は、pkColumnsへ追加する
                if (column.isPk) {
                    pkColumns.push(column);
                }
            }
        }
        if (withPK) {
            query += '    -- PRIMARY KEY\n';
            query += `    PRIMARY KEY (${pkColumns.map(column => column.columnNameEn).join(", ")})\n`;
        } else {
            // NoPKの場合は、末尾の",\n"を除いて取得
            query = query.slice(0, -2) + "\n";
        }
        query += ");\n";

        return {query, subTablesQuery};
    }
    const {query, subTablesQuery} = createQuery(curRecordFormatElement);
    const {query: queryNoPK, subTablesQuery: subTablesQueryNoPK} = createQuery(curRecordFormatElement, false);

    // 出力ファイルへ出力
    // 1.1. トップのテーブル(PKあり)
    const outputFilePath = path.join(DB_TABLE_DDL_DIR_BASE, `${curRecordFormatElement.recordTypeNameEn}.sql`);
    console.log({outputFilePath})
    fs.writeFile(outputFilePath, query, { encoding: "utf-8" }, (err) => {
        if (err) {
            console.error(err);
        } else {
            //console.log(`DDL for ${recordTypeId} created successfully.`);
        }
    });
    // 1.2. トップのテーブル（PKなし）
    const outputFilePathNoPK = path.join(DB_TABLE_DDL_DIR_BASE, `${curRecordFormatElement.recordTypeNameEn}_NoPK.sql`);
    console.log({outputFilePathNoPK})
    fs.writeFile(outputFilePathNoPK, queryNoPK, { encoding: "utf-8" }, (err) => {
        if (err) {
            console.error(err);
        } else {
            //console.log(`DDL for ${recordTypeId} created successfully.`);
        }
    });

    // 2. 別テーブル
    // 2.1. PKあり
    for (const subTableQuery of subTablesQuery) {
        const outputFilePath = path.join(DB_TABLE_DDL_DIR_BASE, `${subTableQuery.tableNameEn}.sql`);
        console.log({outputFilePath})
        fs.writeFile(outputFilePath, subTableQuery.query, { encoding: "utf-8" }, (err) => {
            if (err) {
                console.error(err);
            } else {
                //console.log(`DDL for ${recordTypeId} created successfully.`);
            }
        });
    }
    // 2.2. PKなし
    for (const subTableQuery of subTablesQueryNoPK) {
        const outputFilePath = path.join(DB_TABLE_DDL_DIR_BASE, `${subTableQuery.tableNameEn}.sql`);
        console.log({outputFilePath})
        fs.writeFile(outputFilePath, subTableQuery.query, { encoding: "utf-8" }, (err) => {
            if (err) {
                console.error(err);
            } else {
                //console.log(`DDL for ${recordTypeId} created successfully.`);
            }
        });
    }
}




// 別テーブルを作成するクエリを作る
function createSubTableQuery(
    recordFormat: RecordFormatElement,
    curColumn: ColumnType,
    parentTablePkColumns: ColumnType[],
    withPK: boolean = true
) {
    // テーブル名
    const tableNameJp = `${recordFormat.recordTypeNameJp}.${curColumn.columnNameJp}${withPK ? "" : " NoPK"}`;
    const tableNameEn = `${recordFormat.recordTypeNameEn}_${curColumn.columnNameEn}${withPK ? "" : "_NoPK"}`;

    // クエリを作成
    // curColumn.subColumnsInfoがある前提
    if (!curColumn.subColumnsInfo) {
        const msg = `curColumn.subColumnsInfoがありません。${tableNameJp}(${tableNameEn})`;
        console.error(msg);
        throw new Error(msg);
    }

    let query = "";
    query += `-- ${tableNameJp} \n`;

    query += `CREATE TABLE IF NOT EXISTS ${tableNameEn} (\n`;
    query += parentTablePkColumns.map(column => createOneColumnQuery(column)).join("");  // 親テーブルの主キーを先頭に追加
    query += `    -- SEQ\n`;                                            // 固定
    query += `    seq ${convertDataType("number", 5, true)},\n`;        // 固定
    for (const column of curColumn.subColumnsInfo.subColumns) {
        // サブカラムの中にサブカラムはない前提！
        if (column.subColumnsInfo) {
            const msg = `Error: Unexpected! サブカラムが存在します。${tableNameJp}(${tableNameEn})`;
            console.error(msg);
            throw new Error(msg);
        }
        query += createOneColumnQuery(column);
    }
    
    // 主キーの定義
    if (withPK) {
        query += '    -- PRIMARY KEY\n';
        query += `    PRIMARY KEY (${parentTablePkColumns.map(column => column.columnNameEn).join(", ")}, seq)\n`;
    }else{
        query = query.slice(0, -2) + "\n";
    }
    query += ");\n";

    return {
        query,
        tableNameEn: tableNameEn,
    };
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
        `${convertDataType(column.dataType, column.length, column.isNotNull)},\n`
}



// Jsonに記述されているデータタイプから、使用するDBのデータタイプへ変換する
function convertDataType(dataType: string, length: number, isNotNull: boolean) {
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
        if (isNotNull) {
            dataTypeForDB += " NOT NULL";
        } else {
            dataTypeForDB += " NULL";
        }
    } else {
        throw new Error(`DB_SYSTEM_NAME[${DB_SYSTEM_NAME}]は未対応`);
    }
    return dataTypeForDB;
}

