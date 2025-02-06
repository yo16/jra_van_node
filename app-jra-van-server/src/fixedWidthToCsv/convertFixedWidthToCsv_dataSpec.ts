
import { convertFixedWidthToCsv_recordType } from "./convertFixedWidthToCsv_recordType.js";
import { DataSpecs } from "../defs/dataFormatDefs.js";

// 1つのDataSpecのすべてのRecordTypeIdに対するCSVファイルを作成する
export async function convertFixedWidthToCsv_dataSpec(
    dataType: "Accumulated" | "Realtime",
    dataSpecName: string,
) {
    // 1つのDataSpecのすべてのRecordTypeIDに対するCSVファイルを作成する
    for (const recordTypeID of DataSpecs[dataType][dataSpecName]) {
        await convertFixedWidthToCsv_recordType(dataType, recordTypeID);
    }
}
