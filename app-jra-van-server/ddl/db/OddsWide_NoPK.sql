-- オッズ3（ワイド） NoPK
CREATE TABLE IF NOT EXISTS OddsWide_NoPK (
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
    -- 登録頭数 
    registeredHorsesCount INTEGER NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NULL,
    -- 発売フラグ　ワイド 
    saleFlagWide TEXT NULL,
    -- ワイド票数合計 
    totalWideVotes INTEGER NULL
);
