-- 重勝式(WIN5)
CREATE TABLE Win5 (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 開催年 
    eventYear TEXT NOT NULL,
    -- 開催月日 
    eventMonthDay TEXT NOT NULL,
    -- 競馬場コード 
    RaceInfo_1_raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    RaceInfo_1_eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    RaceInfo_1_eventDay INTEGER NOT NULL,
    -- レース番号 
    RaceInfo_1_raceNumber INTEGER NOT NULL,
    -- 競馬場コード 
    RaceInfo_2_raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    RaceInfo_2_eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    RaceInfo_2_eventDay INTEGER NOT NULL,
    -- レース番号 
    RaceInfo_2_raceNumber INTEGER NOT NULL,
    -- 競馬場コード 
    RaceInfo_3_raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    RaceInfo_3_eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    RaceInfo_3_eventDay INTEGER NOT NULL,
    -- レース番号 
    RaceInfo_3_raceNumber INTEGER NOT NULL,
    -- 競馬場コード 
    RaceInfo_4_raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    RaceInfo_4_eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    RaceInfo_4_eventDay INTEGER NOT NULL,
    -- レース番号 
    RaceInfo_4_raceNumber INTEGER NOT NULL,
    -- 競馬場コード 
    RaceInfo_5_raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    RaceInfo_5_eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    RaceInfo_5_eventDay INTEGER NOT NULL,
    -- レース番号 
    RaceInfo_5_raceNumber INTEGER NOT NULL,
    -- 重勝式発売票数 
    votes INTEGER NOT NULL,
    -- 有効票数 
    ValidVotesInfo_1 INTEGER NOT NULL,
    -- 有効票数 
    ValidVotesInfo_2 INTEGER NOT NULL,
    -- 有効票数 
    ValidVotesInfo_3 INTEGER NOT NULL,
    -- 有効票数 
    ValidVotesInfo_4 INTEGER NOT NULL,
    -- 有効票数 
    ValidVotesInfo_5 INTEGER NOT NULL,
    -- 返還フラグ 
    refundFlag TEXT NOT NULL,
    -- 不成立フラグ 
    invalidFlag TEXT NOT NULL,
    -- 的中無フラグ 
    noWinFlag TEXT NOT NULL,
    -- キャリーオーバー金額初期 
    initialCarryoverAmount INTEGER NOT NULL,
    -- キャリーオーバー金額残高 
    remainingCarryoverAmount INTEGER NOT NULL
);
