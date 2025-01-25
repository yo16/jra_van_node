-- 騎手変更
CREATE TABLE JockeyChange (
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
    -- 発表月日時分 
    announcementDateTime TEXT NOT NULL,
    -- 馬番 
    horseNumber INTEGER NOT NULL,
    -- 馬名 
    horseName TEXT NOT NULL,
    -- 負担重量 
    carriedWeight REAL NOT NULL,
    -- 騎手コード 
    jockeyCode TEXT NOT NULL,
    -- 騎手見習コード 
    apprenticeJockeyCode TEXT NOT NULL,
    -- 負担重量 
    carriedWeight REAL NOT NULL,
    -- 騎手コード 
    jockeyCode TEXT NOT NULL,
    -- 騎手見習コード 
    apprenticeJockeyCode TEXT NOT NULL
);
