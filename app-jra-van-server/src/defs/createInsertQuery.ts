/*
PKなしのテーブルから、PKありのテーブルへデータを挿入するクエリを作成する
*/

import fs from "fs";
import path from "path";

import { RecordFormat, RecordFormatElement, ColumnType } from "./recordFormat.js";
import { INSERT_QUERY_DIR_BASE } from "./const.js";


export function createInsertQuery() {
    for (const recordTypeId of Object.keys(RecordFormat())) {
        createInsertQueryFromOneRecordType(recordTypeId);
    }
    return true;
}

function createInsertQueryFromOneRecordType(recordTypeId: string) {
    //// for debug
    //if (recordTypeId !== "UM") {
    //    return;
    //}

    const recordFormat = RecordFormat()[recordTypeId];

    // テーブル名と列名を取得する
    const tableInfos: {tableName: string, columns: {name: string, isPk: boolean}[]}[]
        = getTableInfos(recordFormat);

    //console.dir(tableInfos, {depth: null});

    // それぞれのクエリを作成する
    const queryInfos: {tableName: string, query: string}[] = [];
    for (const tableInfo of tableInfos) {
        const query = createInsertQueryForOneTable(tableInfo);
        queryInfos.push({tableName: tableInfo.tableName, query});
    }

    // 出力ファイルへ出力する
    writeQueriesToFile(queryInfos);
}



// RecordFormatから、テーブル名と列名を取得する
function getTableInfos(recordFormat: RecordFormatElement)
: {tableName: string, columns: {name: string, isPk: boolean}[]}[]
{
    const tableName = recordFormat.recordTypeNameEn;

    // テーブル名と列情報から、テーブル情報を作成する
    const tableInfos: {tableName: string, columns: {name: string, isPk: boolean}[]}[]
        = getTableInfosFromColumnTypes(tableName, recordFormat.columns);

    return tableInfos;
}



function getTableInfosFromColumnTypes(tableName: string, columnTypes: ColumnType[])
: {tableName: string, columns: {name: string, isPk: boolean}[]}[]
{
    const tableInfos: {tableName: string, columns: {name: string, isPk: boolean}[]}[] = [];

    // トップのテーブル情報
    const curTableInfo: {tableName: string, columns: {name: string, isPk: boolean}[]} = {
        tableName: tableName,
        columns: [],
    };

    // 列情報をパースする
    for (const column of columnTypes) {
        const columnName = column.columnNameEn;

        // サブカラムがある場合は、サブカラムをパースする
        if (column.subColumnsInfo) {
            if (column.subColumnsInfo.repeatItemHandling === "別テーブル") {
                // 別テーブルの場合は、別テーブルの情報を取得する
                const subTableInfos = getTableInfosFromColumnTypes(
                    `${tableName}_${columnName}`,
                    column.subColumnsInfo.subColumns
                );
                // 別テーブルの情報を追加する
                tableInfos.push(...subTableInfos);

            // 横持ちの場合は、列名を変えて、今のテーブルに列を追加する
            } else if (column.subColumnsInfo.repeatItemHandling === "横持ち") {
                const columnInfos = getYokoMochiColumnNames(column);
                curTableInfo.columns.push(...columnInfos);
            }

        // サブカラムがない場合は、通常のカラムの定義を出力する
        } else {
            const isPk = column.isPk;
            curTableInfo.columns.push({name: columnName, isPk: isPk});
        }
    }

    // 別テーブルのそれぞれに、トップのテーブル情報のPKと、SEQを追加する
    for (const subTableInfo of tableInfos) {
        subTableInfo.columns.unshift({name: "seq", isPk: true});
        subTableInfo.columns.unshift(...(curTableInfo.columns.filter(column => column.isPk)));
    }

    // トップのテーブル情報を追加する
    tableInfos.push(curTableInfo);

    return tableInfos;
}



// 横持ちの１つのColumnTypeから、列名群を取得する
function getYokoMochiColumnNames(column: ColumnType, paramPrefix: string = "")
: {name: string, isPk: boolean}[] {
    if (!column.subColumnsInfo) {
        console.error("column.subColumnsInfoがない");
        throw new Error("column.subColumnsInfoがない");
    }

    // 戻り値
    const columnInfos: {name: string, isPk: boolean}[] = [];

    // 繰り返し回数
    const repeats = column.subColumnsInfo.repeats;
    // ループ識別子
    const repeatNumLoopIdentifer = column.subColumnsInfo.repeatSuffixRule ??
        Array.from({length: repeats}, (_, i) => `${i+1}`);

    // サブカラムから、列定義を生成する
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
                }
                // サブカラムを持っていない場合は、今のsubColumnを追加する
                else {
                    const columnName =
                        ((paramPrefix) ? `${paramPrefix}_` : "") +
                        column.columnNameEn +
                        `_${repeatNumLoopIdentifer[i]}`;        // identiferは後ろに追加
                    ;
                    columnInfos.push({
                        name: columnName,
                        isPk: subColumn.isPk,
                    });
                }
            } else {
                // 複数の場合は、その項目名のprefixはすべて共通
                const prefix = `${column.columnNameEn}_${repeatNumLoopIdentifer[i]}`;
                // さらにサブカラムを持っていたら、再帰的にサブカラムをパースする
                if (subColumn.subColumnsInfo) {
                    columnInfos.push(...getYokoMochiColumnNames(subColumn, prefix));
                }
                // サブカラムを持っていない場合は、今のsubColumnをそのまま追加する
                else {
                    columnInfos.push({
                        name: `${prefix}_${subColumn.columnNameEn}`,
                        isPk: subColumn.isPk,
                    });
                }
            }
        }
    }

    return columnInfos;
}



function createInsertQueryForOneTable(
    tableInfo: {tableName: string, columns: {name: string, isPk: boolean}[]}
): string {
    const tableName = tableInfo.tableName;
    const columns = tableInfo.columns;

    let query = "";

    // DELETE文（全件）
    query += `DELETE FROM \n`;
    query += `    ${tableName} \n`;
    query += ";\n\n";

    // WITH句
    query += "WITH \n";

    query += "    ranked AS ( \n";
    query += "        SELECT \n";
    query += "            *, \n";
    query += "            ROW_NUMBER() OVER ( \n";
    query += "                PARTITION BY \n";
    query += columns.filter(column => column.isPk).map(
        column => `                    ${column.name}`
    ).join(",\n");
    query += "\n";
    query += "                ORDER BY \n";
    query += "                    creationDate DESC \n";
    query += "            ) AS rn \n";
    query += "        FROM \n";
    query += `            ${tableName}_NoPK \n`;
    query += "    ) \n";

    // INSERT INTO句
    query += "INSERT INTO \n";
    query += `    ${tableName} \n`;

    // SELECT句
    query += "SELECT \n";
    query += columns.map(column => `    ${column.name}`).join(",\n");
    query += "\n";
    query += "FROM \n";
    query += "    ranked \n";
    query += "WHERE \n";
    query += "    rn = 1 \n";

    query += ";\n\n";

    // commit
    query += "COMMIT;\n\n";

    return query;
}



// クエリをファイルへ出力する
function writeQueriesToFile(queryInfos: {tableName: string, query: string}[]) {
    for (const qi of queryInfos) {
        writeOneQueryToFile(qi.query, qi.tableName);
    }
}



// 単体のクエリをファイルへ出力する
function writeOneQueryToFile(query: string, tableName: string) {
    const fileName = `${tableName}.sql`;
    const filePath = path.join(INSERT_QUERY_DIR_BASE, fileName);
    //fs.writeFileSync(dirPath, query);
    fs.writeFile(filePath, query, (err) => {
        if (err) {
            console.error(err);
            throw err;
        }
    });
}


