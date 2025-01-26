-- 重勝式(WIN5)
CREATE TABLE IF NOT EXISTS Win5 (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 開催年 
    eventYear TEXT NULL,
    -- 開催月日 
    eventMonthDay TEXT NULL,
    -- 競馬場コード 
    RaceInfo_1_raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    RaceInfo_1_eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    RaceInfo_1_eventDay INTEGER NULL,
    -- レース番号 
    RaceInfo_1_raceNumber INTEGER NULL,
    -- 競馬場コード 
    RaceInfo_2_raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    RaceInfo_2_eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    RaceInfo_2_eventDay INTEGER NULL,
    -- レース番号 
    RaceInfo_2_raceNumber INTEGER NULL,
    -- 競馬場コード 
    RaceInfo_3_raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    RaceInfo_3_eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    RaceInfo_3_eventDay INTEGER NULL,
    -- レース番号 
    RaceInfo_3_raceNumber INTEGER NULL,
    -- 競馬場コード 
    RaceInfo_4_raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    RaceInfo_4_eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    RaceInfo_4_eventDay INTEGER NULL,
    -- レース番号 
    RaceInfo_4_raceNumber INTEGER NULL,
    -- 競馬場コード 
    RaceInfo_5_raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    RaceInfo_5_eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    RaceInfo_5_eventDay INTEGER NULL,
    -- レース番号 
    RaceInfo_5_raceNumber INTEGER NULL,
    -- 重勝式発売票数 
    votes INTEGER NULL,
    -- 有効票数 
    ValidVotesInfo_1 INTEGER NULL,
    -- 有効票数 
    ValidVotesInfo_2 INTEGER NULL,
    -- 有効票数 
    ValidVotesInfo_3 INTEGER NULL,
    -- 有効票数 
    ValidVotesInfo_4 INTEGER NULL,
    -- 有効票数 
    ValidVotesInfo_5 INTEGER NULL,
    -- 返還フラグ 
    refundFlag TEXT NULL,
    -- 不成立フラグ 
    invalidFlag TEXT NULL,
    -- 的中無フラグ 
    noWinFlag TEXT NULL,
    -- キャリーオーバー金額初期 
    initialCarryoverAmount INTEGER NULL,
    -- キャリーオーバー金額残高 
    remainingCarryoverAmount INTEGER NULL
);
