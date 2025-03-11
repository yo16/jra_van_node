/*
１つのParquetファイルをGCSに格納する
*/
import { Storage } from "@google-cloud/storage";
import path from "path";


export async function send2gcs(
    parquetFilePath: string,
    storage: Storage,
): Promise<string> {
    const bucketName = process.env.GCS_BUCKET_NAME;
    if (!bucketName) {
        throw new Error("GCS_BUCKET_NAME が設定されていません");
    }

    // GCSへ格納する
    await storage.bucket(bucketName).upload(parquetFilePath);

    // GCSのURIを返す
    const parquetFileName = path.basename(parquetFilePath);
    const gcsUri = `gs://${bucketName}/${parquetFileName}`;
    return gcsUri;
}


