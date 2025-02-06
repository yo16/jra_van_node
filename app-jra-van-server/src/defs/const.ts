// 固定値の定義


// トップフォルダ
// データフォルダ
export const LOCALDATA_DIR_BASE = "./data";
// データ定義(DDL)フォルダ
export const DDL_DIR_BASE = "./ddl";


// data/JVRowData
// データタイプごとのフォルダ
export const DATATYPE_DIR_BASE = {
    "Accumulated": `${LOCALDATA_DIR_BASE}/JVRowData/Accumulated`,
    "Realtime": `${LOCALDATA_DIR_BASE}/JVRowData/Realtime`,
};



// DB関連
// DBのテーブル定義フォルダ
export const DB_TABLE_DDL_DIR_BASE = `${DDL_DIR_BASE}/db`;

// Insert文のクエリフォルダ
export const INSERT_QUERY_DIR_BASE = `${DDL_DIR_BASE}/insert`;

// DBのパス
export const DB_PATH = `${LOCALDATA_DIR_BASE}/db/jra_van_sqlite.db`;


// DBシステム名（テーブルの列の型を決める際に使う）
export const DB_SYSTEM_NAME = "SQLite";



// data/csv
// 変換後のCSVファイルのフォルダ
export const CSV_DIR_BASE = {
    "Accumulated": `${LOCALDATA_DIR_BASE}/csv/Accumulated`,
    "Realtime": `${LOCALDATA_DIR_BASE}/csv/Realtime`,
};
