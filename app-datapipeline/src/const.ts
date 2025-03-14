import path from "path";


// JVDataの保存パス
export const JVDATA_SAVE_PATH = path.join("..", "data", "JVData", "Accumulated");
export const JVDATA_RT_SAVE_PATH = path.join("..", "data", "JVData", "RealTime");

// CSVの保存パス
export const CSV_SAVE_PATH = path.join("..", "data", "csv");


// クエリの保存パス
const QUERY_SAVE_PATH = path.join("..", "data", "queries");
// テーブルの作成クエリの保存パス
export const QUERY_CREATE_TABLE_PATH = path.join(QUERY_SAVE_PATH, "create_table");
export const QUERY_CREATE_TABLE_NOPK_PATH = path.join(QUERY_SAVE_PATH, "create_table_nopk");
// テーブル内のレコードをすべて削除するクエリの保存パス
export const QUERY_DELETE_ALL_RECORDS_PATH = path.join(QUERY_SAVE_PATH, "delete_all_records");
// PKのないテーブルから、最新のレコードだけを抽出し、PKのあるテーブルへinsertするクエリの保存パス
export const QUERY_EXTRACT_AND_INSERT_LATEST_RECORDS_PATH = path.join(QUERY_SAVE_PATH, "extract_and_insert_latest_records");


// DB
// データベースシステム名
export const DB_SYSTEM_NAME = "SQLite";
// データベースファイルパス
//export const DB_FILE_PATH = path.join("..", "data", "db", "jra_van_sqlite.db");
export const DB_FILE_PATH = path.join("C:", "tmp", "jra_van_sqlite.db");


// Parquet
// Parquetの保存パス
export const PARQUET_DIR_PATH = path.join("..", "data", "parquet");
// Parquetのチャンクサイズ
export const PARQUET_CHUNK_SIZE = 1_000_000;
