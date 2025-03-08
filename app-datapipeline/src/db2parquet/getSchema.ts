/*
SQLite の型情報を取得し、Parquet スキーマを作成
*/

//import { ParquetSchema } from "@apache-arrow/parquet";
import parquet from "parquetjs";



// SQLite の型を Parquet の型にマッピング
const typeMap: Record<string, string> = {
    INTEGER: "INT32",
    TEXT: "UTF8",
    REAL: "DOUBLE",
    BLOB: "BYTE_ARRAY",
    NUMERIC: "DOUBLE",
    BOOLEAN: "BOOLEAN",
};


export async function getSchema(
    db: any,
    tableName: string,
): Promise<parquet.ParquetSchema> {
    // テーブルのスキーマ情報を取得
    const columns = await db.all(`PRAGMA table_info(${tableName});`);
    //console.log(`columns`, columns);
  
    // スキーマ情報を、Parquetの型にマッピング
    // すべてのカラムをオプショナルにしているのは、
    // DBの定義のNotNull制約が、誤っているケースがあったため
    // （例えば、登録されたばかりのレース情報には、詳細の情報がないなど）
    const schemaFields: Record<string, { type: string, optional: boolean }> = {};
    for (const col of columns) {
        const sqliteType = col.type.toUpperCase();
        schemaFields[col.name] = {
            type: typeMap[sqliteType] || "UTF8",    // デフォルト UTF8
            optional: true, // 全てのカラムをオプショナル(NullでもOK)にする
        };
    }
  
    return await new parquet.ParquetSchema(schemaFields);
}
