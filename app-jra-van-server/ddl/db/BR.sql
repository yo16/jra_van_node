-- 生産者マスタ
CREATE TABLE BreederMaster (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 生産者コード 
    producerCode TEXT NULL,
    -- 生産者名(法人格有) 
    producerNameWithCorp TEXT NULL,
    -- 生産者名(法人格無) 
    producerNameWithoutCorp TEXT NULL,
    -- 生産者名半角ｶﾅ 
    producerNameKana TEXT NULL,
    -- 生産者名欧字 
    producerNameEng TEXT NULL,
    -- 生産者住所自治省名 
    producerAddressPrefecture TEXT NULL,
    -- 設定年 
    CurrentAndCumulativeInfo_current_settingYear TEXT NULL,
    -- 本賞金合計 
    CurrentAndCumulativeInfo_current_mainPrizeMoneyTotal INTEGER NULL,
    -- 付加賞金合計 
    CurrentAndCumulativeInfo_current_additionalPrizeMoneyTotal INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_1 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_2 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_3 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_4 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_5 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_current_PlacementCount_6 INTEGER NULL,
    -- 設定年 
    CurrentAndCumulativeInfo_cumulative_settingYear TEXT NULL,
    -- 本賞金合計 
    CurrentAndCumulativeInfo_cumulative_mainPrizeMoneyTotal INTEGER NULL,
    -- 付加賞金合計 
    CurrentAndCumulativeInfo_cumulative_additionalPrizeMoneyTotal INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_1 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_2 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_3 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_4 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_5 INTEGER NULL,
    -- 着回数 
    CurrentAndCumulativeInfo_cumulative_PlacementCount_6 INTEGER NULL
);
