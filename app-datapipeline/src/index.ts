/* クエリ作成関連

// Create Table文を作成
import { makeCreateTables } from "./formats/queries/makeCreateTable/makeCreateTables.js";
makeCreateTables();
makeCreateTables(false);    // pkなし




// テーブル内のレコードをすべて削除するクエリを作成
import { makeDeleteAllTablesRecords } from "./formats/queries/makeDaleteAllRecords/makeDeleteAllRecords.js";
makeDeleteAllTablesRecords();


// 最新のレコードを抽出し、PKありのDBへinsertするクエリを作成
import { makeQuery_ExtractAndInsertLatestRecord } from "./formats/queries/makeExtractAndInsertLatestRecords/makeQuery_ExtractAndInsertLatestRecord.js";
makeQuery_ExtractAndInsertLatestRecord();

クエリ作成関連 */


/* 
// Create Table文を実行
import { executeCreateTableQueries } from "./tools/forSQLite/executeCreateTableQueries.js";
executeCreateTableQueries();
executeCreateTableQueries(false);   // pkなし
*/


/*
// すべての jvdata を csv に変換する
import { convertAllJvdataToCsv } from "./jvdata2csv/jvdata2csv.js";
convertAllJvdataToCsv();
*/




// for debug
// １つの recordTypeId の jvdata を csv に変換する
import { getTableColumnMap } from "./formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import convertOneRecordTypeJvdataToCsv from "./jvdata2csv/convertOneRecordTypeJvdataToCsv.js";
import { convertRTJvdataToCsv } from "./jvdata2csv/convertOneRecordTypeJvdataToCsv.js";

const tcMap = getTableColumnMap();
const skipIfExists = true;
//await convertOneRecordTypeJvdataToCsv(
//    tcMap["TK"],
//    skipIfExists,
//);
//await convertOneRecordTypeJvdataToCsv(
//    tcMap["RA"],
//    skipIfExists,
//);
//await convertRTJvdataToCsv(
//    {
//        dataKindId: "0B41",
//        dataKindName: "時系列オッズ(単複枠)",
//        recordTypeId: "O1",
//        recordTypeName: "オッズ(単複枠)",
//    },
//    tcMap["O1"],
//    skipIfExists,
//);
//await convertRTJvdataToCsv(
//    {
//        dataKindId: "0B42",
//        dataKindName: "時系列オッズ(馬連)",
//        recordTypeId: "O2",
//        recordTypeName: "オッズ(馬連)",
//    },
//    tcMap["O2"],
//    skipIfExists,
//);



/*
// csvを、PKなしのDBへインポート
import { csv2Db } from "./csv2db/csv2db.js";
csv2Db(false);    // pkなしテーブルへinsert
*/


/*
// テーブル内のレコードをすべて削除し、最新のレコードをinsertするクエリを実行
import { migrateLatestRecord } from "./edit_db_records/migrateLatestRecord.js";
migrateLatestRecord();
*/


// DBからParquetファイルを作成する
import { db2parquet } from "./db2parquet/db2parquet.js";
db2parquet();
//// for debug
//import { db2parquet_OneTable } from "./db2parquet/db2parquet_OneTable.js";
//const now = new Date();
//const dateStr = now.toISOString().split("T")[0];
//const timeStr = now.toTimeString().split(" ")[0].replace(/:/g, "");
//const outputSubDir = `${dateStr}_${timeStr}`;
//await db2parquet_OneTable(
//    "OddsFrame_WinOdds",
//    //"RaceDetail",
//    `test_${outputSubDir}`
//);









