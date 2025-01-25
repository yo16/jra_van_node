-- 対戦型データマイニング予想
CREATE TABLE MatchBasedDataMiningForecast (
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
    -- データ作成時分 
    creationTime TEXT NOT NULL
);
