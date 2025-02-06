-- 競走馬除外情報 NoPK
CREATE TABLE IF NOT EXISTS HorseExclusionInfo_NoPK (
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
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- 出馬投票受付順番 
    entryOrder INTEGER NULL,
    -- 出走区分 
    entryCategory TEXT NULL,
    -- 除外状態区分 
    exclusionStatus TEXT NULL
);
