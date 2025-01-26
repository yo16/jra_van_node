-- 出走取消・競走除外
CREATE TABLE IF NOT EXISTS RaceCancellation (
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
    -- 馬番 
    horseNumber INTEGER NULL,
    -- 馬名 
    horseName TEXT NULL,
    -- 事由区分 
    reasonCategory TEXT NULL
);
