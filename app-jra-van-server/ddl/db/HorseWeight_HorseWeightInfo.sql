-- 馬体重.<馬体重情報> 
CREATE TABLE IF NOT EXISTS HorseWeight_HorseWeightInfo (
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
    -- PRIMARY KEY
    PRIMARY KEY (eventYear, eventMonthDay, raceCourseCode, eventRound, eventDay, raceNumber, seq)
);
