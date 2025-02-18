/*
JV-Data仕様書

レコードフォーマット（recordFormat.json）を読み取り、
ReadRecordFormat関数で、RecordFormatType型に変換する
*/

import fs from 'fs';
import path from 'path';


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
    subColumnsInfo?: {
        repeats: number,
        repeatItemHandling?: "横持ち" | "別テーブル",
        repeatSuffixRule?: string[],
        subColumns: ColumnType[],
    },
};

export type RecordFormatElement = {
    recordTypeId: string,
    recordTypeNameJp: string,
    recordTypeNameEn: string,
    formatNo: number,
    totalBytes: number,
    columns: ColumnType[],
};

export type RecordFormatType = {
    [recordTypeId: string]: RecordFormatElement,
};



// json用の型
interface ColumnTypeJson {
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
        sub_columns: ColumnTypeJson[],
    }
}
interface RecordFormatJson {
    header: {
        record_type_id: string,
        format_number: number,
        format_name_jp: string,
        format_name_en: string,
        total_bytes: number,
    },
    columns: ColumnTypeJson[],
}


/*
// JSONファイルを読み込み、RecordFormatType型に変換する
let savedRecordFormat: RecordFormatType | null = null;
export const RecordFormat = (): RecordFormatType => {
    if (savedRecordFormat) {
        return savedRecordFormat;
    }
    savedRecordFormat = ReadRecordFormat();
    return savedRecordFormat;
}
const ReadRecordFormat = (): RecordFormatType  => {
    // ファイルを読み込む
    const inputFile = fs.readFileSync(path.join(".", "recordFormat.json"), 'utf8');
    
    // JSONファイルをパースし、RecordFormatElement型に変換する
    const recordFormat = JSON.parse(inputFile) as Record<string, RecordFormatJson>;
    
    // RecordFormatElement型をRecordFormatType型に変換する
    const retData: RecordFormatType = {};
    for (const [recordTypeId, value] of Object.entries(recordFormat)) {
        retData[recordTypeId] = {
            recordTypeId: value.header.record_type_id,
            recordTypeNameJp: value.header.format_name_jp,
            recordTypeNameEn: value.header.format_name_en,
            formatNo: value.header.format_number,
            totalBytes: value.header.total_bytes,
            columns: value.columns.map(convertColumnTypeJsonToColumnType),
        };
    }

    
    return retData;
};



// ColumnTypeJson型をColumnType型に変換する
const convertColumnTypeJsonToColumnType = (
    columnFormatJson: ColumnTypeJson
): ColumnType => {
    let retObj: ColumnType = {
        seq: columnFormatJson.seq,
        subSeq: columnFormatJson.sub_seq ?? null,
        isPk: columnFormatJson.is_pk,
        columnNameJp: columnFormatJson.column_name_jp,
        columnNameEn: columnFormatJson.column_name_en,
        startPos: columnFormatJson.start_pos,
        bytes: columnFormatJson.bytes,
        bytesTotal: columnFormatJson.bytes_total,
        dataType: columnFormatJson.db_column_type,
        length: (columnFormatJson.db_column_length instanceof Array )
            ? (columnFormatJson.db_column_length[0] + columnFormatJson.db_column_length[1] * 0.1)
            : columnFormatJson.db_column_length,
        isNotNull: columnFormatJson.db_column_notnull,
        paddingCharacter:
            (columnFormatJson.padding_character === "")
                ? null
                : columnFormatJson.padding_character,
        comment: columnFormatJson.comment ?? null,
    };
    if (columnFormatJson.sub_columns_info) {
        retObj.subColumnsInfo = {
            repeats: columnFormatJson.sub_columns_info.repeats,
            repeatItemHandling: columnFormatJson.sub_columns_info.repeat_item_handling,
            repeatSuffixRule: columnFormatJson.sub_columns_info.repeat_suffix_rule,
            subColumns: columnFormatJson.sub_columns_info.sub_columns.map(convertColumnTypeJsonToColumnType),
        };
    }
    return retObj;
}

*/
