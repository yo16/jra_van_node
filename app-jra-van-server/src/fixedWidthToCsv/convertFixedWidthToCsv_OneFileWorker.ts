import { ThreadWorker } from 'poolifier';
import { convertFixedWidthToCsv_OneFile } from './convertFixedWidthToCsv_OneFile.js';

// poolifier で実行する関数を定義
/*
export async function processFileWorker(
    recordTypeID: string,
    sourceFilePath: string,
    csvFilePath: string,
): Promise<void> {
    try {
        await convertFixedWidthToCsv_OneFile(recordTypeID, sourceFilePath, csvFilePath);
        console.log(`File processed: ${sourceFilePath}`);
    } catch (error) {
        console.error(`Error processing file ${sourceFilePath}:`, error);
        throw error; // エラーを poolifier に伝播させる
    }
}*/

interface WorkerData {
    recordTypeID: string;
    sourceFilePath: string;
    csvFilePath: string;
}

const oneFileWorker = new ThreadWorker(
    async (data: unknown) => {
        if (
            typeof data === 'object' &&
            data !== null &&
            'recordTypeID' in data &&
            'sourceFilePath' in data &&
            'csvFilePath' in data
        ) {
            const { recordTypeID, sourceFilePath, csvFilePath } = data as WorkerData;
            await convertFixedWidthToCsv_OneFile(recordTypeID, sourceFilePath, csvFilePath);
            return { success: true };
        }
        throw new Error('Invalid data format');
    }
  );
  
  export default oneFileWorker;

