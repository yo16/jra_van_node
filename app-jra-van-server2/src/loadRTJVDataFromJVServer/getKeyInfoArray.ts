/*
    DBに接続して、startDate以降のレース情報を取得する
    キー情報：YYYYMMDDJJKKHHRR
        YYYY: 年
        MM: 月
        DD: 日
        JJ: 場コード、開催場所
        KK: 回次
        HH: 日次
        RR: レース番号
*/

import sqlite3 from "sqlite3";
import { open } from "sqlite";
import { DB_PATH } from "../const.js";


export async function getKeyInfoArray(
    startDate: string
): Promise<string[]> {
    // データベースを開く
    const db = await open({
        filename: DB_PATH, // SQLiteファイルのパス
        driver: sqlite3.Database,
    });

    // クエリを作成
    const query = getQuery(startDate);
    //console.log(query);

    // データを取得
    const rows = await db.all(query);
    //console.log(rows);

    await db.close();

    return rows.map((row) => row.formatted_race_info);
}



function getQuery(startDate: string) {
    return `
        SELECT
            rd.eventYear || 
            substr('00' || rd.eventMonthDay, -4, 4) || 
            rd.raceCourseCode || 
            substr('00' || rd.eventRound, -2, 2) || 
            substr('00' || rd.eventDay, -2, 2) || 
            substr('00' || rd.raceNumber, -2, 2) AS formatted_race_info
        FROM
            RaceDetail rd
        WHERE
            rd.eventYear || substr('00' || rd.eventMonthDay, -4, 4) >= '${startDate}'
        ORDER BY
            rd.eventYear,
            rd.eventMonthDay,
            rd.raceCourseCode,
            rd.eventRound,
            rd.eventDay,
            rd.raceNumber
        ;
    `;
}

