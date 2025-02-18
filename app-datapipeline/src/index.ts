

import { makeCreateTables } from "./formats/queries/makeCreateTable/makeCreateTables.js";
makeCreateTables();



/*
// すべての jvdata を csv に変換する
import { convertAllJvdataToCsv } from "./jvdata2csv/jvdata2csv.js";
convertAllJvdataToCsv();
*/

/*
// for debug
// １つの recordTypeId の jvdata を csv に変換する
import { getTableColumnMap } from "./formats/jvdata/parseRecordFormat/getTableColumnMap.js";
import convertOneRecordTypeJvdataToCsv from "./jvdata2csv/convertOneRecordTypeJvdataToCsv.js";
const tcMap = getTableColumnMap();
convertOneRecordTypeJvdataToCsv(tcMap["RA"]);
*/


