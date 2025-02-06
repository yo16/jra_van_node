-- 馬主マスタ NoPK
CREATE TABLE IF NOT EXISTS OwnerMaster_NoPK (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 馬主コード 
    ownerCode TEXT NULL,
    -- 馬主名(法人格有) 
    ownerNameWithCorp TEXT NULL,
    -- 馬主名(法人格無) 
    ownerNameWithoutCorp TEXT NULL,
    -- 馬主名半角ｶﾅ 
    ownerNameKana TEXT NULL,
    -- 馬主名欧字 
    ownerNameEng TEXT NULL,
    -- 服色標示 
    jockeyUniformColor TEXT NULL,
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
