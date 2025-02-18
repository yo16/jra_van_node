import { jest, describe, it, expect } from '@jest/globals';

import fs from 'fs';
import readline from 'readline';
import { EventEmitter } from 'events';
import path from 'path';


import convertOneRecordTypeJvdataToCsv from '../convertOneRecordTypeJvdataToCsv.js';
import { parseLine, createCsvLine, convertOneTableColumnTypeJvdataToCsv } from '../convertOneRecordTypeJvdataToCsv.js';
import { TableColumnType, ColumnType } from '../../formats/jvdata/parseRecordFormat/types.js';
import { CSV_SAVE_PATH } from '../../const.js';

/*
// fsモジュールのモック
const mockCreateReadStream = jest.fn();
const mockCreateWriteStream = jest.fn();
const mockExistsSync = jest.fn();
const mockMkdirSync = jest.fn();
jest.mock('fs', () => ({
    createReadStream: mockCreateReadStream,
    createWriteStream: mockCreateWriteStream,
    existsSync: mockExistsSync,
    mkdirSync: mockMkdirSync,
}));

// readlineモジュールのモック
const mockCreateInterface = jest.fn();
jest.mock('readline', () => ({
    createInterface: mockCreateInterface
}));
*/

describe('convertOneRecordTypeJvdataToCsv', () => {
    const baseTt: TableColumnType = {
        recordTypeId: 'TE',
        tableNameJp: 'テストテーブル',
        tableNameEn: 'test_table',
        formatNo: 1,
        totalBytes: 10,
        columns: [],
    }
    const baseCt: ColumnType = {
        seq: 1,
        subSeq: null,
        columnTypeSeq: 1,
        isPk: false,
        columnNameJp: "列１",
        columnNameEn: "column1",
        startPos: 0,
        bytes: 2,
        bytesTotal: 2,
        dataType: "string",
        length: 2,
        isNotNull: true,
        paddingCharacter: "sp",
        comment: null,
    }



    describe('createCsvLine', () => {
        it('JVデータの1行をCSV形式に正しく変換できること', () => {
            // テストデータの準備
            const jvdataLine = 'ABCD1234あいうえお';
            const tcType: TableColumnType = {
                ...baseTt,
                tableNameEn: 'test_table',
                columns: [
                    { ...baseCt, startPos: 0, length: 2 },
                    { ...baseCt, startPos: 2, length: 4 },
                    { ...baseCt, startPos: 6, length: 10 }
                ],
            };

            // 実行
            const result = createCsvLine(jvdataLine, tcType);

            // 検証
            expect(result.fileName).toBe('test_table.csv');
            expect(result.csvLine).toBe('"AB","CD12","34あいうえ"');
        });

        it('スペースでトリムされること', () => {
            // テストデータの準備
            const jvdataLine = 'AB    1200340056あいうえお　　';
            const tcType: TableColumnType = {
                ...baseTt,
                tableNameEn: 'test_table',
                columns: [
                    { ...baseCt, startPos: 0, length: 4, paddingCharacter: "sp", dataType: "string" },
                    { ...baseCt, startPos: 4, length: 4, paddingCharacter: "sp", dataType: "number" },
                    { ...baseCt, startPos: 8, length: 4, paddingCharacter: "0", dataType: "number" },
                    { ...baseCt, startPos: 12, length: 4, paddingCharacter: "0", dataType: "string" },  // stringの0-paddingに対しては、トリムしない
                    { ...baseCt, startPos: 16, length: 14, paddingCharacter: "Ｓ", dataType: "string" }
                ],
            };

            // 実行
            const result = createCsvLine(jvdataLine, tcType);

            // 検証
            expect(result.fileName).toBe('test_table.csv');
            expect(result.csvLine).toBe('"AB","12","34","0056","あいうえお"');
        });

    });



    describe('parseLine', () => {
        it('複数のテーブル定義に対して正しくCSV行を生成できること', () => {
            // テストデータの準備
            const jvdataLine = 'ABCD1234あいうえお';
            const tcTypes: TableColumnType[] = [{
                ...baseTt,
                tableNameEn: 'test_table1',
                columns: [
                    { ...baseCt, startPos: 0, length: 2 },
                    { ...baseCt, startPos: 2, length: 4 },
                ],
            },{
                ...baseTt,
                tableNameEn: 'test_table2',
                columns: [
                    { ...baseCt, startPos: 6, length: 2 },
                    { ...baseCt, startPos: 8, length: 4 },
                ],
            }];

            // 実行
            const results = parseLine(jvdataLine, tcTypes);

            // 検証
            expect(results).toHaveLength(2);
            expect(results[0]).toEqual({
                fileName: 'test_table1.csv',
                csvLine: '"AB","CD12"'
            });
            expect(results[1]).toEqual({
                fileName: 'test_table2.csv',
                csvLine: '"34","あい"'
            });
        });
    });



    /*
    describe('convertOneTableColumnTypeJvdataToCsv', () => {
        const mockParseLine = jest.fn();
        jest.mock('parseLine', mockParseLine);

        it('JVデータファイルを指定のテーブル定義に従ってCSVに変換できること', async () => {

            // テストデータ
            const recordTypeId = 'TE';
            const jvdataFilePath = 'input.txt';
            const tcTypes: TableColumnType[] = [{
                ...baseTt,
                tableNameEn: 'test_table',
                columns: [
                    { ...baseCt, startPos: 0, length: 2 },
                    { ...baseCt, startPos: 2, length: 4 },
                ],
            }];
            const outputFolderPath = path.join(CSV_SAVE_PATH, recordTypeId);

            // モックの設定
            const mockReadStream = new EventEmitter();
            const mockWriteStream = {
                write: jest.fn(),
                end: jest.fn(),
            };
            
            // ディレクトリの存在チェックと作成のモック
            mockExistsSync.mockReturnValue(false);  // ディレクトリが存在しないと仮定
            mockMkdirSync.mockReturnValue(undefined);  // ディレクトリを作成する

            mockCreateReadStream.mockReturnValue(mockReadStream);
            
            const mockLineReader = new EventEmitter();
            mockCreateInterface.mockReturnValue(mockLineReader);

            mockCreateWriteStream.mockReturnValue(mockWriteStream);

            mockParseLine.mockReturnValue([
                {
                    fileName: 'test_table.csv',
                    csvLine: '"AB","CD12"'
                }]);

            // 関数の実行
            const promise = convertOneTableColumnTypeJvdataToCsv(
                recordTypeId, jvdataFilePath, tcTypes
            );

            // データの読み込みをシミュレート
            mockLineReader.emit('line', 'ABCD1234');
            mockLineReader.emit('close');

            await promise;

            // 検証
            expect(mockExistsSync).toHaveBeenCalledWith(outputFolderPath);
            expect(mockMkdirSync).toHaveBeenCalledWith(outputFolderPath, { recursive: true });
            expect(fs.createReadStream).toHaveBeenCalledWith(jvdataFilePath);
            expect(fs.createWriteStream).toHaveBeenCalledWith(path.join(outputFolderPath, 'test_table.csv'));
            expect(mockWriteStream.write).toHaveBeenCalledWith('"AB","CD12"\n');
            expect(mockWriteStream.end).toHaveBeenCalled();
        });

        /*
        it('空のJVデータファイルを処理できること', async () => {
            // モックの設定
            const mockReadStream = new EventEmitter();
            const mockWriteStream = {
                write: jest.fn(),
                end: jest.fn(),
            };
            
            mockCreateReadStream.mockReturnValue(mockReadStream);
            mockCreateWriteStream.mockReturnValue(mockWriteStream);
            
            const mockLineReader = new EventEmitter();
            mockCreateInterface.mockReturnValue(mockLineReader);

            // テストデータ
            const inputPath = 'empty.txt';
            const outputDir = 'output';
            const tcTypes: TableColumnType[] = [{
                ...baseTt,
                tableNameEn: 'test_table',
                columns: [
                    { ...baseCt, startPos: 0, length: 2 },
                ],
            }];

            // 関数の実行
            const promise = convertOneTableColumnTypeJvdataToCsv(inputPath, outputDir, tcTypes);

            // ファイルが空の場合をシミュレート
            mockLineReader.emit('close');

            await promise;

            // 検証
            expect(fs.createWriteStream).toHaveBeenCalledWith(`${outputDir}/test_table.csv`);
            expect(mockWriteStream.write).not.toHaveBeenCalled();
            expect(mockWriteStream.end).toHaveBeenCalled();
        });
        * /
    });
    */
});


