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
            const results = parseLine(jvdataLine, tcTypes, []);

            // 検証
            expect(results).toHaveLength(2);

            expect(results[0].fileName).toBe('test_table1.csv');
            expect(results[0].csvLines).toHaveLength(1);
            expect(results[0].csvLines[0]).toBe('"AB","CD12"');

            expect(results[1].fileName).toBe('test_table2.csv');
            expect(results[1].csvLines).toHaveLength(1);
            expect(results[1].csvLines[0]).toBe('"34","あい"');
        });

        it('「別テーブル」のテーブル定義に対して正しくCSV行を生成できること', () => {
            // テストデータの準備
            const jvdataLine = 'ABCD123あい456うえ789おか';
            const tcTypes: TableColumnType[] = [{
                ...baseTt,
                tableNameEn: 'test_table1',
                columns: [
                    { ...baseCt, startPos: 0, length: 2 },
                    { ...baseCt, startPos: 2, length: 2 },
                    { ...baseCt, startPos: null, columnNameEn: 'seq'},
                    { ...baseCt, startPos: [4, 11, 18], length: 3 },
                    { ...baseCt, startPos: [7, 14, 21], length: 4 },
                ],
            }];

            // 実行
            const results = parseLine(jvdataLine, tcTypes, [0]);

            // 検証
            expect(results).toHaveLength(1);

            expect(results[0].fileName).toBe('test_table1.csv');
            expect(results[0].csvLines).toHaveLength(3);
            expect(results[0].csvLines[0]).toBe('"AB","CD","0","123","あい"');
            expect(results[0].csvLines[1]).toBe('"AB","CD","1","456","うえ"');
            expect(results[0].csvLines[2]).toBe('"AB","CD","2","789","おか"');
        });

        it('「別テーブル」のテーブル定義に対して、空行の場合はレコードを作らないこと', () => {
            // テストデータの準備
            const jvdataLine = 'ABCD123あい456うえ   　　';
            const tcTypes: TableColumnType[] = [{
                ...baseTt,
                tableNameEn: 'test_table1',
                columns: [
                    { ...baseCt, startPos: 0, length: 2 },
                    { ...baseCt, startPos: 2, length: 2 },
                    { ...baseCt, startPos: null, columnNameEn: 'seq'},
                    { ...baseCt, startPos: [4, 11, 18], length: 3, paddingCharacter: "sp" },
                    { ...baseCt, startPos: [7, 14, 21], length: 4, paddingCharacter: "Ｓ" },
                ],
            }];

            // 実行
            const results = parseLine(jvdataLine, tcTypes, [0]);

            // 検証
            expect(results).toHaveLength(1);

            expect(results[0].fileName).toBe('test_table1.csv');
            expect(results[0].csvLines).toHaveLength(2);
            expect(results[0].csvLines[0]).toBe('"AB","CD","0","123","あい"');
            expect(results[0].csvLines[1]).toBe('"AB","CD","1","456","うえ"');
        });
    });

});


