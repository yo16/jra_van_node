// 固定長のテキストファイルから、CSVファイルを作成する
// 固定長のテキストファイルのフォーマットは、dataFormat.tsで定義されている
// DataSpecに対するDataFormatは、dataFormatDefs.tsで定義されている


import { convertFixedWidthToCsv_dataSpec } from "./convertFixedWidthToCsv_dataSpec.js";
import { DataSpecs } from "../defs/dataFormatDefs.js";


// 複数のDataSpecに対するCSVファイルを作成する
// nullのときは、dataTypeのすべてのDataSpecに対するCSVファイルを作成する
export async function convertFixedWidthToCsv(
    dataType: "Accumulated" | "Realtime",
    dataSpecNameList: string[] | null = null,
) {
    // 対象となるDataSpecを取得する
    const dataSpecList = dataSpecNameList ? dataSpecNameList : Object.keys(DataSpecs[dataType]);

    // 複数のDataSpecに対するCSVファイルを作成する
    for (const dataSpecName of dataSpecList) {
        await convertFixedWidthToCsv_dataSpec(dataType, dataSpecName);
    }
}

