-- 票数6（3連単）
CREATE TABLE VoteCountTrifecta (
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
    -- 登録頭数 
    registeredHorsesCount INTEGER NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NULL,
    -- 発売フラグ　3連単 
    saleFlagTrifecta TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_1 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_2 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_3 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_4 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_5 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_6 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_7 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_8 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_9 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_10 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_11 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_12 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_13 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_14 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_15 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_16 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_17 TEXT NULL,
    -- 返還馬番情報(馬番01～18) 
    refundHorseNumberInfo_18 TEXT NULL,
    -- 3連単票数合計 
    totalTrifectaVotes INTEGER NULL,
    -- 3連単返還票数合計 
    totalTrifectaRefundVotes INTEGER NULL
);
