-- 票数１.<馬連票数> 
CREATE TABLE IF NOT EXISTS VoteCount1_QuinellaVotes (
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
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combinationQuinella INTEGER NOT NULL,
    -- 票数 
    votesQuinella INTEGER NULL,
    -- 人気順 
    popularityQuinella INTEGER NULL,
    -- PRIMARY KEY
    PRIMARY KEY (eventYear, eventMonthDay, raceCourseCode, eventRound, eventDay, raceNumber, seq)
);
