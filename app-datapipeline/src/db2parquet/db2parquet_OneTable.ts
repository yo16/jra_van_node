/*
DBファイルから、Parquetファイルを作成する
*/

import path from "path";
import sqlite3 from "sqlite3";
import { open } from "sqlite";
//import { ParquetWriter, ParquetSchema } from "@apache-arrow/parquet";
import parquet from "parquetjs";
import fs from "fs";
import zlib from "zlib";

import { DB_FILE_PATH, PARQUET_DIR_PATH, PARQUET_CHUNK_SIZE } from "../const.js";
import { getSchema } from "./getSchema.js";



// SQLite のデータを Parquet に変換し、Gzip 圧縮
export async function db2parquet_OneTable(
    tableName: string,
    outputSubDir: string,
    skipIfExists: boolean = true,
) {
    const db = await open({ filename: DB_FILE_PATH, driver: sqlite3.Database });
  
    try {
        console.log(`Start: ${tableName}`);

        // 出力ディレクトリを設定し、作成する
        const outputDir = path.join(PARQUET_DIR_PATH, outputSubDir);
        fs.mkdirSync(outputDir, { recursive: true });

        // スキーマを取得
        const schema: parquet.ParquetSchema = await getSchema(db, tableName);
      
        // レコード数を取得
        const { count } = await db.get(`SELECT COUNT(*) as count FROM ${tableName}`);
        console.log(`Total records: ${count}`);
        const totalFiles = Math.ceil(count / PARQUET_CHUNK_SIZE);
      
        let offset = 0;
        let fileIndex = 1;

        const chunkSize = PARQUET_CHUNK_SIZE;
        const endOffset = count;
        //// for debug
        //const startOffset = 519910;
        //const endOffset = startOffset + 10;
        //const chunkSize = endOffset - startOffset;
        //offset = startOffset;
        //while (offset < count) {
        while (offset < endOffset) {
            // ファイル名を作成
            const outputFilePath = path.join(outputDir, `${tableName}_${fileIndex}.parquet`);
            // ファイルが存在していたらスキップ
            if (skipIfExists) {
                if (fs.existsSync(outputFilePath)) {
                    console.log(`Skipped(${fileIndex}/${totalFiles}): ${outputFilePath}`);
                    offset += chunkSize;
                    fileIndex++;
                    continue;
                }
            }

            // データを取得
            const rows = await db.all(
                `SELECT * FROM ${tableName} LIMIT ${chunkSize} OFFSET ${offset}`
            );
            if (rows.length === 0) break;

            // ファイルを作成する
            await writeParquetFile4(outputFilePath, schema, rows);
        
            console.log(`Saved(${fileIndex}/${totalFiles}): ${outputFilePath}`);
            offset += chunkSize;
            fileIndex++;
        }
    } catch (error) {
        console.error('Error:', error);
        throw error;
    } finally {
        await db.close();
    }
}

/*
// GZip圧縮したParquetファイルを作成する
async function writeParquetFile1(
    outputFilePath: string,
    schema: parquet.ParquetSchema,
    rows: any[]
) {
    const outputStream = fs.createWriteStream(`${outputFilePath}.gz`);
    //const gzipStream = zlib.createGzip(); // Gzip 圧縮
    const gzipStream = zlib.createGzip({
        level: 5,
        chunkSize: 32 * 1024,
    }); // Gzip 圧縮
    const parquetStream = new parquet.ParquetTransformer(schema);

    // パイプ処理で Gzip 圧縮しながら書き込む
    await parquetStream.pipe(gzipStream).pipe(outputStream);

    for (const row of rows) {
        //console.log(row);
        // 文字列としての""が入っていて、かつ必須でない場合は、nullに変換する
        for (const key in row) {
            if (row[key] === "") {
                if (schema.fields[key].repetitionType === "OPTIONAL") {
                    row[key] = null;
                }
            }
        }

        parquetStream.write(row);
    }
    await parquetStream.end();
}



// V2の使用
// →ダメ
async function writeParquetFile2(
    outputFilePath: string,
    schema: parquet.ParquetSchema,
    rows: any[]
) {
    const writer = await parquet.ParquetWriter.openFile(schema, outputFilePath, {
        useDataPageV2: true, // パフォーマンス改善
        rowGroupSize: 10000, // バッチサイズ調整
    });

    for (const row of rows) {
        // 文字列としての""が入っていて、かつ必須でない場合は、nullに変換する
        for (const key in row) {
            if (row[key] === "") {
                if (schema.fields[key].repetitionType === "OPTIONAL") {
                    row[key] = null;
                }
            }
        }

        await writer.appendRow(row);
    }
    await writer.close();
}



// 非圧縮
async function writeParquetFile3(
    outputFilePath: string,
    schema: parquet.ParquetSchema,
    rows: any[]
) {
    const outputStream = fs.createWriteStream(`${outputFilePath}`);
    const parquetStream = new parquet.ParquetTransformer(schema);

    // パイプ処理で書き込む
    await parquetStream.pipe(outputStream);

    for (const row of rows) {
        //console.log(row);
        // 文字列としての""が入っていて、かつ必須でない場合は、nullに変換する
        for (const key in row) {
            if (row[key] === "") {
                if (schema.fields[key].repetitionType === "OPTIONAL") {
                    row[key] = null;
                }
            }
        }

        parquetStream.write(row);
    }
    await parquetStream.end();
}
*/


// 非圧縮だけど、schemaを直接編集し、カラムレベルでGZIPを指定する
async function writeParquetFile4(
    outputFilePath: string,
    schema: parquet.ParquetSchema,
    rows: any[]
) {
    // schemaを編集し、すべての列をGZIP圧縮にする
    for (const field of Object.values(schema.fields)) {
        field.compression = "GZIP";
    }

    const outputStream = fs.createWriteStream(`${outputFilePath}`);
    const parquetStream = new parquet.ParquetTransformer(schema);

    // パイプ処理で書き込む
    await parquetStream.pipe(outputStream);

    for (const row of rows) {
        //console.log(row);
        editRow(row, schema);

        parquetStream.write(row);
    }
    await parquetStream.end();
}


// 型と一致しない場合の編集
function editRow(row: any, schema: parquet.ParquetSchema) {
    for (const key in row) {
        // 文字列としての""が入っていて、かつ必須でない場合は、nullに変換する
        if (row[key] === "") {
            if (schema.fields[key].repetitionType === "OPTIONAL") {
                row[key] = null;
            }
        }
        // 整数型か小数型の場合は、nullに変換する
        else if (
            (schema.fields[key].primitiveType === "INT32") ||
            (schema.fields[key].primitiveType === "DOUBLE")
        ) {
            if (!Number.isInteger(row[key])) {
                row[key] = null;
            }
        }
    }
}

