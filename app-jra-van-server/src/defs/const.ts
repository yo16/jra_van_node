// 固定値の定義

// データフォルダ
export const LOCALDATA_DIR_BASE = "./data";

// データ定義(DDL)フォルダ
export const DDL_DIR_BASE = "./ddl";

// データタイプごとのフォルダ
export const DATATYPE_DIR_BASE = {
    "Accumulated": "/Accumulated",
    "Realtime": "/Realtime",
    "Setup": "/Setup",
};

// DBのパス
export const DB_PATH = `${LOCALDATA_DIR_BASE}/db/jra_van_sqlite.db`;

// DBのテーブル定義フォルダ
export const DB_TABLE_DDL_DIR_BASE = `${DDL_DIR_BASE}/db`;

// DBシステム名（テーブルの列の型を決める際に使う）
export const DB_SYSTEM_NAME = "SQLite";


