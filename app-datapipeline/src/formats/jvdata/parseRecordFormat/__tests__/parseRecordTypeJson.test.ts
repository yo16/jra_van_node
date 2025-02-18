import {
    parseRecordTypeJson
 } from '../parseRecordTypeJson.js';
 import { TableColumnTypeMap } from '../types.js';


describe('parseRecordTypeJson', () => {
    it("基本的な動作", () => {
        const result = parseRecordTypeJson();

        // TableColumnTypeMap のインスタンスであることを確認
        expect(typeof result).toBe('object');
        expect(result).not.toBeNull();

        // キーとして、"TK"があることを確認
        expect(result).toHaveProperty('TK');

        // キーの数が38であることを確認
        expect(Object.keys(result).length).toBe(38);

        //expect(result).toBeInstanceOf(TableColumnTypeMap)
    });
});
