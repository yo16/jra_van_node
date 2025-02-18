/*
    与えられたテーブル名と、recordFormat.jsonから読み取った列名で、
    TableColumns[]を作成する

    ヘッダー情報は、２階層目（別テーブル）の場合は、jsonのRecordTypeJson_Headerを直接使うわけではないため
    入力変数を分けている
*/

import { RecordTypeJson_Header, RecordTypeJson_ColumnType, TableColumnType, ColumnType } from "./types.js";



// ヘッダー情報と列情報を受け取り、TableColumns[]を作成する
// 再帰的に呼ばれる
export function parseColumns(
    recordTypeHeader: RecordTypeJson_Header,
    recordTypeColumns: RecordTypeJson_ColumnType[],
): TableColumnType[] {
    // この関数で作成するTableColumnTypeと、
    // 再帰的に呼び出す関数で作成するTableColumnTypeをまとめる変数
    const retData: TableColumnType[] = [];

    // この関数で作成する唯一のTableColumnType
    // （他には、再帰的に呼び出す関数内で作成される）
    const curTableColumns: TableColumnType = parseBasicTableHeader(recordTypeHeader);

    // 再帰的に呼び出して得た「別テーブル」の情報を格納する変数
    const subTableColumns: TableColumnType[] = [];

    // 列情報をパースする
    let nextColumnTypeSeq: number = 1;
    for (const [columnIndex, column] of recordTypeColumns.entries()) {
        // サブカラムがある場合は、サブカラムをパースする
        if (column.sub_columns_info) {
            if (column.sub_columns_info.repeat_item_handling === "別テーブル") {
                // サブカラムが「別テーブル」の場合は、
                // 再帰的に別テーブルの情報を取得し、subTableColumnsに追加する
                const curBetsuTableColumns: TableColumnType[] = getBetsuTableColumns(
                    recordTypeHeader,
                    recordTypeColumns,
                    columnIndex
                );
                subTableColumns.push(...curBetsuTableColumns);

            } else if (column.sub_columns_info.repeat_item_handling === "横持ち") {
                // サブカラムが横持ちの場合は、
                // 列名を変えて、curTableColumnsへ追加する
                const {
                    yokomochiColumns: curColumns,
                    nextColumnTypeSeq: retNextColumnTypeSeq,
                }: { yokomochiColumns: ColumnType[], nextColumnTypeSeq: number } = getYokomochiColumns(column, nextColumnTypeSeq);
                curTableColumns.columns.push(...curColumns);
                nextColumnTypeSeq = retNextColumnTypeSeq;
            }

        // サブカラムがない場合は、curTableColumnsへ追加する
        } else {
            // 列の基本情報を取得
            const curColumn: ColumnType = parseBasicColumn(column, nextColumnTypeSeq);
            // 列を追加
            curTableColumns.columns.push(curColumn);
            nextColumnTypeSeq++;
        }
    }

    // 戻り値へ追加
    retData.push(curTableColumns);
    retData.push(...subTableColumns);

    return retData;
}



// json形式からTableColumnType形式へ、基本情報を変換する
export function parseBasicTableHeader(header: RecordTypeJson_Header): TableColumnType {
    return {
        recordTypeId: header.record_type_id,
        tableNameJp: header.format_name_jp,
        tableNameEn: header.format_name_en,
        formatNo: header.format_number,
        totalBytes: header.total_bytes,
        columns: [],
    };
}
// json形式からColumnType形式へ、基本情報を変換する
export function parseBasicColumn(column: RecordTypeJson_ColumnType, columnTypeSeq: number): ColumnType {
    return {
        seq: column.seq,
        subSeq: column.sub_seq ?? null,
        columnTypeSeq: columnTypeSeq,
        isPk: column.is_pk,
        columnNameJp: column.column_name_jp,
        columnNameEn: column.column_name_en,
        startPos: (column.start_pos === null)? null: (column.start_pos - 1),      // 0-basedに変換
        bytes: column.bytes,
        bytesTotal: column.bytes_total,
        dataType: column.db_column_type,
        length: (column.db_column_length instanceof Array )
            ? (column.db_column_length[0] + column.db_column_length[1] * 0.1)
            : column.db_column_length,
        isNotNull: column.db_column_notnull,
        paddingCharacter:
            (column.padding_character === "")
                ? null
                : column.padding_character,
        comment: column.comment ?? null,
    };
}



// 別テーブルのTableColumnTypeを作成する
export function getBetsuTableColumns(
    baseRecordTypeHeader: RecordTypeJson_Header,
    baseRecordTypeColumns: RecordTypeJson_ColumnType[],
    curRecordTypeColumnIndex: number,
): TableColumnType[] {
    // RecordTypeJson_ColumnType
    const curBaseRTJson_Column: RecordTypeJson_ColumnType = baseRecordTypeColumns[curRecordTypeColumnIndex];
    if (!curBaseRTJson_Column.sub_columns_info) {
        console.error("curBaseRTJson_Column.sub_columns_infoがない");
        throw new Error("curBaseRTJson_Column.sub_columns_infoがない");
    }
    if (curBaseRTJson_Column.sub_columns_info.repeat_item_handling !== "別テーブル") {
        console.error("curRTJson_Column.sub_columns_info.repeat_item_handlingが別テーブルではない");
        throw new Error("curRTJson_Column.sub_columns_info.repeat_item_handlingが別テーブルではない");
    }

    // 別テーブルとして、parseColumnsを呼び出すための、引数を作成する
    // ベースのRecordTypeJson_Headerに対して、curRecordTypeColumnの値で加工する
    const curRTJson_Header: RecordTypeJson_Header = {
        ...baseRecordTypeHeader,
        format_name_jp: `${baseRecordTypeHeader.format_name_jp}_${curBaseRTJson_Column.column_name_jp}`,
        format_name_en: `${baseRecordTypeHeader.format_name_en}_${curBaseRTJson_Column.column_name_en}`,
        total_bytes: curBaseRTJson_Column.bytes_total,
    };

    // ベースのRecordTypeColumnsから、PKだけを取り出してパースし、
    // 今回の列情報に追加する
    const curRTJson_Columns: RecordTypeJson_ColumnType[] = baseRecordTypeColumns.filter((column) => column.is_pk);
    // 固定でSEQ列をPKとして追加する
    curRTJson_Columns.push({
        seq: curBaseRTJson_Column.seq,
        sub_seq: undefined,
        is_pk: true,
        column_name_jp: "SEQ",
        column_name_en: "seq",
        start_pos: null,
        bytes: 0,
        bytes_total: 4,
        padding_character: "",
        comment: "",
        db_column_type: "number",
        db_column_length: 4,
        db_column_notnull: true,
    } as RecordTypeJson_ColumnType);
    // curRTJson_Columnのsub_columns_infoを、repeat分繰り返して追加する
    const baseStartPos: number = curBaseRTJson_Column.start_pos? (curBaseRTJson_Column.start_pos - 1): 0;   // 0-basedに変換
    for (let i = 0; i < curBaseRTJson_Column.sub_columns_info.repeats; i++) {
        for (const curSubColumnInfo of curBaseRTJson_Column.sub_columns_info.sub_columns) {
            curRTJson_Columns.push({
                ...curSubColumnInfo,
                column_name_jp: `${curBaseRTJson_Column.column_name_jp}_${curSubColumnInfo.column_name_jp}_${i}`,
                column_name_en: `${curBaseRTJson_Column.column_name_en}_${curSubColumnInfo.column_name_en}_${i}`,
                start_pos: baseStartPos + (curBaseRTJson_Column.bytes * i) + (curSubColumnInfo.start_pos ?? 0),
            });
        }
    }

    return parseColumns(curRTJson_Header, curRTJson_Columns);




    //const curRTColumn: RecordTypeJson_ColumnType = 
    

    //const subTableColumnTypes: TableColumnType[]
    //    = parseColumns(
    //        {
    //            ...recordTypeHeader,
    //            format_name_jp: `${recordTypeHeader.format_name_jp}_${column.column_name_jp}`,
    //            format_name_en: `${recordTypeHeader.format_name_en}_${column.column_name_en}`,
    //            total_bytes: column.bytes_total,
    //        },
    //        column.sub_columns_info.sub_columns,
    //    );
    //
    //subTableColumns.push(...subTableColumnTypes);


    //// 別テーブルに、TableColumnTypeのPKの列と、"seq"列を追加する
    //for (const [subTableColumnIndex, subTableColumn] of subTableColumns.entries()) {
    //    // seqを追加
    //    subTableColumn.columns.unshift({
    //        seq: 0,
    //        subSeq: null,
    //        columnTypeSeq: subTableColumnIndex,
    //        isPk: true,
    //        columnNameJp: "SEQ",
    //        columnNameEn: "seq",
    //        startPos: 0,
    //        bytes: 0,
    //        bytesTotal: 0,
    //        dataType: "number",
    //        length: 5,
    //        isNotNull: true,
    //        paddingCharacter: null,
    //        comment: null,
    //    });
    //    // curTableColumnsのpk列群を追加
    //    subTableColumn.columns.unshift(
    //        ...(curTableColumns.columns.filter((column) => column.isPk))
    //    );
    //}


}



// 横持ちの列を作成する
export function getYokomochiColumns(
    column: RecordTypeJson_ColumnType,
    nextColumnTypeSeq: number,
    paramPrefixJp: string = "",
    paramPrefixEn: string = "",
): { yokomochiColumns: ColumnType[], nextColumnTypeSeq: number } {
    if (!column.sub_columns_info) {
        console.error("column.sub_columns_infoがない");
        throw new Error("column.sub_columns_infoがない");
    }

    // 戻り値
    const retColumns: ColumnType[] = [];

    // columnを変換
    const topColumn: ColumnType = parseBasicColumn(column, 0);  // nextColumnTypeSeqはダミー
    // 繰り返し回数
    const repeatCount: number = column.sub_columns_info.repeats;
    // ループ識別子
    const repeatNumLoopIdentifers: string[]
        = column.sub_columns_info.repeat_suffix_rule ??
            Array.from({ length: repeatCount }, (_, i) => `${i}`);

    // サブカラムから、列定義を生成する
    RepeatNumLoop: for (let i = 0; i < repeatCount; i++) {
        // トップ.seq.sub_seqのループ a,b,c...を繰り返す
        const isSingleSubColumn: boolean = column.sub_columns_info.sub_columns.length === 1;

        SubColumnLoop: for (const sub_column of column.sub_columns_info.sub_columns) {
            // ここで sub_column は、sub_seq=a、sub_seq=b、sub_seq=c...と繰り返される単位

            if (isSingleSubColumn) {
                // singleの場合（sub_seq=aしかない）
                if (sub_column.sub_columns_info) {
                    // さらにサブカラムを持っているケース
                    // このケースはないはず！
                    console.error("singleのサブカラムがさらにサブカラムを持っているケース");
                    throw new Error("singleのサブカラムがさらにサブカラムを持っているケース");

                } else {
                    // サブカラムを持っていないケース
                    // 今のsub_columnを追加する
                    const curColumn: ColumnType = parseBasicColumn(sub_column, nextColumnTypeSeq++);
                    const column_name_jp =
                        ((paramPrefixJp) ? `${paramPrefixJp}_` : "") +
                            sub_column.column_name_jp +
                            `_${repeatNumLoopIdentifers[i]}`;        // identiferは後ろに追加
                    ;
                    const column_name_en =
                        ((paramPrefixEn) ? `${paramPrefixEn}_` : "") +
                            sub_column.column_name_en +
                            `_${repeatNumLoopIdentifers[i]}`;        // identiferは後ろに追加
                    ;

                    retColumns.push({
                        ...curColumn,
                        columnNameJp: column_name_jp,
                        columnNameEn: column_name_en,
                        startPos: (topColumn.startPos ?? 0) + (curColumn.bytes * i),
                    });
                }

            } else {
                // 複数の場合（sub_seq=a、sub_seq=b、sub_seq=c...）
                // 複数の項目名のprefixはすべて共通
                const prefix_jp = `${column.column_name_jp}_${repeatNumLoopIdentifers[i]}`;
                const prefix_en = `${column.column_name_en}_${repeatNumLoopIdentifers[i]}`;

                // さらにサブカラムを持っていたら、再帰的にサブカラムをパースする
                if (sub_column.sub_columns_info) {
                    const {
                        yokomochiColumns: subColumns,
                        nextColumnTypeSeq: retNextColumnTypeSeq,
                    }: { yokomochiColumns: ColumnType[], nextColumnTypeSeq: number } = getYokomochiColumns(
                        sub_column,
                        nextColumnTypeSeq,
                        prefix_jp,
                        prefix_en,
                    );
                    retColumns.push(...subColumns);
                    nextColumnTypeSeq = retNextColumnTypeSeq;
                } else {
                    // サブカラムを持っていないケース
                    const basicColumn: ColumnType = parseBasicColumn(sub_column, nextColumnTypeSeq++);
                    // 今のsub_columnを追加する
                    retColumns.push({
                        ...basicColumn,
                        columnNameJp: `${prefix_jp}_${basicColumn.columnNameJp}`,
                        columnNameEn: `${prefix_en}_${basicColumn.columnNameEn}`,
                        startPos: (basicColumn.startPos ?? 0) + (column.start_pos ?? 0) + (column.bytes * i),
                    });
                }
            }

        }
    }

    return {
        yokomochiColumns: retColumns,
        nextColumnTypeSeq: nextColumnTypeSeq,
    };
}



