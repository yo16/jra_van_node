-- オッズ1（単複枠）.<複勝オッズ> 
CREATE TABLE IF NOT EXISTS OddsFrame_PlaceOdds (
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
    -- SEQ
    seq INTEGER NOT NULL,
    -- 馬番 
    horseNumberPlace INTEGER NOT NULL,
    -- 最低オッズ 
    minOddsPlace INTEGER NULL,
    -- 最高オッズ 
    maxOddsPlace INTEGER NULL,
    -- 人気順 
    popularityPlace INTEGER NULL,
    -- PRIMARY KEY
    PRIMARY KEY (eventYear, eventMonthDay, raceCourseCode, eventRound, eventDay, raceNumber, announcementDateTime, seq)
);
