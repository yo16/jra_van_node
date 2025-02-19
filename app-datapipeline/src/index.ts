
/* テーブル作成関連

// Create Table文を作成
import { makeCreateTables } from "./formats/queries/makeCreateTable/makeCreateTables.js";
//makeCreateTables();

// Create Table文を実行
import { executeCreateTableQueries } from "./tools/forSQLite/executeCreateTableQueries.js";
executeCreateTableQueries();

テーブル作成関連 */



/*
// すべての jvdata を csv に変換する
import { convertAllJvdataToCsv } from "./jvdata2csv/jvdata2csv.js";
convertAllJvdataToCsv();
*/


// for debug
// １つの recordTypeId の jvdata を csv に変換する
import { getTableColumnMap } from "./formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import convertOneRecordTypeJvdataToCsv from "./jvdata2csv/convertOneRecordTypeJvdataToCsv.js";
const tcMap = getTableColumnMap();
await convertOneRecordTypeJvdataToCsv(tcMap["TK"]);
await convertOneRecordTypeJvdataToCsv(tcMap["RA"]);


