/*
１つのParquetファイルをGCSに格納する
*/
import { Storage } from "@google-cloud/storage";
import path from "path";


export async function send2Gcs(
    parquetFilePath: string,
    storage: Storage,
) {
    const bucketName = process.env.GCS_BUCKET_NAME;
    if (!bucketName) {
        throw new Error("GCS_BUCKET_NAME が設定されていません");
    }

    await storage.bucket(bucketName).upload(parquetFilePath);
}


