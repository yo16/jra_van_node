/*
    ワーカースレッドで、重い非同期処理を行う
*/

import { parentPort } from 'worker_threads';
import { loadJVDataFromJVServer } from "./loadJVDataFromJVServer/loadJVDataMain.js";
import { loadRTJVDataFromJVServer } from "./loadRTJVDataFromJVServer/loadRTJVDataMain.js";


parentPort?.on('message', async (data) => {
    try {
        let result: {success: boolean, error?: string} = {success: true, error: ""};
        if (data.type === "loadJVData") {
            result = await loadJVDataFromJVServer(data.date);
        }
        if (data.type === "loadRTJVData") {
            result = await loadRTJVDataFromJVServer(
                data.date,
                data.dataSpec,
            );
        }
        if (!result.success) {
            throw new Error(result.error);
        }

        parentPort?.postMessage({ type: 'complete', result });
    } catch (error) {
        console.log("エラーです worker");
        if (error instanceof Error) {
            parentPort?.postMessage({ type: 'error', error: error.message });
        } else {
            parentPort?.postMessage({ type: 'error', error: "Unknown error" });
        }
    }

});
