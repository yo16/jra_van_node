-- 競走馬除外情報
CREATE TABLE HorseExclusionInfo (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 開催年 
    eventYear TEXT NOT NULL,
    -- 開催月日 
    eventMonthDay TEXT NOT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    eventDay INTEGER NOT NULL,
    -- レース番号 
    raceNumber INTEGER NOT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NOT NULL,
    -- 出馬投票受付順番 
    entryOrder INTEGER NOT NULL,
    -- 出走区分 
    entryCategory TEXT NOT NULL,
    -- 除外状態区分 
    exclusionStatus TEXT NOT NULL
);
