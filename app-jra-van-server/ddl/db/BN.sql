-- 馬主マスタ
CREATE TABLE OwnerMaster (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 馬主コード 
    ownerCode TEXT NOT NULL,
    -- 馬主名(法人格有) 
    ownerNameWithCorp TEXT NOT NULL,
    -- 馬主名(法人格無) 
    ownerNameWithoutCorp TEXT NOT NULL,
    -- 馬主名半角ｶﾅ 
    ownerNameKana TEXT NOT NULL,
    -- 馬主名欧字 
    ownerNameEng TEXT NOT NULL,
    -- 服色標示 
    jockeyUniformColor TEXT NOT NULL,
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
