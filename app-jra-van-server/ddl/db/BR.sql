-- 生産者マスタ
CREATE TABLE BreederMaster (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 生産者コード 
    producerCode TEXT NOT NULL,
    -- 生産者名(法人格有) 
    producerNameWithCorp TEXT NOT NULL,
    -- 生産者名(法人格無) 
    producerNameWithoutCorp TEXT NOT NULL,
    -- 生産者名半角ｶﾅ 
    producerNameKana TEXT NOT NULL,
    -- 生産者名欧字 
    producerNameEng TEXT NOT NULL,
    -- 生産者住所自治省名 
    producerAddressPrefecture TEXT NOT NULL,
    -- 設定年 
    CurrentAndCumulativeInfo_current_settingYear TEXT NOT NULL,
    -- 本賞金合計 
    CurrentAndCumulativeInfo_current_mainPrizeMoneyTotal INTEGER NOT NULL,
    -- 付加賞金合計 
    CurrentAndCumulativeInfo_current_additionalPrizeMoneyTotal INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_1 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_2 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_3 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_4 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_5 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_6 INTEGER NOT NULL,
    -- 設定年 
    CurrentAndCumulativeInfo_cumulative_settingYear TEXT NOT NULL,
    -- 本賞金合計 
    CurrentAndCumulativeInfo_cumulative_mainPrizeMoneyTotal INTEGER NOT NULL,
    -- 付加賞金合計 
    CurrentAndCumulativeInfo_cumulative_additionalPrizeMoneyTotal INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_1 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_2 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_3 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_4 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_5 INTEGER NOT NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_6 INTEGER NOT NULL
);
