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
    for (const column of recordTypeColumns) {

        // サブカラムがある場合は、サブカラムをパースする
        if (column.sub_columns_info) {
            if (column.sub_columns_info.repeat_item_handling === "別テーブル") {
                // サブカラムが「別テーブル」の場合は、
                // 再帰的に別テーブルの情報を取得し、subTableColumnsに追加する
                const subTableColumnTypes: TableColumnType[]
                    = parseColumns(
                        {
                            ...recordTypeHeader,
                            format_name_jp: `${recordTypeHeader.format_name_jp}_${column.column_name_jp}`,
                            format_name_en: `${recordTypeHeader.format_name_en}_${column.column_name_en}`,
                            total_bytes: column.bytes_total,
                        },
                        column.sub_columns_info.sub_columns,
                    );

                subTableColumns.push(...subTableColumnTypes);

            } else if (column.sub_columns_info.repeat_item_handling === "横持ち") {
                // サブカラムが横持ちの場合は、
                // 列名を変えて、curTableColumnsへ追加する
                const curColumns: ColumnType[] = getYokomochiColumns(column);
                curTableColumns.columns.push(...curColumns);
            }


        // サブカラムがない場合は、curTableColumnsへ追加する
        } else {
            // 列の基本情報を取得
            const curColumn: ColumnType = parseBasicColumn(column);
            // 列を追加
            curTableColumns.columns.push(curColumn);
        }
    }


    // 別テーブルに、TableColumnTypeのPKの列と、"seq"列を追加する
    for (const subTableColumn of subTableColumns) {
        // seqを追加
        subTableColumn.columns.unshift({
            seq: 0,
            subSeq: null,
            isPk: true,
            columnNameJp: "SEQ",
            columnNameEn: "seq",
            startPos: 0,
            bytes: 0,
            bytesTotal: 0,
            dataType: "number",
            length: 5,
            isNotNull: true,
            paddingCharacter: null,
            comment: null,
        });
        // curTableColumnsのpk列群を追加
        subTableColumn.columns.unshift(
            ...(curTableColumns.columns.filter((column) => column.isPk))
        );
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
const validPaddingCharacters = ["0", "sp", "Ｓ"] as const;
export function parseBasicColumn(column: RecordTypeJson_ColumnType): ColumnType {
    return {
        seq: column.seq,
        subSeq: column.sub_seq ?? null,
        isPk: column.is_pk,
        columnNameJp: column.column_name_jp,
        columnNameEn: column.column_name_en,
        startPos: column.start_pos,
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



// 横持ちの列を作成する
export function getYokomochiColumns(
    column: RecordTypeJson_ColumnType,
    paramPrefixJp: string = "",
    paramPrefixEn: string = "",
): ColumnType[] {
    if (!column.sub_columns_info) {
        console.error("column.sub_columns_infoがない");

        throw new Error("column.sub_columns_infoがない");
    }

    // 戻り値
    const retColumns: ColumnType[] = [];

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
                    const curColumn: ColumnType = parseBasicColumn(sub_column);
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
                    });
                }

            } else {
                // 複数の場合（sub_seq=a、sub_seq=b、sub_seq=c...）
                // 複数の項目名のprefixはすべて共通
                const prefix_jp = `${column.column_name_jp}_${repeatNumLoopIdentifers[i]}`;
                const prefix_en = `${column.column_name_en}_${repeatNumLoopIdentifers[i]}`;

                // さらにサブカラムを持っていたら、再帰的にサブカラムをパースする
                if (sub_column.sub_columns_info) {
                    const subColumns: ColumnType[] = getYokomochiColumns(
                        sub_column,
                        prefix_jp,
                        prefix_en,
                    );
                    retColumns.push(...subColumns);
                } else {
                    // サブカラムを持っていないケース
                    const basicColumn: ColumnType = parseBasicColumn(sub_column);
                    // 今のsub_columnを追加する
                    retColumns.push({
                        ...basicColumn,
                        columnNameJp: `${prefix_jp}_${basicColumn.columnNameJp}`,
                        columnNameEn: `${prefix_en}_${basicColumn.columnNameEn}`,
                    });
                }
            }

        }
    }


    return retColumns;
}



