/*
GCSからBigQueryへインポートする
*/
import { BigQuery } from "@google-cloud/bigquery";
import { Storage } from "@google-cloud/storage";



export async function importGcs2Bq(
    gcsUri: string,
    bigquery: BigQuery,
    storage: Storage,
) {
    // gcsUriのParquet名から、テーブル名を抽出する
    const parquetFileName = gcsUri.split("/").pop();
    const tableName = parquetFileName?.replace(/_\d+\.parquet$/, "");
    if (!parquetFileName || !tableName) {
        throw new Error("テーブル名を抽出できませんでした");
    }
    //console.log(`テーブル名: ${tableName}`);

    const bucketName = process.env.GCS_BUCKET_NAME;
    if (!bucketName) {
        throw new Error("GCS_BUCKET_NAME が設定されていません");
    }
    
    const datasetId = process.env.BQ_DATASET_ID;
    if (!datasetId) {
        throw new Error("データセットIDが正しく設定されていません");
    }
    //console.log(`データセットID: ${datasetId}`);
    //console.log(`GCS URI: ${gcsUri}`);

    // BigQueryにインポートする
    //const dataset = bigquery.dataset(datasetId, {
    //    location: "US",
    //});
    //console.log(`dataset: ${dataset}`);
    //const table = dataset.table(tableName);
    //console.log(`table: ${table}`);
    //const backet = storage.bucket(bucketName);
    //console.log(`backet: ${backet}`);
    //const file = backet.file("OddsExacta_1.parquet");
    //console.log(`file: ${file}`);
    //const metadata = {
    //    sourceFormat: "PARQUET",
    //    location: "US",
    //};
    //console.log('---------');
    //const [job] = await table.load(file, metadata);
    const [job] = await bigquery
        .dataset(datasetId)
        .table(tableName)
        .load(
            storage
                .bucket(bucketName)
                .file(parquetFileName),
            {
                sourceFormat: "PARQUET",
            }
        );
    //console.log(`Job ${job.id} completed.`);
}
