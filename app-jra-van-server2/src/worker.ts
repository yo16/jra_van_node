/*
    ワーカースレッドで、重い非同期処理を行う
*/

import { parentPort } from 'worker_threads';
import { loadJVDataFromJVServer } from "./loadJVDataFromJVServer/loadJVDataMain.js";


parentPort?.on('message', async (data) => {
    try {
        if (data.type === "loadJVData") {
            await loadJVDataFromJVServer(data.date);
            parentPort?.postMessage({ type: 'complete' });
        }
    } catch (error) {
        parentPort?.postMessage({ type: 'error', error });
    }

});
