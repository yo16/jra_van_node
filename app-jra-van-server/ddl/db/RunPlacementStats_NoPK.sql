-- 出走別着度数 NoPK
CREATE TABLE IF NOT EXISTS RunPlacementStats_NoPK (
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
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- 平地本賞金累計 
    flatMainPrizeMonayCumulative INTEGER NULL,
    -- 障害本賞金累計 
    obstacleMainPrizeMoneyCumulative INTEGER NULL,
    -- 平地付加賞金累計 
    flatAdditinalPrizeMoneyCumulative INTEGER NULL,
    -- 障害付加賞金累計 
    obstacleAdditionalPrizeMoneyCumulative INTEGER NULL,
    -- 平地収得賞金累計 
    flatEarningsPrizeMoneyCumulative INTEGER NULL,
    -- 障害収得賞金累計 
    obstacleEarningsPrizeMoneyCumulative INTEGER NULL,
    -- 総合着回数 
    totalPlacementCount_1 INTEGER NULL,
    -- 総合着回数 
    totalPlacementCount_2 INTEGER NULL,
    -- 総合着回数 
    totalPlacementCount_3 INTEGER NULL,
    -- 総合着回数 
    totalPlacementCount_4 INTEGER NULL,
    -- 総合着回数 
    totalPlacementCount_5 INTEGER NULL,
    -- 総合着回数 
    totalPlacementCount_6 INTEGER NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_1 INTEGER NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_2 INTEGER NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_3 INTEGER NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_4 INTEGER NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_5 INTEGER NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_6 INTEGER NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_1 INTEGER NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_2 INTEGER NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_3 INTEGER NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_4 INTEGER NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_5 INTEGER NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_6 INTEGER NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_1 INTEGER NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_2 INTEGER NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_3 INTEGER NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_4 INTEGER NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_5 INTEGER NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_6 INTEGER NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_1 INTEGER NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_2 INTEGER NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_3 INTEGER NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_4 INTEGER NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_5 INTEGER NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_6 INTEGER NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_1 INTEGER NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_2 INTEGER NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_3 INTEGER NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_4 INTEGER NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_5 INTEGER NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_6 INTEGER NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_1 INTEGER NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_2 INTEGER NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_3 INTEGER NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_4 INTEGER NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_5 INTEGER NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_6 INTEGER NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_1 INTEGER NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_2 INTEGER NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_3 INTEGER NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_4 INTEGER NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_5 INTEGER NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_6 INTEGER NULL,
    -- 障害・着回数 
    obstaclePlacementCount_1 INTEGER NULL,
    -- 障害・着回数 
    obstaclePlacementCount_2 INTEGER NULL,
    -- 障害・着回数 
    obstaclePlacementCount_3 INTEGER NULL,
    -- 障害・着回数 
    obstaclePlacementCount_4 INTEGER NULL,
    -- 障害・着回数 
    obstaclePlacementCount_5 INTEGER NULL,
    -- 障害・着回数 
    obstaclePlacementCount_6 INTEGER NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_1 INTEGER NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_2 INTEGER NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_3 INTEGER NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_4 INTEGER NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_5 INTEGER NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_6 INTEGER NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_1 INTEGER NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_2 INTEGER NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_3 INTEGER NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_4 INTEGER NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_5 INTEGER NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_6 INTEGER NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_1 INTEGER NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_2 INTEGER NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_3 INTEGER NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_4 INTEGER NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_5 INTEGER NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_6 INTEGER NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_1 INTEGER NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_2 INTEGER NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_3 INTEGER NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_4 INTEGER NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_5 INTEGER NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_6 INTEGER NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_1 INTEGER NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_2 INTEGER NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_3 INTEGER NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_4 INTEGER NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_5 INTEGER NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_6 INTEGER NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_1 INTEGER NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_2 INTEGER NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_3 INTEGER NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_4 INTEGER NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_5 INTEGER NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_6 INTEGER NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_1 INTEGER NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_2 INTEGER NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_3 INTEGER NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_4 INTEGER NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_5 INTEGER NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_6 INTEGER NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_1 INTEGER NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_2 INTEGER NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_3 INTEGER NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_4 INTEGER NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_5 INTEGER NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_6 INTEGER NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_1 INTEGER NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_2 INTEGER NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_3 INTEGER NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_4 INTEGER NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_5 INTEGER NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_6 INTEGER NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_1 INTEGER NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_2 INTEGER NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_3 INTEGER NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_4 INTEGER NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_5 INTEGER NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_6 INTEGER NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_1 INTEGER NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_2 INTEGER NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_3 INTEGER NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_4 INTEGER NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_5 INTEGER NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_6 INTEGER NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_1 INTEGER NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_2 INTEGER NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_3 INTEGER NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_4 INTEGER NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_5 INTEGER NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_6 INTEGER NULL,
    -- 芝1200以下・着回数 
    turf1200OrLessPlacementCounts_1 INTEGER NULL,
    -- 芝1200以下・着回数 
    turf1200OrLessPlacementCounts_2 INTEGER NULL,
    -- 芝1200以下・着回数 
    turf1200OrLessPlacementCounts_3 INTEGER NULL,
    -- 芝1200以下・着回数 
    turf1200OrLessPlacementCounts_4 INTEGER NULL,
    -- 芝1200以下・着回数 
    turf1200OrLessPlacementCounts_5 INTEGER NULL,
    -- 芝1200以下・着回数 
    turf1200OrLessPlacementCounts_6 INTEGER NULL,
    -- 芝1201-1400・着回数 
    turf1201To1400PlacementCounts_1 INTEGER NULL,
    -- 芝1201-1400・着回数 
    turf1201To1400PlacementCounts_2 INTEGER NULL,
    -- 芝1201-1400・着回数 
    turf1201To1400PlacementCounts_3 INTEGER NULL,
    -- 芝1201-1400・着回数 
    turf1201To1400PlacementCounts_4 INTEGER NULL,
    -- 芝1201-1400・着回数 
    turf1201To1400PlacementCounts_5 INTEGER NULL,
    -- 芝1201-1400・着回数 
    turf1201To1400PlacementCounts_6 INTEGER NULL,
    -- 芝1401-1600・着回数 
    turf1401To1600PlacementCounts_1 INTEGER NULL,
    -- 芝1401-1600・着回数 
    turf1401To1600PlacementCounts_2 INTEGER NULL,
    -- 芝1401-1600・着回数 
    turf1401To1600PlacementCounts_3 INTEGER NULL,
    -- 芝1401-1600・着回数 
    turf1401To1600PlacementCounts_4 INTEGER NULL,
    -- 芝1401-1600・着回数 
    turf1401To1600PlacementCounts_5 INTEGER NULL,
    -- 芝1401-1600・着回数 
    turf1401To1600PlacementCounts_6 INTEGER NULL,
    -- 芝1601-1800・着回数 
    turf1601To1800PlacementCounts_1 INTEGER NULL,
    -- 芝1601-1800・着回数 
    turf1601To1800PlacementCounts_2 INTEGER NULL,
    -- 芝1601-1800・着回数 
    turf1601To1800PlacementCounts_3 INTEGER NULL,
    -- 芝1601-1800・着回数 
    turf1601To1800PlacementCounts_4 INTEGER NULL,
    -- 芝1601-1800・着回数 
    turf1601To1800PlacementCounts_5 INTEGER NULL,
    -- 芝1601-1800・着回数 
    turf1601To1800PlacementCounts_6 INTEGER NULL,
    -- 芝1801-2000・着回数 
    turf1801To2000PlacementCounts_1 INTEGER NULL,
    -- 芝1801-2000・着回数 
    turf1801To2000PlacementCounts_2 INTEGER NULL,
    -- 芝1801-2000・着回数 
    turf1801To2000PlacementCounts_3 INTEGER NULL,
    -- 芝1801-2000・着回数 
    turf1801To2000PlacementCounts_4 INTEGER NULL,
    -- 芝1801-2000・着回数 
    turf1801To2000PlacementCounts_5 INTEGER NULL,
    -- 芝1801-2000・着回数 
    turf1801To2000PlacementCounts_6 INTEGER NULL,
    -- 芝2001-2200・着回数 
    turf2001To2200PlacementCounts_1 INTEGER NULL,
    -- 芝2001-2200・着回数 
    turf2001To2200PlacementCounts_2 INTEGER NULL,
    -- 芝2001-2200・着回数 
    turf2001To2200PlacementCounts_3 INTEGER NULL,
    -- 芝2001-2200・着回数 
    turf2001To2200PlacementCounts_4 INTEGER NULL,
    -- 芝2001-2200・着回数 
    turf2001To2200PlacementCounts_5 INTEGER NULL,
    -- 芝2001-2200・着回数 
    turf2001To2200PlacementCounts_6 INTEGER NULL,
    -- 芝2201-2400・着回数 
    turf2201To2400PlacementCounts_1 INTEGER NULL,
    -- 芝2201-2400・着回数 
    turf2201To2400PlacementCounts_2 INTEGER NULL,
    -- 芝2201-2400・着回数 
    turf2201To2400PlacementCounts_3 INTEGER NULL,
    -- 芝2201-2400・着回数 
    turf2201To2400PlacementCounts_4 INTEGER NULL,
    -- 芝2201-2400・着回数 
    turf2201To2400PlacementCounts_5 INTEGER NULL,
    -- 芝2201-2400・着回数 
    turf2201To2400PlacementCounts_6 INTEGER NULL,
    -- 芝2401-2800・着回数 
    turf2401To2800PlacementCounts_1 INTEGER NULL,
    -- 芝2401-2800・着回数 
    turf2401To2800PlacementCounts_2 INTEGER NULL,
    -- 芝2401-2800・着回数 
    turf2401To2800PlacementCounts_3 INTEGER NULL,
    -- 芝2401-2800・着回数 
    turf2401To2800PlacementCounts_4 INTEGER NULL,
    -- 芝2401-2800・着回数 
    turf2401To2800PlacementCounts_5 INTEGER NULL,
    -- 芝2401-2800・着回数 
    turf2401To2800PlacementCounts_6 INTEGER NULL,
    -- 芝2801以上・着回数 
    turf2801OrMorePlacementCounts_1 INTEGER NULL,
    -- 芝2801以上・着回数 
    turf2801OrMorePlacementCounts_2 INTEGER NULL,
    -- 芝2801以上・着回数 
    turf2801OrMorePlacementCounts_3 INTEGER NULL,
    -- 芝2801以上・着回数 
    turf2801OrMorePlacementCounts_4 INTEGER NULL,
    -- 芝2801以上・着回数 
    turf2801OrMorePlacementCounts_5 INTEGER NULL,
    -- 芝2801以上・着回数 
    turf2801OrMorePlacementCounts_6 INTEGER NULL,
    -- ダ1200以下・着回数 
    dirt1200OrLessPlacementCount_1 INTEGER NULL,
    -- ダ1200以下・着回数 
    dirt1200OrLessPlacementCount_2 INTEGER NULL,
    -- ダ1200以下・着回数 
    dirt1200OrLessPlacementCount_3 INTEGER NULL,
    -- ダ1200以下・着回数 
    dirt1200OrLessPlacementCount_4 INTEGER NULL,
    -- ダ1200以下・着回数 
    dirt1200OrLessPlacementCount_5 INTEGER NULL,
    -- ダ1200以下・着回数 
    dirt1200OrLessPlacementCount_6 INTEGER NULL,
    -- ダ1201-1400・着回数 
    dirt1201To1400PlacementCount_1 INTEGER NULL,
    -- ダ1201-1400・着回数 
    dirt1201To1400PlacementCount_2 INTEGER NULL,
    -- ダ1201-1400・着回数 
    dirt1201To1400PlacementCount_3 INTEGER NULL,
    -- ダ1201-1400・着回数 
    dirt1201To1400PlacementCount_4 INTEGER NULL,
    -- ダ1201-1400・着回数 
    dirt1201To1400PlacementCount_5 INTEGER NULL,
    -- ダ1201-1400・着回数 
    dirt1201To1400PlacementCount_6 INTEGER NULL,
    -- ダ1401-1600・着回数 
    dirt1401To1600PlacementCount_1 INTEGER NULL,
    -- ダ1401-1600・着回数 
    dirt1401To1600PlacementCount_2 INTEGER NULL,
    -- ダ1401-1600・着回数 
    dirt1401To1600PlacementCount_3 INTEGER NULL,
    -- ダ1401-1600・着回数 
    dirt1401To1600PlacementCount_4 INTEGER NULL,
    -- ダ1401-1600・着回数 
    dirt1401To1600PlacementCount_5 INTEGER NULL,
    -- ダ1401-1600・着回数 
    dirt1401To1600PlacementCount_6 INTEGER NULL,
    -- ダ1601-1800・着回数 
    dirt1601To1800PlacementCount_1 INTEGER NULL,
    -- ダ1601-1800・着回数 
    dirt1601To1800PlacementCount_2 INTEGER NULL,
    -- ダ1601-1800・着回数 
    dirt1601To1800PlacementCount_3 INTEGER NULL,
    -- ダ1601-1800・着回数 
    dirt1601To1800PlacementCount_4 INTEGER NULL,
    -- ダ1601-1800・着回数 
    dirt1601To1800PlacementCount_5 INTEGER NULL,
    -- ダ1601-1800・着回数 
    dirt1601To1800PlacementCount_6 INTEGER NULL,
    -- ダ1801-2000・着回数 
    dirt1801To2000PlacementCount_1 INTEGER NULL,
    -- ダ1801-2000・着回数 
    dirt1801To2000PlacementCount_2 INTEGER NULL,
    -- ダ1801-2000・着回数 
    dirt1801To2000PlacementCount_3 INTEGER NULL,
    -- ダ1801-2000・着回数 
    dirt1801To2000PlacementCount_4 INTEGER NULL,
    -- ダ1801-2000・着回数 
    dirt1801To2000PlacementCount_5 INTEGER NULL,
    -- ダ1801-2000・着回数 
    dirt1801To2000PlacementCount_6 INTEGER NULL,
    -- ダ2001-2200・着回数 
    dirt2001To2200PlacementCount_1 INTEGER NULL,
    -- ダ2001-2200・着回数 
    dirt2001To2200PlacementCount_2 INTEGER NULL,
    -- ダ2001-2200・着回数 
    dirt2001To2200PlacementCount_3 INTEGER NULL,
    -- ダ2001-2200・着回数 
    dirt2001To2200PlacementCount_4 INTEGER NULL,
    -- ダ2001-2200・着回数 
    dirt2001To2200PlacementCount_5 INTEGER NULL,
    -- ダ2001-2200・着回数 
    dirt2001To2200PlacementCount_6 INTEGER NULL,
    -- ダ2201-2400・着回数 
    dirt2201To2400PlacementCount_1 INTEGER NULL,
    -- ダ2201-2400・着回数 
    dirt2201To2400PlacementCount_2 INTEGER NULL,
    -- ダ2201-2400・着回数 
    dirt2201To2400PlacementCount_3 INTEGER NULL,
    -- ダ2201-2400・着回数 
    dirt2201To2400PlacementCount_4 INTEGER NULL,
    -- ダ2201-2400・着回数 
    dirt2201To2400PlacementCount_5 INTEGER NULL,
    -- ダ2201-2400・着回数 
    dirt2201To2400PlacementCount_6 INTEGER NULL,
    -- ダ2401-2800・着回数 
    dirt2401To2800PlacementCount_1 INTEGER NULL,
    -- ダ2401-2800・着回数 
    dirt2401To2800PlacementCount_2 INTEGER NULL,
    -- ダ2401-2800・着回数 
    dirt2401To2800PlacementCount_3 INTEGER NULL,
    -- ダ2401-2800・着回数 
    dirt2401To2800PlacementCount_4 INTEGER NULL,
    -- ダ2401-2800・着回数 
    dirt2401To2800PlacementCount_5 INTEGER NULL,
    -- ダ2401-2800・着回数 
    dirt2401To2800PlacementCount_6 INTEGER NULL,
    -- ダ2801以上・着回数 
    dirt2801OrMorePlacementCount_1 INTEGER NULL,
    -- ダ2801以上・着回数 
    dirt2801OrMorePlacementCount_2 INTEGER NULL,
    -- ダ2801以上・着回数 
    dirt2801OrMorePlacementCount_3 INTEGER NULL,
    -- ダ2801以上・着回数 
    dirt2801OrMorePlacementCount_4 INTEGER NULL,
    -- ダ2801以上・着回数 
    dirt2801OrMorePlacementCount_5 INTEGER NULL,
    -- ダ2801以上・着回数 
    dirt2801OrMorePlacementCount_6 INTEGER NULL,
    -- 札幌芝・着回数 
    sapporoTurfPlacementCounts_1 INTEGER NULL,
    -- 札幌芝・着回数 
    sapporoTurfPlacementCounts_2 INTEGER NULL,
    -- 札幌芝・着回数 
    sapporoTurfPlacementCounts_3 INTEGER NULL,
    -- 札幌芝・着回数 
    sapporoTurfPlacementCounts_4 INTEGER NULL,
    -- 札幌芝・着回数 
    sapporoTurfPlacementCounts_5 INTEGER NULL,
    -- 札幌芝・着回数 
    sapporoTurfPlacementCounts_6 INTEGER NULL,
    -- 函館芝・着回数 
    hakodateTurfPlacementCount_1 INTEGER NULL,
    -- 函館芝・着回数 
    hakodateTurfPlacementCount_2 INTEGER NULL,
    -- 函館芝・着回数 
    hakodateTurfPlacementCount_3 INTEGER NULL,
    -- 函館芝・着回数 
    hakodateTurfPlacementCount_4 INTEGER NULL,
    -- 函館芝・着回数 
    hakodateTurfPlacementCount_5 INTEGER NULL,
    -- 函館芝・着回数 
    hakodateTurfPlacementCount_6 INTEGER NULL,
    -- 福島芝・着回数 
    fukushimaTurfPlacementCounts_1 INTEGER NULL,
    -- 福島芝・着回数 
    fukushimaTurfPlacementCounts_2 INTEGER NULL,
    -- 福島芝・着回数 
    fukushimaTurfPlacementCounts_3 INTEGER NULL,
    -- 福島芝・着回数 
    fukushimaTurfPlacementCounts_4 INTEGER NULL,
    -- 福島芝・着回数 
    fukushimaTurfPlacementCounts_5 INTEGER NULL,
    -- 福島芝・着回数 
    fukushimaTurfPlacementCounts_6 INTEGER NULL,
    -- 新潟芝・着回数 
    niigataTurfPlacementCounts_1 INTEGER NULL,
    -- 新潟芝・着回数 
    niigataTurfPlacementCounts_2 INTEGER NULL,
    -- 新潟芝・着回数 
    niigataTurfPlacementCounts_3 INTEGER NULL,
    -- 新潟芝・着回数 
    niigataTurfPlacementCounts_4 INTEGER NULL,
    -- 新潟芝・着回数 
    niigataTurfPlacementCounts_5 INTEGER NULL,
    -- 新潟芝・着回数 
    niigataTurfPlacementCounts_6 INTEGER NULL,
    -- 東京芝・着回数 
    tokyoTurfPlacementCount_1 INTEGER NULL,
    -- 東京芝・着回数 
    tokyoTurfPlacementCount_2 INTEGER NULL,
    -- 東京芝・着回数 
    tokyoTurfPlacementCount_3 INTEGER NULL,
    -- 東京芝・着回数 
    tokyoTurfPlacementCount_4 INTEGER NULL,
    -- 東京芝・着回数 
    tokyoTurfPlacementCount_5 INTEGER NULL,
    -- 東京芝・着回数 
    tokyoTurfPlacementCount_6 INTEGER NULL,
    -- 中山芝・着回数 
    nakayamaTurfPlacementCount_1 INTEGER NULL,
    -- 中山芝・着回数 
    nakayamaTurfPlacementCount_2 INTEGER NULL,
    -- 中山芝・着回数 
    nakayamaTurfPlacementCount_3 INTEGER NULL,
    -- 中山芝・着回数 
    nakayamaTurfPlacementCount_4 INTEGER NULL,
    -- 中山芝・着回数 
    nakayamaTurfPlacementCount_5 INTEGER NULL,
    -- 中山芝・着回数 
    nakayamaTurfPlacementCount_6 INTEGER NULL,
    -- 中京芝・着回数 
    chukyoTurfPlacementCount_1 INTEGER NULL,
    -- 中京芝・着回数 
    chukyoTurfPlacementCount_2 INTEGER NULL,
    -- 中京芝・着回数 
    chukyoTurfPlacementCount_3 INTEGER NULL,
    -- 中京芝・着回数 
    chukyoTurfPlacementCount_4 INTEGER NULL,
    -- 中京芝・着回数 
    chukyoTurfPlacementCount_5 INTEGER NULL,
    -- 中京芝・着回数 
    chukyoTurfPlacementCount_6 INTEGER NULL,
    -- 京都芝・着回数 
    kyotoTurfPlacementCounts_1 INTEGER NULL,
    -- 京都芝・着回数 
    kyotoTurfPlacementCounts_2 INTEGER NULL,
    -- 京都芝・着回数 
    kyotoTurfPlacementCounts_3 INTEGER NULL,
    -- 京都芝・着回数 
    kyotoTurfPlacementCounts_4 INTEGER NULL,
    -- 京都芝・着回数 
    kyotoTurfPlacementCounts_5 INTEGER NULL,
    -- 京都芝・着回数 
    kyotoTurfPlacementCounts_6 INTEGER NULL,
    -- 阪神芝・着回数 
    hanshinTurfPlacementCounts_1 INTEGER NULL,
    -- 阪神芝・着回数 
    hanshinTurfPlacementCounts_2 INTEGER NULL,
    -- 阪神芝・着回数 
    hanshinTurfPlacementCounts_3 INTEGER NULL,
    -- 阪神芝・着回数 
    hanshinTurfPlacementCounts_4 INTEGER NULL,
    -- 阪神芝・着回数 
    hanshinTurfPlacementCounts_5 INTEGER NULL,
    -- 阪神芝・着回数 
    hanshinTurfPlacementCounts_6 INTEGER NULL,
    -- 小倉芝・着回数 
    kokuraTurfPlacementCount_1 INTEGER NULL,
    -- 小倉芝・着回数 
    kokuraTurfPlacementCount_2 INTEGER NULL,
    -- 小倉芝・着回数 
    kokuraTurfPlacementCount_3 INTEGER NULL,
    -- 小倉芝・着回数 
    kokuraTurfPlacementCount_4 INTEGER NULL,
    -- 小倉芝・着回数 
    kokuraTurfPlacementCount_5 INTEGER NULL,
    -- 小倉芝・着回数 
    kokuraTurfPlacementCount_6 INTEGER NULL,
    -- 札幌ダ・着回数 
    sapporoDirtPlacementCounts_1 INTEGER NULL,
    -- 札幌ダ・着回数 
    sapporoDirtPlacementCounts_2 INTEGER NULL,
    -- 札幌ダ・着回数 
    sapporoDirtPlacementCounts_3 INTEGER NULL,
    -- 札幌ダ・着回数 
    sapporoDirtPlacementCounts_4 INTEGER NULL,
    -- 札幌ダ・着回数 
    sapporoDirtPlacementCounts_5 INTEGER NULL,
    -- 札幌ダ・着回数 
    sapporoDirtPlacementCounts_6 INTEGER NULL,
    -- 函館ダ・着回数 
    hakodateDirtPlacementCount_1 INTEGER NULL,
    -- 函館ダ・着回数 
    hakodateDirtPlacementCount_2 INTEGER NULL,
    -- 函館ダ・着回数 
    hakodateDirtPlacementCount_3 INTEGER NULL,
    -- 函館ダ・着回数 
    hakodateDirtPlacementCount_4 INTEGER NULL,
    -- 函館ダ・着回数 
    hakodateDirtPlacementCount_5 INTEGER NULL,
    -- 函館ダ・着回数 
    hakodateDirtPlacementCount_6 INTEGER NULL,
    -- 福島ダ・着回数 
    fukushimaDirtPlacementCounts_1 INTEGER NULL,
    -- 福島ダ・着回数 
    fukushimaDirtPlacementCounts_2 INTEGER NULL,
    -- 福島ダ・着回数 
    fukushimaDirtPlacementCounts_3 INTEGER NULL,
    -- 福島ダ・着回数 
    fukushimaDirtPlacementCounts_4 INTEGER NULL,
    -- 福島ダ・着回数 
    fukushimaDirtPlacementCounts_5 INTEGER NULL,
    -- 福島ダ・着回数 
    fukushimaDirtPlacementCounts_6 INTEGER NULL,
    -- 新潟ダ・着回数 
    niigataDirtPlacementCounts_1 INTEGER NULL,
    -- 新潟ダ・着回数 
    niigataDirtPlacementCounts_2 INTEGER NULL,
    -- 新潟ダ・着回数 
    niigataDirtPlacementCounts_3 INTEGER NULL,
    -- 新潟ダ・着回数 
    niigataDirtPlacementCounts_4 INTEGER NULL,
    -- 新潟ダ・着回数 
    niigataDirtPlacementCounts_5 INTEGER NULL,
    -- 新潟ダ・着回数 
    niigataDirtPlacementCounts_6 INTEGER NULL,
    -- 東京ダ・着回数 
    tokyoDirtPlacementCount_1 INTEGER NULL,
    -- 東京ダ・着回数 
    tokyoDirtPlacementCount_2 INTEGER NULL,
    -- 東京ダ・着回数 
    tokyoDirtPlacementCount_3 INTEGER NULL,
    -- 東京ダ・着回数 
    tokyoDirtPlacementCount_4 INTEGER NULL,
    -- 東京ダ・着回数 
    tokyoDirtPlacementCount_5 INTEGER NULL,
    -- 東京ダ・着回数 
    tokyoDirtPlacementCount_6 INTEGER NULL,
    -- 中山ダ・着回数 
    nakayamaDirtPlacementCount_1 INTEGER NULL,
    -- 中山ダ・着回数 
    nakayamaDirtPlacementCount_2 INTEGER NULL,
    -- 中山ダ・着回数 
    nakayamaDirtPlacementCount_3 INTEGER NULL,
    -- 中山ダ・着回数 
    nakayamaDirtPlacementCount_4 INTEGER NULL,
    -- 中山ダ・着回数 
    nakayamaDirtPlacementCount_5 INTEGER NULL,
    -- 中山ダ・着回数 
    nakayamaDirtPlacementCount_6 INTEGER NULL,
    -- 中京ダ・着回数 
    chukyoDirtPlacementCount_1 INTEGER NULL,
    -- 中京ダ・着回数 
    chukyoDirtPlacementCount_2 INTEGER NULL,
    -- 中京ダ・着回数 
    chukyoDirtPlacementCount_3 INTEGER NULL,
    -- 中京ダ・着回数 
    chukyoDirtPlacementCount_4 INTEGER NULL,
    -- 中京ダ・着回数 
    chukyoDirtPlacementCount_5 INTEGER NULL,
    -- 中京ダ・着回数 
    chukyoDirtPlacementCount_6 INTEGER NULL,
    -- 京都ダ・着回数 
    kyotoDirtPlacementCounts_1 INTEGER NULL,
    -- 京都ダ・着回数 
    kyotoDirtPlacementCounts_2 INTEGER NULL,
    -- 京都ダ・着回数 
    kyotoDirtPlacementCounts_3 INTEGER NULL,
    -- 京都ダ・着回数 
    kyotoDirtPlacementCounts_4 INTEGER NULL,
    -- 京都ダ・着回数 
    kyotoDirtPlacementCounts_5 INTEGER NULL,
    -- 京都ダ・着回数 
    kyotoDirtPlacementCounts_6 INTEGER NULL,
    -- 阪神ダ・着回数 
    hanshinDirtPlacementCounts_1 INTEGER NULL,
    -- 阪神ダ・着回数 
    hanshinDirtPlacementCounts_2 INTEGER NULL,
    -- 阪神ダ・着回数 
    hanshinDirtPlacementCounts_3 INTEGER NULL,
    -- 阪神ダ・着回数 
    hanshinDirtPlacementCounts_4 INTEGER NULL,
    -- 阪神ダ・着回数 
    hanshinDirtPlacementCounts_5 INTEGER NULL,
    -- 阪神ダ・着回数 
    hanshinDirtPlacementCounts_6 INTEGER NULL,
    -- 小倉ダ・着回数 
    kokuraDirtPlacementCount_1 INTEGER NULL,
    -- 小倉ダ・着回数 
    kokuraDirtPlacementCount_2 INTEGER NULL,
    -- 小倉ダ・着回数 
    kokuraDirtPlacementCount_3 INTEGER NULL,
    -- 小倉ダ・着回数 
    kokuraDirtPlacementCount_4 INTEGER NULL,
    -- 小倉ダ・着回数 
    kokuraDirtPlacementCount_5 INTEGER NULL,
    -- 小倉ダ・着回数 
    kokuraDirtPlacementCount_6 INTEGER NULL,
    -- 札幌障・着回数 
    sapporoObstaclePlacementCounts_1 INTEGER NULL,
    -- 札幌障・着回数 
    sapporoObstaclePlacementCounts_2 INTEGER NULL,
    -- 札幌障・着回数 
    sapporoObstaclePlacementCounts_3 INTEGER NULL,
    -- 札幌障・着回数 
    sapporoObstaclePlacementCounts_4 INTEGER NULL,
    -- 札幌障・着回数 
    sapporoObstaclePlacementCounts_5 INTEGER NULL,
    -- 札幌障・着回数 
    sapporoObstaclePlacementCounts_6 INTEGER NULL,
    -- 函館障・着回数 
    hakodateObstaclePlacementCount_1 INTEGER NULL,
    -- 函館障・着回数 
    hakodateObstaclePlacementCount_2 INTEGER NULL,
    -- 函館障・着回数 
    hakodateObstaclePlacementCount_3 INTEGER NULL,
    -- 函館障・着回数 
    hakodateObstaclePlacementCount_4 INTEGER NULL,
    -- 函館障・着回数 
    hakodateObstaclePlacementCount_5 INTEGER NULL,
    -- 函館障・着回数 
    hakodateObstaclePlacementCount_6 INTEGER NULL,
    -- 福島障・着回数 
    fukushimaObstaclePlacementCounts_1 INTEGER NULL,
    -- 福島障・着回数 
    fukushimaObstaclePlacementCounts_2 INTEGER NULL,
    -- 福島障・着回数 
    fukushimaObstaclePlacementCounts_3 INTEGER NULL,
    -- 福島障・着回数 
    fukushimaObstaclePlacementCounts_4 INTEGER NULL,
    -- 福島障・着回数 
    fukushimaObstaclePlacementCounts_5 INTEGER NULL,
    -- 福島障・着回数 
    fukushimaObstaclePlacementCounts_6 INTEGER NULL,
    -- 新潟障・着回数 
    niigataObstaclePlacementCounts_1 INTEGER NULL,
    -- 新潟障・着回数 
    niigataObstaclePlacementCounts_2 INTEGER NULL,
    -- 新潟障・着回数 
    niigataObstaclePlacementCounts_3 INTEGER NULL,
    -- 新潟障・着回数 
    niigataObstaclePlacementCounts_4 INTEGER NULL,
    -- 新潟障・着回数 
    niigataObstaclePlacementCounts_5 INTEGER NULL,
    -- 新潟障・着回数 
    niigataObstaclePlacementCounts_6 INTEGER NULL,
    -- 東京障・着回数 
    tokyoObstaclePlacementCount_1 INTEGER NULL,
    -- 東京障・着回数 
    tokyoObstaclePlacementCount_2 INTEGER NULL,
    -- 東京障・着回数 
    tokyoObstaclePlacementCount_3 INTEGER NULL,
    -- 東京障・着回数 
    tokyoObstaclePlacementCount_4 INTEGER NULL,
    -- 東京障・着回数 
    tokyoObstaclePlacementCount_5 INTEGER NULL,
    -- 東京障・着回数 
    tokyoObstaclePlacementCount_6 INTEGER NULL,
    -- 中山障・着回数 
    nakayamaObstaclePlacementCount_1 INTEGER NULL,
    -- 中山障・着回数 
    nakayamaObstaclePlacementCount_2 INTEGER NULL,
    -- 中山障・着回数 
    nakayamaObstaclePlacementCount_3 INTEGER NULL,
    -- 中山障・着回数 
    nakayamaObstaclePlacementCount_4 INTEGER NULL,
    -- 中山障・着回数 
    nakayamaObstaclePlacementCount_5 INTEGER NULL,
    -- 中山障・着回数 
    nakayamaObstaclePlacementCount_6 INTEGER NULL,
    -- 中京障・着回数 
    chukyoObstaclePlacementCount_1 INTEGER NULL,
    -- 中京障・着回数 
    chukyoObstaclePlacementCount_2 INTEGER NULL,
    -- 中京障・着回数 
    chukyoObstaclePlacementCount_3 INTEGER NULL,
    -- 中京障・着回数 
    chukyoObstaclePlacementCount_4 INTEGER NULL,
    -- 中京障・着回数 
    chukyoObstaclePlacementCount_5 INTEGER NULL,
    -- 中京障・着回数 
    chukyoObstaclePlacementCount_6 INTEGER NULL,
    -- 京都障・着回数 
    kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障・着回数 
    kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障・着回数 
    kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障・着回数 
    kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障・着回数 
    kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障・着回数 
    kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神障・着回数 
    hanshinObstaclePlacementCounts_1 INTEGER NULL,
    -- 阪神障・着回数 
    hanshinObstaclePlacementCounts_2 INTEGER NULL,
    -- 阪神障・着回数 
    hanshinObstaclePlacementCounts_3 INTEGER NULL,
    -- 阪神障・着回数 
    hanshinObstaclePlacementCounts_4 INTEGER NULL,
    -- 阪神障・着回数 
    hanshinObstaclePlacementCounts_5 INTEGER NULL,
    -- 阪神障・着回数 
    hanshinObstaclePlacementCounts_6 INTEGER NULL,
    -- 小倉障・着回数 
    kokuraObstaclePlacementCount_1 INTEGER NULL,
    -- 小倉障・着回数 
    kokuraObstaclePlacementCount_2 INTEGER NULL,
    -- 小倉障・着回数 
    kokuraObstaclePlacementCount_3 INTEGER NULL,
    -- 小倉障・着回数 
    kokuraObstaclePlacementCount_4 INTEGER NULL,
    -- 小倉障・着回数 
    kokuraObstaclePlacementCount_5 INTEGER NULL,
    -- 小倉障・着回数 
    kokuraObstaclePlacementCount_6 INTEGER NULL,
    -- 脚質傾向 
    runningStyleTendency_1 TEXT NULL,
    -- 脚質傾向 
    runningStyleTendency_2 TEXT NULL,
    -- 脚質傾向 
    runningStyleTendency_3 TEXT NULL,
    -- 脚質傾向 
    runningStyleTendency_4 TEXT NULL,
    -- 登録レース数 
    registeredRaceCount INTEGER NULL,
    -- 設定年 
    JockeyCurrentAndCumulativePerformance_current_settingYear TEXT NULL,
    -- 平地本賞金合計 
    JockeyCurrentAndCumulativePerformance_current_flatMainPrizeMonayTotal INTEGER NULL,
    -- 障害本賞金合計 
    JockeyCurrentAndCumulativePerformance_current_obstacleMainPrizeMoneyTotal INTEGER NULL,
    -- 平地付加賞金合計 
    JockeyCurrentAndCumulativePerformance_current_flatAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 障害付加賞金合計 
    JockeyCurrentAndCumulativePerformance_current_obstacleAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_current_turfPlacementCounts_1 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_current_turfPlacementCounts_2 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_current_turfPlacementCounts_3 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_current_turfPlacementCounts_4 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_current_turfPlacementCounts_5 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_current_turfPlacementCounts_6 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_current_dirtPlacementCount_1 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_current_dirtPlacementCount_2 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_current_dirtPlacementCount_3 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_current_dirtPlacementCount_4 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_current_dirtPlacementCount_5 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_current_dirtPlacementCount_6 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_current_obstaclePlacementCount_1 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_current_obstaclePlacementCount_2 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_current_obstaclePlacementCount_3 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_current_obstaclePlacementCount_4 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_current_obstaclePlacementCount_5 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_current_obstaclePlacementCount_6 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_1 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_2 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_3 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_4 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_5 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_6 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_1 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_2 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_3 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_4 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_5 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_6 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_1 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_2 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_3 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_4 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_5 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_6 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_1 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_2 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_3 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_4 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_5 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_6 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_1 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_2 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_3 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_4 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_5 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_6 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_1 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_2 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_3 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_4 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_5 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_6 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_1 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_2 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_3 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_4 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_5 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_6 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_1 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_2 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_3 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_4 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_5 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_6 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_1 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_2 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_3 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_4 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_5 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_6 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_1 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_2 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_3 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_4 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_5 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_6 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_1 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_2 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_3 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_4 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_5 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_6 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_1 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_2 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_3 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_4 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_5 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_6 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_1 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_2 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_3 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_4 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_5 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_6 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_1 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_2 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_3 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_4 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_5 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_6 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_1 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_2 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_3 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_4 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_5 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_6 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_1 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_2 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_3 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_4 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_5 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_6 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_1 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_2 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_3 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_4 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_5 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_6 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_1 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_2 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_3 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_4 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_5 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_6 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_1 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_2 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_3 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_4 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_5 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_6 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_1 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_2 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_3 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_4 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_5 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_6 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_1 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_2 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_3 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_4 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_5 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_6 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_1 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_2 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_3 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_4 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_5 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_6 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_1 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_2 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_3 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_4 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_5 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_6 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_1 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_2 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_3 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_4 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_5 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_6 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_1 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_2 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_3 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_4 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_5 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_6 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_1 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_2 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_3 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_4 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_5 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_6 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_1 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_2 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_3 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_4 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_5 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_6 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_1 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_2 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_3 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_4 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_5 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_6 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_1 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_2 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_3 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_4 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_5 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_6 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_1 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_2 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_3 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_4 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_5 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_6 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_1 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_2 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_3 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_4 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_5 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_6 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_1 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_2 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_3 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_4 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_5 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_6 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_1 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_2 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_3 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_4 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_5 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_6 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_1 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_2 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_3 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_4 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_5 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_6 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_1 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_2 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_3 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_4 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_5 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_6 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_1 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_2 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_3 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_4 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_5 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_6 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_1 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_2 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_3 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_4 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_5 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_6 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_1 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_2 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_3 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_4 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_5 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_6 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_1 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_2 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_3 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_4 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_5 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_6 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_1 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_2 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_3 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_4 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_5 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_6 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_1 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_2 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_3 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_4 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_5 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_6 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_1 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_2 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_3 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_4 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_5 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_6 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_1 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_2 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_3 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_4 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_5 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_6 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_1 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_2 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_3 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_4 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_5 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_6 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_1 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_2 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_3 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_4 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_5 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_6 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_1 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_2 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_3 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_4 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_5 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_6 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_1 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_2 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_3 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_4 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_5 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_6 INTEGER NULL,
    -- 設定年 
    JockeyCurrentAndCumulativePerformance_cumulative_settingYear TEXT NULL,
    -- 平地本賞金合計 
    JockeyCurrentAndCumulativePerformance_cumulative_flatMainPrizeMonayTotal INTEGER NULL,
    -- 障害本賞金合計 
    JockeyCurrentAndCumulativePerformance_cumulative_obstacleMainPrizeMoneyTotal INTEGER NULL,
    -- 平地付加賞金合計 
    JockeyCurrentAndCumulativePerformance_cumulative_flatAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 障害付加賞金合計 
    JockeyCurrentAndCumulativePerformance_cumulative_obstacleAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_1 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_2 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_3 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_4 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_5 INTEGER NULL,
    -- 芝着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_6 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_1 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_2 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_3 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_4 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_5 INTEGER NULL,
    -- ダート着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_6 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_1 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_2 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_3 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_4 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_5 INTEGER NULL,
    -- 障害着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_6 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_1 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_2 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_3 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_4 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_5 INTEGER NULL,
    -- 芝1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_6 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_1 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_2 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_3 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_4 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_5 INTEGER NULL,
    -- 芝1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_6 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_1 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_2 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_3 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_4 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_5 INTEGER NULL,
    -- 芝1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_6 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_1 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_2 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_3 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_4 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_5 INTEGER NULL,
    -- 芝1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_6 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_1 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_2 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_3 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_4 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_5 INTEGER NULL,
    -- 芝1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_6 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_1 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_2 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_3 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_4 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_5 INTEGER NULL,
    -- 芝2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_6 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_1 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_2 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_3 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_4 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_5 INTEGER NULL,
    -- 芝2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_6 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_1 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_2 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_3 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_4 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_5 INTEGER NULL,
    -- 芝2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_6 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_1 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_2 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_3 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_4 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_5 INTEGER NULL,
    -- 芝2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_6 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_1 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_2 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_3 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_4 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_5 INTEGER NULL,
    -- ダ1200以下・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_6 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_1 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_2 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_3 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_4 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_5 INTEGER NULL,
    -- ダ1201-1400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_6 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_1 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_2 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_3 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_4 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_5 INTEGER NULL,
    -- ダ1401-1600・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_6 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_1 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_2 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_3 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_4 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_5 INTEGER NULL,
    -- ダ1601-1800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_6 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_1 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_2 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_3 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_4 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_5 INTEGER NULL,
    -- ダ1801-2000・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_6 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_1 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_2 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_3 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_4 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_5 INTEGER NULL,
    -- ダ2001-2200・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_6 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_1 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_2 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_3 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_4 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_5 INTEGER NULL,
    -- ダ2201-2400・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_6 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_1 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_2 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_3 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_4 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_5 INTEGER NULL,
    -- ダ2401-2800・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_6 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_1 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_2 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_3 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_4 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_5 INTEGER NULL,
    -- ダ2801以上・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_6 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_1 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_2 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_3 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_4 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_5 INTEGER NULL,
    -- 札幌芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_6 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_1 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_2 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_3 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_4 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_5 INTEGER NULL,
    -- 函館芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_6 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_1 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_2 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_3 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_4 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_5 INTEGER NULL,
    -- 福島芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_6 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_1 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_2 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_3 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_4 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_5 INTEGER NULL,
    -- 新潟芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_6 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_1 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_2 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_3 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_4 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_5 INTEGER NULL,
    -- 東京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_6 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_1 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_2 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_3 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_4 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_5 INTEGER NULL,
    -- 中山芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_6 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_1 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_2 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_3 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_4 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_5 INTEGER NULL,
    -- 中京芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_6 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_1 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_2 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_3 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_4 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_5 INTEGER NULL,
    -- 京都芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_6 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_1 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_2 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_3 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_4 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_5 INTEGER NULL,
    -- 阪神芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_6 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_1 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_2 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_3 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_4 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_5 INTEGER NULL,
    -- 小倉芝・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_6 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_1 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_2 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_3 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_4 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_5 INTEGER NULL,
    -- 札幌ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_6 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_1 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_2 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_3 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_4 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_5 INTEGER NULL,
    -- 函館ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_6 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_1 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_2 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_3 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_4 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_5 INTEGER NULL,
    -- 福島ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_6 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_1 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_2 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_3 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_4 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_5 INTEGER NULL,
    -- 新潟ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_6 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_1 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_2 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_3 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_4 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_5 INTEGER NULL,
    -- 東京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_6 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_1 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_2 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_3 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_4 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_5 INTEGER NULL,
    -- 中山ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_6 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_1 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_2 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_3 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_4 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_5 INTEGER NULL,
    -- 中京ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_6 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_1 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_2 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_3 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_4 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_5 INTEGER NULL,
    -- 京都ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_6 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_1 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_2 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_3 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_4 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_5 INTEGER NULL,
    -- 阪神ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_6 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_1 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_2 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_3 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_4 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_5 INTEGER NULL,
    -- 小倉ダ・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_6 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_1 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_2 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_3 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_4 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_5 INTEGER NULL,
    -- 札幌障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_6 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_1 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_2 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_3 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_4 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_5 INTEGER NULL,
    -- 函館障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_6 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_1 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_2 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_3 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_4 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_5 INTEGER NULL,
    -- 福島障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_6 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_1 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_2 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_3 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_4 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_5 INTEGER NULL,
    -- 新潟障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_6 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_1 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_2 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_3 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_4 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_5 INTEGER NULL,
    -- 東京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_6 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_1 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_2 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_3 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_4 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_5 INTEGER NULL,
    -- 中山障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_6 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_1 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_2 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_3 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_4 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_5 INTEGER NULL,
    -- 中京障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_6 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_1 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_2 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_3 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_4 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_5 INTEGER NULL,
    -- 阪神障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_6 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_1 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_2 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_3 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_4 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_5 INTEGER NULL,
    -- 小倉障・着回数 
    JockeyCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_6 INTEGER NULL,
    -- 調教師コード 
    trainerCode TEXT NULL,
    -- 設定年 
    TrainerCurrentAndCumulativePerformance_current_settingYear TEXT NULL,
    -- 平地本賞金合計 
    TrainerCurrentAndCumulativePerformance_current_flatMainPrizeMonayTotal INTEGER NULL,
    -- 障害本賞金合計 
    TrainerCurrentAndCumulativePerformance_current_obstacleMainPrizeMoneyTotal INTEGER NULL,
    -- 平地付加賞金合計 
    TrainerCurrentAndCumulativePerformance_current_flatAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 障害付加賞金合計 
    TrainerCurrentAndCumulativePerformance_current_obstacleAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_current_turfPlacementCounts_1 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_current_turfPlacementCounts_2 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_current_turfPlacementCounts_3 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_current_turfPlacementCounts_4 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_current_turfPlacementCounts_5 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_current_turfPlacementCounts_6 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_current_dirtPlacementCount_1 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_current_dirtPlacementCount_2 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_current_dirtPlacementCount_3 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_current_dirtPlacementCount_4 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_current_dirtPlacementCount_5 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_current_dirtPlacementCount_6 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_current_obstaclePlacementCount_1 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_current_obstaclePlacementCount_2 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_current_obstaclePlacementCount_3 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_current_obstaclePlacementCount_4 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_current_obstaclePlacementCount_5 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_current_obstaclePlacementCount_6 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_1 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_2 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_3 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_4 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_5 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1200OrLessPlacementCounts_6 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_1 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_2 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_3 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_4 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_5 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1201To1400PlacementCounts_6 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_1 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_2 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_3 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_4 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_5 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1401To1600PlacementCounts_6 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_1 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_2 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_3 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_4 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_5 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1601To1800PlacementCounts_6 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_1 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_2 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_3 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_4 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_5 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf1801To2000PlacementCounts_6 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_1 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_2 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_3 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_4 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_5 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2001To2200PlacementCounts_6 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_1 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_2 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_3 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_4 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_5 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2201To2400PlacementCounts_6 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_1 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_2 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_3 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_4 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_5 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2401To2800PlacementCounts_6 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_1 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_2 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_3 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_4 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_5 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_turf2801OrMorePlacementCounts_6 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_1 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_2 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_3 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_4 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_5 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1200OrLessPlacementCount_6 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_1 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_2 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_3 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_4 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_5 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1201To1400PlacementCount_6 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_1 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_2 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_3 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_4 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_5 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1401To1600PlacementCount_6 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_1 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_2 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_3 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_4 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_5 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1601To1800PlacementCount_6 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_1 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_2 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_3 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_4 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_5 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt1801To2000PlacementCount_6 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_1 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_2 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_3 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_4 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_5 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2001To2200PlacementCount_6 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_1 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_2 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_3 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_4 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_5 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2201To2400PlacementCount_6 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_1 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_2 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_3 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_4 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_5 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2401To2800PlacementCount_6 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_1 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_2 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_3 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_4 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_5 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_current_dirt2801OrMorePlacementCount_6 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_1 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_2 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_3 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_4 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_5 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoTurfPlacementCounts_6 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_1 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_2 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_3 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_4 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_5 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateTurfPlacementCount_6 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_1 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_2 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_3 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_4 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_5 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaTurfPlacementCounts_6 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_1 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_2 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_3 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_4 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_5 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataTurfPlacementCounts_6 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_1 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_2 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_3 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_4 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_5 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoTurfPlacementCount_6 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_1 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_2 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_3 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_4 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_5 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaTurfPlacementCount_6 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_1 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_2 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_3 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_4 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_5 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoTurfPlacementCount_6 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_1 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_2 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_3 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_4 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_5 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoTurfPlacementCounts_6 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_1 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_2 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_3 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_4 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_5 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinTurfPlacementCounts_6 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_1 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_2 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_3 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_4 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_5 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraTurfPlacementCount_6 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_1 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_2 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_3 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_4 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_5 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoDirtPlacementCounts_6 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_1 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_2 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_3 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_4 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_5 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateDirtPlacementCount_6 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_1 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_2 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_3 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_4 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_5 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaDirtPlacementCounts_6 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_1 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_2 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_3 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_4 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_5 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataDirtPlacementCounts_6 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_1 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_2 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_3 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_4 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_5 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoDirtPlacementCount_6 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_1 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_2 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_3 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_4 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_5 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaDirtPlacementCount_6 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_1 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_2 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_3 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_4 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_5 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoDirtPlacementCount_6 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_1 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_2 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_3 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_4 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_5 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoDirtPlacementCounts_6 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_1 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_2 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_3 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_4 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_5 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinDirtPlacementCounts_6 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_1 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_2 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_3 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_4 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_5 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraDirtPlacementCount_6 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_1 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_2 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_3 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_4 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_5 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_current_sapporoObstaclePlacementCounts_6 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_1 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_2 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_3 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_4 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_5 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hakodateObstaclePlacementCount_6 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_1 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_2 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_3 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_4 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_5 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_current_fukushimaObstaclePlacementCounts_6 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_1 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_2 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_3 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_4 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_5 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_current_niigataObstaclePlacementCounts_6 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_1 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_2 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_3 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_4 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_5 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_tokyoObstaclePlacementCount_6 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_1 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_2 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_3 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_4 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_5 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_current_nakayamaObstaclePlacementCount_6 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_1 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_2 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_3 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_4 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_5 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_current_chukyoObstaclePlacementCount_6 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_1 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_2 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_3 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_4 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_5 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_current_hanshinObstaclePlacementCounts_6 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_1 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_2 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_3 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_4 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_5 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_current_kokuraObstaclePlacementCount_6 INTEGER NULL,
    -- 設定年 
    TrainerCurrentAndCumulativePerformance_cumulative_settingYear TEXT NULL,
    -- 平地本賞金合計 
    TrainerCurrentAndCumulativePerformance_cumulative_flatMainPrizeMonayTotal INTEGER NULL,
    -- 障害本賞金合計 
    TrainerCurrentAndCumulativePerformance_cumulative_obstacleMainPrizeMoneyTotal INTEGER NULL,
    -- 平地付加賞金合計 
    TrainerCurrentAndCumulativePerformance_cumulative_flatAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 障害付加賞金合計 
    TrainerCurrentAndCumulativePerformance_cumulative_obstacleAdditionalPrizeMoneyTotal INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_1 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_2 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_3 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_4 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_5 INTEGER NULL,
    -- 芝着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turfPlacementCounts_6 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_1 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_2 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_3 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_4 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_5 INTEGER NULL,
    -- ダート着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirtPlacementCount_6 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_1 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_2 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_3 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_4 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_5 INTEGER NULL,
    -- 障害着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_obstaclePlacementCount_6 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_1 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_2 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_3 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_4 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_5 INTEGER NULL,
    -- 芝1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1200OrLessPlacementCounts_6 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_1 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_2 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_3 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_4 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_5 INTEGER NULL,
    -- 芝1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1201To1400PlacementCounts_6 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_1 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_2 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_3 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_4 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_5 INTEGER NULL,
    -- 芝1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1401To1600PlacementCounts_6 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_1 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_2 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_3 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_4 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_5 INTEGER NULL,
    -- 芝1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1601To1800PlacementCounts_6 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_1 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_2 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_3 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_4 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_5 INTEGER NULL,
    -- 芝1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf1801To2000PlacementCounts_6 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_1 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_2 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_3 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_4 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_5 INTEGER NULL,
    -- 芝2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2001To2200PlacementCounts_6 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_1 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_2 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_3 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_4 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_5 INTEGER NULL,
    -- 芝2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2201To2400PlacementCounts_6 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_1 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_2 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_3 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_4 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_5 INTEGER NULL,
    -- 芝2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2401To2800PlacementCounts_6 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_1 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_2 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_3 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_4 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_5 INTEGER NULL,
    -- 芝2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_turf2801OrMorePlacementCounts_6 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_1 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_2 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_3 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_4 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_5 INTEGER NULL,
    -- ダ1200以下・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1200OrLessPlacementCount_6 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_1 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_2 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_3 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_4 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_5 INTEGER NULL,
    -- ダ1201-1400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1201To1400PlacementCount_6 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_1 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_2 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_3 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_4 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_5 INTEGER NULL,
    -- ダ1401-1600・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1401To1600PlacementCount_6 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_1 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_2 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_3 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_4 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_5 INTEGER NULL,
    -- ダ1601-1800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1601To1800PlacementCount_6 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_1 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_2 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_3 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_4 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_5 INTEGER NULL,
    -- ダ1801-2000・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt1801To2000PlacementCount_6 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_1 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_2 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_3 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_4 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_5 INTEGER NULL,
    -- ダ2001-2200・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2001To2200PlacementCount_6 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_1 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_2 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_3 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_4 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_5 INTEGER NULL,
    -- ダ2201-2400・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2201To2400PlacementCount_6 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_1 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_2 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_3 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_4 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_5 INTEGER NULL,
    -- ダ2401-2800・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2401To2800PlacementCount_6 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_1 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_2 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_3 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_4 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_5 INTEGER NULL,
    -- ダ2801以上・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_dirt2801OrMorePlacementCount_6 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_1 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_2 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_3 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_4 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_5 INTEGER NULL,
    -- 札幌芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoTurfPlacementCounts_6 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_1 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_2 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_3 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_4 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_5 INTEGER NULL,
    -- 函館芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateTurfPlacementCount_6 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_1 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_2 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_3 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_4 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_5 INTEGER NULL,
    -- 福島芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaTurfPlacementCounts_6 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_1 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_2 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_3 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_4 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_5 INTEGER NULL,
    -- 新潟芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataTurfPlacementCounts_6 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_1 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_2 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_3 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_4 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_5 INTEGER NULL,
    -- 東京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoTurfPlacementCount_6 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_1 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_2 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_3 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_4 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_5 INTEGER NULL,
    -- 中山芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaTurfPlacementCount_6 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_1 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_2 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_3 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_4 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_5 INTEGER NULL,
    -- 中京芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoTurfPlacementCount_6 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_1 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_2 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_3 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_4 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_5 INTEGER NULL,
    -- 京都芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoTurfPlacementCounts_6 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_1 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_2 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_3 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_4 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_5 INTEGER NULL,
    -- 阪神芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinTurfPlacementCounts_6 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_1 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_2 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_3 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_4 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_5 INTEGER NULL,
    -- 小倉芝・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraTurfPlacementCount_6 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_1 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_2 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_3 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_4 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_5 INTEGER NULL,
    -- 札幌ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoDirtPlacementCounts_6 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_1 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_2 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_3 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_4 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_5 INTEGER NULL,
    -- 函館ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateDirtPlacementCount_6 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_1 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_2 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_3 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_4 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_5 INTEGER NULL,
    -- 福島ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaDirtPlacementCounts_6 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_1 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_2 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_3 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_4 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_5 INTEGER NULL,
    -- 新潟ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataDirtPlacementCounts_6 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_1 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_2 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_3 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_4 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_5 INTEGER NULL,
    -- 東京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoDirtPlacementCount_6 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_1 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_2 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_3 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_4 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_5 INTEGER NULL,
    -- 中山ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaDirtPlacementCount_6 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_1 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_2 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_3 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_4 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_5 INTEGER NULL,
    -- 中京ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoDirtPlacementCount_6 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_1 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_2 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_3 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_4 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_5 INTEGER NULL,
    -- 京都ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoDirtPlacementCounts_6 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_1 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_2 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_3 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_4 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_5 INTEGER NULL,
    -- 阪神ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinDirtPlacementCounts_6 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_1 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_2 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_3 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_4 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_5 INTEGER NULL,
    -- 小倉ダ・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraDirtPlacementCount_6 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_1 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_2 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_3 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_4 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_5 INTEGER NULL,
    -- 札幌障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_sapporoObstaclePlacementCounts_6 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_1 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_2 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_3 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_4 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_5 INTEGER NULL,
    -- 函館障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hakodateObstaclePlacementCount_6 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_1 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_2 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_3 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_4 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_5 INTEGER NULL,
    -- 福島障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_fukushimaObstaclePlacementCounts_6 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_1 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_2 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_3 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_4 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_5 INTEGER NULL,
    -- 新潟障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_niigataObstaclePlacementCounts_6 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_1 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_2 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_3 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_4 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_5 INTEGER NULL,
    -- 東京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_tokyoObstaclePlacementCount_6 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_1 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_2 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_3 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_4 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_5 INTEGER NULL,
    -- 中山障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_nakayamaObstaclePlacementCount_6 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_1 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_2 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_3 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_4 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_5 INTEGER NULL,
    -- 中京障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_chukyoObstaclePlacementCount_6 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_1 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_2 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_3 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_4 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_5 INTEGER NULL,
    -- 京都障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kyotoObstaclePlacementCounts_6 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_1 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_2 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_3 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_4 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_5 INTEGER NULL,
    -- 阪神障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_hanshinObstaclePlacementCounts_6 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_1 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_2 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_3 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_4 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_5 INTEGER NULL,
    -- 小倉障・着回数 
    TrainerCurrentAndCumulativePerformance_cumulative_kokuraObstaclePlacementCount_6 INTEGER NULL,
    -- 馬主コード 
    ownerCode TEXT NULL,
    -- 設定年 
    OwnerCurrentAndCumulativeInfo_current_settingYear TEXT NULL,
    -- 本賞金合計 
    OwnerCurrentAndCumulativeInfo_current_mainPrizeMoneyTotal INTEGER NULL,
    -- 付加賞金合計 
    OwnerCurrentAndCumulativeInfo_current_additionalPrizeMoneyTotal INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_current_PlacementCount_1 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_current_PlacementCount_2 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_current_PlacementCount_3 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_current_PlacementCount_4 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_current_PlacementCount_5 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_current_PlacementCount_6 INTEGER NULL,
    -- 設定年 
    OwnerCurrentAndCumulativeInfo_cumulative_settingYear TEXT NULL,
    -- 本賞金合計 
    OwnerCurrentAndCumulativeInfo_cumulative_mainPrizeMoneyTotal INTEGER NULL,
    -- 付加賞金合計 
    OwnerCurrentAndCumulativeInfo_cumulative_additionalPrizeMoneyTotal INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_cumulative_PlacementCount_1 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_cumulative_PlacementCount_2 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_cumulative_PlacementCount_3 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_cumulative_PlacementCount_4 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_cumulative_PlacementCount_5 INTEGER NULL,
    -- 着回数 
    OwnerCurrentAndCumulativeInfo_cumulative_PlacementCount_6 INTEGER NULL,
    -- 生産者コード 
    producerCode TEXT NULL,
    -- 設定年 
    ProducerCurrentAndCumulativeInfo_current_settingYear TEXT NULL,
    -- 本賞金合計 
    ProducerCurrentAndCumulativeInfo_current_mainPrizeMoneyTotal INTEGER NULL,
    -- 付加賞金合計 
    ProducerCurrentAndCumulativeInfo_current_additionalPrizeMoneyTotal INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_current_PlacementCount_1 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_current_PlacementCount_2 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_current_PlacementCount_3 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_current_PlacementCount_4 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_current_PlacementCount_5 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_current_PlacementCount_6 INTEGER NULL,
    -- 設定年 
    ProducerCurrentAndCumulativeInfo_cumulative_settingYear TEXT NULL,
    -- 本賞金合計 
    ProducerCurrentAndCumulativeInfo_cumulative_mainPrizeMoneyTotal INTEGER NULL,
    -- 付加賞金合計 
    ProducerCurrentAndCumulativeInfo_cumulative_additionalPrizeMoneyTotal INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_cumulative_PlacementCount_1 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_cumulative_PlacementCount_2 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_cumulative_PlacementCount_3 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_cumulative_PlacementCount_4 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_cumulative_PlacementCount_5 INTEGER NULL,
    -- 着回数 
    ProducerCurrentAndCumulativeInfo_cumulative_PlacementCount_6 INTEGER NULL
);
