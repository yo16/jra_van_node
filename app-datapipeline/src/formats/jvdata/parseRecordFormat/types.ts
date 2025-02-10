
// 当プログラム内で扱う、繰り返しを展開した型
// - 変数名のルールの変更
//      recordFormat.json: スネークケース => キャメルケース
export type ColumnType = {
    seq: number,
    subSeq: string | null,
    isPk: boolean,
    columnNameJp: string,
    columnNameEn: string,
    startPos: number,
    bytes: number,
    bytesTotal: number,
    dataType: string,
    length: number,
    isNotNull: boolean,
    paddingCharacter: "0" | "sp" | "Ｓ" | "Ｓ sp" | null,
    comment: string | null,
    subColumnsInfo?: ColumnType[],
};

export type TableColumnType = {
    recordTypeId: string,
    tableNameJp: string,
    tableNameEn: string,
    formatNo: number,
    totalBytes: number,
    columns: ColumnType[],
};

// １つのTypeIdに対して、複数のTableColumnTypeが存在する
export type TableColumnTypeMap = {
    [recordTypeId: string]: TableColumnType[];
};








// recordFormat.jsonの型
export interface RecordTypeJson_ColumnType {
    seq: number,
    sub_seq?: string,
    is_pk: boolean,
    column_name_jp: string,
    column_name_en: string,
    start_pos: number,
    bytes: number,
    bytes_total: number,
    padding_character: "0" | "sp" | "Ｓ" | "Ｓ sp" | "",
    comment: string,
    db_column_type: string,
    db_column_length: number | number[],
    db_column_notnull: boolean,
    sub_columns_info?: {
        repeats: number,
        repeat_item_handling?: "横持ち" | "別テーブル",
        repeat_suffix_rule?: string[],
        sub_columns: RecordTypeJson_ColumnType[],
    }
}
// １つのRecordTypeId（レコード種別ID）のJSONのデータ
// recordFormat.jsonには、これが複数記述されている
export interface RecordTypeJson_Header {
    record_type_id: string,
    format_number: number,
    format_name_jp: string,
    format_name_en: string,
    total_bytes: number,
}
export interface RecordTypeJson {
    header: RecordTypeJson_Header,
    columns: RecordTypeJson_ColumnType[],
}
