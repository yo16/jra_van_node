-- オッズ1（単複枠）.<単勝オッズ> NoPK 
CREATE TABLE IF NOT EXISTS OddsFrame_WinOdds_NoPK (
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
    horseNumberWin INTEGER NOT NULL,
    -- オッズ 
    oddsWin INTEGER NULL,
    -- 人気順 
    popularityWin INTEGER NULL
);
