-- オッズ2（馬連）
CREATE TABLE OddsExacta (
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
    -- 登録頭数 
    registeredHorsesCount INTEGER NOT NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NOT NULL,
    -- 発売フラグ　馬連 
    saleFlagQuinella TEXT NOT NULL,
    -- 馬連票数合計 
    totalQuinellaVotes INTEGER NOT NULL
);
