import {
    parseColumns,
    parseBasicTableHeader,
    parseBasicColumn,
    getYokomochiColumns,
 } from '../parseColumns.js';
import { RecordTypeJson_Header, RecordTypeJson_ColumnType } from '../types.js';


describe('parseColumns', () => {
    const basicTestHeader: RecordTypeJson_Header = {
        record_type_id: 'TE',
        format_name_jp: 'テスト',
        format_name_en: 'TEST',
        format_number: 1,
        total_bytes: 100,
    };
    const basicTestColumn: RecordTypeJson_ColumnType = {
        seq: 1,
        sub_seq: undefined,
        is_pk: false,
        column_name_jp: 'テスト列',
        column_name_en: 'test_column',
        start_pos: 1,
        bytes: 10,
        bytes_total: 10,
        db_column_type: 'string',
        db_column_length: 10,
        db_column_notnull: true,
        padding_character: '',
        comment: '',
    };
    it('基本的な列情報を正しくパースできること', () => {
        const header: RecordTypeJson_Header = basicTestHeader;
        const columns: RecordTypeJson_ColumnType[] = [basicTestColumn];

        const result = parseColumns(header, columns);

        expect(result).toHaveLength(1);
        expect(result[0].tableNameJp).toBe('テスト');
        expect(result[0].tableNameEn).toBe('TEST');
        expect(result[0].columns[0].columnNameJp).toBe('テスト列');
        expect(result[0].columns[0].columnNameEn).toBe('test_column');
        expect(result[0].columns[0].columnTypeSeq).toBe(1);
    });

    it('テーブルヘッダー情報が正しくパースされること', () => {
        const header: RecordTypeJson_Header = {
            record_type_id: 'TE',
            format_name_jp: 'テスト',
            format_name_en: 'TEST',
            format_number: 1,
            total_bytes: 100
        };
        const columns: RecordTypeJson_ColumnType[] = [];  // 空の配列

        const result = parseColumns(header, columns);

        // parseBasicTableHeaderの結果を間接的にテスト
        expect(result[0].recordTypeId).toBe('TE');
        expect(result[0].tableNameJp).toBe('テスト');
        expect(result[0].tableNameEn).toBe('TEST');
        expect(result[0].formatNo).toBe(1);
        expect(result[0].totalBytes).toBe(100);
    });

    it("「別テーブル」の情報が正しくパースされること", () => {
        const header: RecordTypeJson_Header = basicTestHeader;
        const columns: RecordTypeJson_ColumnType[] = [
            {
                ...basicTestColumn,
                is_pk: true,
            },
            {
                ...basicTestColumn,
                start_pos: 11,
                bytes: 6,
                bytes_total: 18,
                is_pk: false,
                seq: 2,
                column_name_jp: 'テスト列2',
                column_name_en: 'test_column2',
                sub_columns_info: {
                    repeats: 3,
                    repeat_item_handling: '別テーブル',
                    sub_columns: [{
                        "seq": 2,
                        "sub_seq": "a",
                        "is_pk": false,
                        "column_name_jp": "テスト列2-1",
                        "column_name_en": "test_column2-1",
                        "start_pos": 1,
                        "bytes": 4,
                        "bytes_total": 11,
                        "db_column_type": "string",
                        "db_column_length": 11,
                        "db_column_notnull": true,
                        "padding_character": "",
                        "comment": "",
                    },{
                        "seq": 2,
                        "sub_seq": "b",
                        "is_pk": false,
                        "column_name_jp": "テスト列2-2",
                        "column_name_en": "test_column2-2",
                        "start_pos": 5,
                        "bytes": 2,
                        "bytes_total": 12,
                        "db_column_type": "string",
                        "db_column_length": 12,
                        "db_column_notnull": true,
                        "padding_character": "",
                        "comment": "",
                    }],
                },
            },
            {
                ...basicTestColumn,
                seq: 3,
                column_name_jp: 'テスト列3',
                column_name_en: 'test_column3',
                is_pk: false,
                start_pos: 29,
                bytes: 1,
            },
        ];

        const result = parseColumns(header, columns);

        expect(result).toHaveLength(2);
        expect(result[0].tableNameJp).toBe('テスト');
        expect(result[0].tableNameEn).toBe('TEST');
        expect(result[0].columns).toHaveLength(2);
        expect(result[0].columns[0].columnNameJp).toBe('テスト列');
        expect(result[0].columns[0].columnNameEn).toBe('test_column');
        expect(result[0].columns[0].columnTypeSeq).toBe(1);
        expect(result[0].columns[0].startPos).toBe(0);
        expect(result[0].columns[0].bytes).toBe(10);
        expect(result[0].columns[1].columnNameJp).toBe('テスト列3');
        expect(result[0].columns[1].columnNameEn).toBe('test_column3');
        expect(result[0].columns[1].columnTypeSeq).toBe(2);
        expect(result[0].columns[1].startPos).toBe(28);
        expect(result[0].columns[1].bytes).toBe(1);

        expect(result[1].tableNameJp).toBe('テスト_テスト列2');
        expect(result[1].tableNameEn).toBe('TEST_test_column2');
        expect(result[1].columns).toHaveLength(8);
        expect(result[1].columns[0].columnNameJp).toBe('テスト列');
        expect(result[1].columns[0].columnNameEn).toBe('test_column');
        expect(result[1].columns[0].columnTypeSeq).toBe(1);
        expect(result[1].columns[0].isPk).toBe(true);
        expect(result[1].columns[0].startPos).toBe(0);
        expect(result[1].columns[0].bytes).toBe(10);
        expect(result[1].columns[1].columnNameJp).toBe('SEQ');
        expect(result[1].columns[1].columnNameEn).toBe('seq');
        expect(result[1].columns[1].columnTypeSeq).toBe(2);
        expect(result[1].columns[1].isPk).toBe(true);
        expect(result[1].columns[1].startPos).toBe(null);
        expect(result[1].columns[2].columnNameJp).toBe('テスト列2_テスト列2-1_0');
        expect(result[1].columns[2].columnNameEn).toBe('test_column2_test_column2-1_0');
        expect(result[1].columns[2].columnTypeSeq).toBe(3);
        expect(result[1].columns[2].isPk).toBe(false);
        expect(result[1].columns[2].startPos).toBe(10);
        expect(result[1].columns[2].bytes).toBe(4);
        expect(result[1].columns[3].columnNameJp).toBe('テスト列2_テスト列2-2_0');
        expect(result[1].columns[3].columnNameEn).toBe('test_column2_test_column2-2_0');
        expect(result[1].columns[3].columnTypeSeq).toBe(4);
        expect(result[1].columns[3].isPk).toBe(false);
        expect(result[1].columns[3].startPos).toBe(14);
        expect(result[1].columns[3].bytes).toBe(2);
        expect(result[1].columns[4].columnNameJp).toBe('テスト列2_テスト列2-1_1');
        expect(result[1].columns[4].columnNameEn).toBe('test_column2_test_column2-1_1');
        expect(result[1].columns[4].columnTypeSeq).toBe(5);
        expect(result[1].columns[4].isPk).toBe(false);
        expect(result[1].columns[4].startPos).toBe(16);
        expect(result[1].columns[4].bytes).toBe(4);
        expect(result[1].columns[5].columnNameJp).toBe('テスト列2_テスト列2-2_1');
        expect(result[1].columns[5].columnNameEn).toBe('test_column2_test_column2-2_1');
        expect(result[1].columns[5].columnTypeSeq).toBe(6);
        expect(result[1].columns[5].isPk).toBe(false);
        expect(result[1].columns[5].startPos).toBe(20);
        expect(result[1].columns[5].bytes).toBe(2);
        expect(result[1].columns[6].columnNameJp).toBe('テスト列2_テスト列2-1_2');
        expect(result[1].columns[6].columnNameEn).toBe('test_column2_test_column2-1_2');
        expect(result[1].columns[6].columnTypeSeq).toBe(7);
        expect(result[1].columns[6].isPk).toBe(false);
        expect(result[1].columns[6].startPos).toBe(22);
        expect(result[1].columns[6].bytes).toBe(4);
        expect(result[1].columns[7].columnNameJp).toBe('テスト列2_テスト列2-2_2');
        expect(result[1].columns[7].columnNameEn).toBe('test_column2_test_column2-2_2');
        expect(result[1].columns[7].columnTypeSeq).toBe(8);
        expect(result[1].columns[7].isPk).toBe(false);
        expect(result[1].columns[7].startPos).toBe(26);
        expect(result[1].columns[7].bytes).toBe(2);
    });
});



describe('parseBasicTableHeader', () => {
    it('headerが正しくパースされること', () => {
        const header: RecordTypeJson_Header = {
            record_type_id: 'TEST',
            format_name_jp: 'テスト',
            format_name_en: 'test',
            format_number: 1,
            total_bytes: 100,
        };

        const result = parseBasicTableHeader(header);

        expect(result.recordTypeId).toBe('TEST');
        expect(result.tableNameJp).toBe('テスト');
        expect(result.tableNameEn).toBe('test');
        expect(result.formatNo).toBe(1);
        expect(result.totalBytes).toBe(100);
        expect(result.columns).toHaveLength(0);
    });
});



describe('parseBasicColumn', () => {
    const basicTestColumn: RecordTypeJson_ColumnType = {
        seq: 1,
        sub_seq: undefined,
        is_pk: true,
        column_name_jp: 'テスト列',
        column_name_en: 'test_column',
        start_pos: 1,
        bytes: 10,
        bytes_total: 20,
        padding_character: '',
        comment: '',
        db_column_type: 'string',
        db_column_length: 30,
        db_column_notnull: true,
    };

    it('columnが正しくパースされること', () => {
        const column: RecordTypeJson_ColumnType = basicTestColumn;

        const result = parseBasicColumn(column, 5);

        expect(result.seq).toBe(1);
        expect(result.subSeq).toBe(null);
        expect(result.columnTypeSeq).toBe(5);
        expect(result.isPk).toBe(true);
        expect(result.columnNameJp).toBe('テスト列');
        expect(result.columnNameEn).toBe('test_column');
        expect(result.startPos).toBe(0);
        expect(result.bytes).toBe(10);
        expect(result.bytesTotal).toBe(20);
        expect(result.paddingCharacter).toBe(null);
        expect(result.comment).toBe('');
        expect(result.dataType).toBe('string');
        expect(result.length).toBe(30);
        expect(result.isNotNull).toBe(true);
    });

    it("subSeqが入っているパターン", () => {
        const column: RecordTypeJson_ColumnType = {
            ...basicTestColumn,
            sub_seq: 'a',
        };

        const result = parseBasicColumn(column, 6);

        expect(result.subSeq).toBe('a');
    });

    it("lengthが配列の場合", () => {
        const column: RecordTypeJson_ColumnType = {
            ...basicTestColumn,
            db_column_length: [10, 1],
        };

        const result = parseBasicColumn(column, 7);

        expect(result.length).toBe(10.1);
    });
});



describe('getYokomochiColumns', () => {
    const basicTestColumn: RecordTypeJson_ColumnType = {
        seq: 1,
        sub_seq: undefined,
        is_pk: true,
        column_name_jp: 'テスト列1',
        column_name_en: 'test_column1',
        start_pos: 10,
        bytes: 6,
        bytes_total: 18,
        db_column_type: 'string',
        db_column_length: 10,
        db_column_notnull: true,
        padding_character: '',
        comment: '',
    };

    it('複数列の横持ち、サフィックスルールなしの列が正しくパースされること', () => {
        const column: RecordTypeJson_ColumnType = {
            ...basicTestColumn,
            sub_columns_info: {
                repeats: 3,
                repeat_item_handling: '横持ち',
                sub_columns: [{
                    "seq": 1,
                    "sub_seq": "a",
                    "is_pk": false,
                    "column_name_jp": "繰り返し列１",
                    "column_name_en": "repeat_column_1",
                    "start_pos": 1,
                    "bytes": 2,
                    "bytes_total": 2,
                    "db_column_type": "string",
                    "db_column_length": 2,
                    "db_column_notnull": true,
                    "padding_character": "",
                    "comment": "",
                },{
                    "seq": 1,
                    "sub_seq": "b",
                    "is_pk": false,
                    "column_name_jp": "繰り返し列２",
                    "column_name_en": "repeat_column_2",
                    "start_pos": 3,
                    "bytes": 4,
                    "bytes_total": 4,
                    "db_column_type": "string",
                    "db_column_length": 4,
                    "db_column_notnull": true,
                    "padding_character": "",
                    "comment": "",
                }],
            },
        };

        const { yokomochiColumns: result, nextColumnTypeSeq } = getYokomochiColumns(column, 10);
    
        expect(result).toHaveLength(6);
        expect(result[0].columnNameJp).toBe('テスト列1_0_繰り返し列１');
        expect(result[0].columnNameEn).toBe('test_column1_0_repeat_column_1');
        expect(result[0].startPos).toBe(10);
        expect(result[0].bytes).toBe(2);
        expect(result[0].columnTypeSeq).toBe(10);

        expect(result[1].columnNameJp).toBe('テスト列1_0_繰り返し列２');
        expect(result[1].columnNameEn).toBe('test_column1_0_repeat_column_2');
        expect(result[1].startPos).toBe(12);
        expect(result[1].bytes).toBe(4);
        expect(result[1].columnTypeSeq).toBe(11);

        expect(result[2].columnNameJp).toBe('テスト列1_1_繰り返し列１');
        expect(result[2].columnNameEn).toBe('test_column1_1_repeat_column_1');
        expect(result[2].startPos).toBe(16);
        expect(result[2].bytes).toBe(2);
        expect(result[2].columnTypeSeq).toBe(12);

        expect(result[3].columnNameJp).toBe('テスト列1_1_繰り返し列２');
        expect(result[3].columnNameEn).toBe('test_column1_1_repeat_column_2');
        expect(result[3].startPos).toBe(18);
        expect(result[3].bytes).toBe(4);
        expect(result[3].columnTypeSeq).toBe(13);

        expect(result[4].columnNameJp).toBe('テスト列1_2_繰り返し列１');
        expect(result[4].columnNameEn).toBe('test_column1_2_repeat_column_1');
        expect(result[4].startPos).toBe(22);
        expect(result[4].bytes).toBe(2);
        expect(result[4].columnTypeSeq).toBe(14);

        expect(result[5].columnNameJp).toBe('テスト列1_2_繰り返し列２');
        expect(result[5].columnNameEn).toBe('test_column1_2_repeat_column_2');
        expect(result[5].startPos).toBe(24);
        expect(result[5].bytes).toBe(4);
        expect(result[5].columnTypeSeq).toBe(15);
        
        expect(nextColumnTypeSeq).toBe(16);
    });
    
    it('複数列の横持ち、サフィックスルールありの列が正しくパースされること', () => {
        const column: RecordTypeJson_ColumnType = {
            ...basicTestColumn,
            sub_columns_info: {
                repeats: 3,
                repeat_item_handling: '横持ち',
                repeat_suffix_rule: ['aaa', 'bbb', 'ccc'],
                sub_columns: [{
                    "seq": 1,
                    "sub_seq": "a",
                    "is_pk": false,
                    "column_name_jp": "繰り返し列１",
                    "column_name_en": "repeat_column_1",
                    "start_pos": 1,
                    "bytes": 11,
                    "bytes_total": 11,
                    "db_column_type": "string",
                    "db_column_length": 11,
                    "db_column_notnull": true,
                    "padding_character": "",
                    "comment": "",
                },{
                    "seq": 1,
                    "sub_seq": "b",
                    "is_pk": false,
                    "column_name_jp": "繰り返し列２",
                    "column_name_en": "repeat_column_2",
                    "start_pos": 11,
                    "bytes": 12,
                    "bytes_total": 12,
                    "db_column_type": "string",
                    "db_column_length": 12,
                    "db_column_notnull": true,
                    "padding_character": "",
                    "comment": "",
                }],
            },
        };

        const { yokomochiColumns: result, nextColumnTypeSeq } = getYokomochiColumns(column, 20);
    
        expect(result).toHaveLength(6);
        expect(result[0].columnNameJp).toBe('テスト列1_aaa_繰り返し列１');
        expect(result[0].columnNameEn).toBe('test_column1_aaa_repeat_column_1');
        expect(result[0].columnTypeSeq).toBe(20);
        expect(result[1].columnNameJp).toBe('テスト列1_aaa_繰り返し列２');
        expect(result[1].columnNameEn).toBe('test_column1_aaa_repeat_column_2');
        expect(result[1].columnTypeSeq).toBe(21);
        expect(result[2].columnNameJp).toBe('テスト列1_bbb_繰り返し列１');
        expect(result[2].columnNameEn).toBe('test_column1_bbb_repeat_column_1');
        expect(result[2].columnTypeSeq).toBe(22);
        expect(result[3].columnNameJp).toBe('テスト列1_bbb_繰り返し列２');
        expect(result[3].columnNameEn).toBe('test_column1_bbb_repeat_column_2');
        expect(result[3].columnTypeSeq).toBe(23);
        expect(result[4].columnNameJp).toBe('テスト列1_ccc_繰り返し列１');
        expect(result[4].columnNameEn).toBe('test_column1_ccc_repeat_column_1');
        expect(result[4].columnTypeSeq).toBe(24);
        expect(result[5].columnNameJp).toBe('テスト列1_ccc_繰り返し列２');
        expect(result[5].columnNameEn).toBe('test_column1_ccc_repeat_column_2');
        expect(result[5].columnTypeSeq).toBe(25);
        expect(nextColumnTypeSeq).toBe(26);
    });
    
    it('単一列の横持ち、サフィックスルールなしの列が正しくパースされること', () => {
        const column: RecordTypeJson_ColumnType = {
            ...basicTestColumn,
            start_pos: 11,
            bytes: 8,
            bytes_total: 24,
            sub_columns_info: {
                repeats: 3,
                repeat_item_handling: '横持ち',
                sub_columns: [{
                    "seq": 1,
                    "sub_seq": "a",
                    "is_pk": false,
                    "column_name_jp": "繰り返し列１",
                    "column_name_en": "repeat_column_1",
                    "start_pos": 1,
                    "bytes": 8,
                    "bytes_total": 8,
                    "db_column_type": "string",
                    "db_column_length": 8,
                    "db_column_notnull": true,
                    "padding_character": "",
                    "comment": "",
                },],
            },
        };

        const { yokomochiColumns: result, nextColumnTypeSeq } = getYokomochiColumns(column, 30);
    
        expect(result).toHaveLength(3);

        expect(result[0].columnNameJp).toBe('繰り返し列１_0');
        expect(result[0].columnNameEn).toBe('repeat_column_1_0');
        expect(result[0].columnTypeSeq).toBe(30);
        expect(result[0].startPos).toBe(10);
        expect(result[0].bytes).toBe(8);

        expect(result[1].columnNameJp).toBe('繰り返し列１_1');
        expect(result[1].columnNameEn).toBe('repeat_column_1_1');
        expect(result[1].columnTypeSeq).toBe(31);
        expect(result[1].startPos).toBe(18);
        expect(result[1].bytes).toBe(8);

        expect(result[2].columnNameJp).toBe('繰り返し列１_2');
        expect(result[2].columnNameEn).toBe('repeat_column_1_2');
        expect(result[2].columnTypeSeq).toBe(32);
        expect(result[2].startPos).toBe(26);
        expect(result[2].bytes).toBe(8);

        expect(nextColumnTypeSeq).toBe(33);
    });
    
    it('単一列の横持ち、サフィックスルールありの列が正しくパースされること', () => {
        const column: RecordTypeJson_ColumnType = {
            ...basicTestColumn,
            sub_columns_info: {
                repeats: 3,
                repeat_item_handling: '横持ち',
                repeat_suffix_rule: ['aaa', 'bbb', 'ccc'],
                sub_columns: [{
                    "seq": 1,
                    "sub_seq": "a",

                    "is_pk": false,
                    "column_name_jp": "繰り返し列１",
                    "column_name_en": "repeat_column_1",
                    "start_pos": 1,
                    "bytes": 11,
                    "bytes_total": 11,
                    "db_column_type": "string",
                    "db_column_length": 11,
                    "db_column_notnull": true,
                    "padding_character": "",
                    "comment": "",
                },],
            },
        };

        const { yokomochiColumns: result, nextColumnTypeSeq } = getYokomochiColumns(column, 40);
    
        expect(result).toHaveLength(3);
        expect(result[0].columnNameJp).toBe('繰り返し列１_aaa');
        expect(result[0].columnNameEn).toBe('repeat_column_1_aaa');
        expect(result[0].columnTypeSeq).toBe(40);
        expect(result[1].columnNameJp).toBe('繰り返し列１_bbb');
        expect(result[1].columnNameEn).toBe('repeat_column_1_bbb');
        expect(result[1].columnTypeSeq).toBe(41);
        expect(result[2].columnNameJp).toBe('繰り返し列１_ccc');
        expect(result[2].columnNameEn).toBe('repeat_column_1_ccc');
        expect(result[2].columnTypeSeq).toBe(42);
        expect(nextColumnTypeSeq).toBe(43);
    });
});


