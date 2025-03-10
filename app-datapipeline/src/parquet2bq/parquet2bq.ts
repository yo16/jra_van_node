/*
ParquetファイルをBigQueryにインポートする
*/
import { Storage } from "@google-cloud/storage";
import { BigQuery } from "@google-cloud/bigquery";
import dotenv from "dotenv";
import fs from "fs";
import path from "path";

import { send2Gcs } from "./send2Gcs.js";
import { PARQUET_DIR_PATH } from "../const.js";


let storage: Storage | undefined = undefined;
let bigquery: BigQuery | undefined = undefined;

function initialize() {
    dotenv.config(); // 環境変数を読み込む

    const credentials = process.env.GOOGLE_APPLICATION_CREDENTIALS;
    const bucketName = process.env.GCS_BUCKET_NAME;
    const datasetId = process.env.BQ_DATASET_ID;

    if (!credentials || !bucketName || !datasetId) {
        throw new Error("環境変数が正しく設定されていません");
    }

    storage = new Storage();
    bigquery = new BigQuery();
}
initialize();



// 指定されたフォルダ内にあるParquetファイルをGCSに格納し、BigQueryにインポートする
export async function parquet2bq(
    parquetFolderPath: string = PARQUET_DIR_PATH,
) {
    if (!storage || !bigquery) {
        throw new Error("initialize() が正しく実行されていません");
    }

    // フォルダ内のParquetファイルの１つずつ、GCSへ格納する
    try {
        const files = await fs.readdirSync(parquetFolderPath);
        const parquetFileNames = files.filter(file => path.extname(file) === ".parquet");
        
        // GCSへ格納する
        for (const parquetFileName of parquetFileNames) {
            const parquetFilePath = path.join(parquetFolderPath, parquetFileName);
            await send2Gcs(parquetFilePath, storage);
        }
    } catch (error) {
        console.error(error);
    }

    
}
