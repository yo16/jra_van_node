-- オッズ1（単複枠）.<枠連オッズ> 
CREATE TABLE IF NOT EXISTS OddsFrame_BracketQuinellaOdds (
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
    -- 組番 
    combinationBracketQuinella INTEGER NOT NULL,
    -- オッズ 
    oddsBracketQuinella INTEGER NULL,
    -- 人気順 
    popularityBracketQuinella INTEGER NULL,
    -- PRIMARY KEY
    PRIMARY KEY (eventYear, eventMonthDay, raceCourseCode, eventRound, eventDay, raceNumber, announcementDateTime, seq)
);
