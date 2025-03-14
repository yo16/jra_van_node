-- 発走時刻変更
CREATE TABLE IF NOT EXISTS StartTimeChange (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 開催年 
    eventYear TEXT NULL,
    -- 開催月日 
    eventMonthDay TEXT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    eventDay INTEGER NULL,
    -- レース番号 
    raceNumber INTEGER NULL,
    -- 発表月日時分 
    announcementDateTime TEXT NULL,
    -- 変更後 発走時刻 
    newStartTime TEXT NULL,
    -- 変更前 発走時刻 
    oldStartTime TEXT NULL,
    -- PRIMARY KEY
    PRIMARY KEY (eventYear, eventMonthDay, raceCourseCode, eventRound, eventDay, raceNumber)
);
