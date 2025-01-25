-- 票数6（3連単）
CREATE TABLE VoteCountTrifecta (
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
    -- 登録頭数 
    registeredHorsesCount INTEGER NOT NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NOT NULL,
    -- 発売フラグ　3連単 
    saleFlagTrifecta TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_1 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_2 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_3 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_4 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_5 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_6 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_7 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_8 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_9 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_10 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_11 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_12 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_13 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_14 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_15 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_16 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_17 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_18 TEXT NOT NULL,
    -- 3連単票数合計 
    totalTrifectaVotes INTEGER NOT NULL,
    -- 3連単返還票数合計 
    totalTrifectaRefundVotes INTEGER NOT NULL
);
