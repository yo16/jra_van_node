-- 競走馬マスタ
CREATE TABLE HorseMaster (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NOT NULL,
    -- 競走馬抹消区分 
    horseDeletionCategory TEXT NOT NULL,
    -- 競走馬登録年月日 
    horseRegistrationDate TEXT NOT NULL,
    -- 競走馬抹消年月日 
    horseDeletionDate TEXT NOT NULL,
    -- 生年月日 
    birthDate TEXT NOT NULL,
    -- 馬名 
    horseName TEXT NOT NULL,
    -- 馬名半角ｶﾅ 
    horseNameKana TEXT NOT NULL,
    -- 馬名欧字 
    horseNameEng TEXT NOT NULL,
    -- JRA施設在きゅうフラグ 
    jraFacilityFlag TEXT NOT NULL,
    -- 馬記号コード 
    horseSymbolCode TEXT NOT NULL,
    -- 性別コード 
    genderCode TEXT NOT NULL,
    -- 品種コード 
    breedCode TEXT NOT NULL,
    -- 毛色コード 
    coatColorCode TEXT NOT NULL,
    -- 東西所属コード 
    horseRegionAffiliationCode TEXT NOT NULL,
    -- 調教師コード 
    trainerCode TEXT NOT NULL,
    -- 招待地域名 
    invitationRegionName TEXT NOT NULL,
    -- 生産者コード 
    producerCode TEXT NOT NULL,
    -- 産地名 
    placeOfBirth TEXT NOT NULL,
    -- 馬主コード 
    ownerCode TEXT NOT NULL,
    -- 平地本賞金累計 
    flatMainPrizeMonayCumulative INTEGER NOT NULL,
    -- 障害本賞金累計 
    obstacleMainPrizeMoneyCumulative INTEGER NOT NULL,
    -- 平地付加賞金累計 
    flatAdditinalPrizeMoneyCumulative INTEGER NOT NULL,
    -- 障害付加賞金累計 
    obstacleAdditionalPrizeMoneyCumulative INTEGER NOT NULL,
    -- 平地収得賞金累計 
    flatEarningsPrizeMoneyCumulative INTEGER NOT NULL,
    -- 障害収得賞金累計 
    obstacleEarningsPrizeMoneyCumulative INTEGER NOT NULL,
    -- 総合着回数 
    totalPlacementCount_1 INTEGER NOT NULL,
    -- 総合着回数 
    totalPlacementCount_2 INTEGER NOT NULL,
    -- 総合着回数 
    totalPlacementCount_3 INTEGER NOT NULL,
    -- 総合着回数 
    totalPlacementCount_4 INTEGER NOT NULL,
    -- 総合着回数 
    totalPlacementCount_5 INTEGER NOT NULL,
    -- 総合着回数 
    totalPlacementCount_6 INTEGER NOT NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_1 INTEGER NOT NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_2 INTEGER NOT NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_3 INTEGER NOT NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_4 INTEGER NOT NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_5 INTEGER NOT NULL,
    -- 中央合計着回数 
    centralTotalPlacementCount_6 INTEGER NOT NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_1 INTEGER NOT NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_2 INTEGER NOT NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_3 INTEGER NOT NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_4 INTEGER NOT NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_5 INTEGER NOT NULL,
    -- 芝直・着回数 
    turfStraightPlacementCount_6 INTEGER NOT NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_1 INTEGER NOT NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_2 INTEGER NOT NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_3 INTEGER NOT NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_4 INTEGER NOT NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_5 INTEGER NOT NULL,
    -- 芝右・着回数 
    turfRightPlacementCount_6 INTEGER NOT NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_1 INTEGER NOT NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_2 INTEGER NOT NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_3 INTEGER NOT NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_4 INTEGER NOT NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_5 INTEGER NOT NULL,
    -- 芝左・着回数 
    turfLeftPlacementCount_6 INTEGER NOT NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_1 INTEGER NOT NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_2 INTEGER NOT NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_3 INTEGER NOT NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_4 INTEGER NOT NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_5 INTEGER NOT NULL,
    -- ダ直・着回数 
    dirtStraightPlacementCount_6 INTEGER NOT NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_1 INTEGER NOT NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_2 INTEGER NOT NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_3 INTEGER NOT NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_4 INTEGER NOT NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_5 INTEGER NOT NULL,
    -- ダ右・着回数 
    dirtRightPlacementCount_6 INTEGER NOT NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_1 INTEGER NOT NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_2 INTEGER NOT NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_3 INTEGER NOT NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_4 INTEGER NOT NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_5 INTEGER NOT NULL,
    -- ダ左・着回数 
    dirtLeftPlacementCount_6 INTEGER NOT NULL,
    -- 障害・着回数 
    obstaclePlacementCount_1 INTEGER NOT NULL,
    -- 障害・着回数 
    obstaclePlacementCount_2 INTEGER NOT NULL,
    -- 障害・着回数 
    obstaclePlacementCount_3 INTEGER NOT NULL,
    -- 障害・着回数 
    obstaclePlacementCount_4 INTEGER NOT NULL,
    -- 障害・着回数 
    obstaclePlacementCount_5 INTEGER NOT NULL,
    -- 障害・着回数 
    obstaclePlacementCount_6 INTEGER NOT NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_1 INTEGER NOT NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_2 INTEGER NOT NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_3 INTEGER NOT NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_4 INTEGER NOT NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_5 INTEGER NOT NULL,
    -- 芝良・着回数 
    turfGoodPlacementCount_6 INTEGER NOT NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_1 INTEGER NOT NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_2 INTEGER NOT NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_3 INTEGER NOT NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_4 INTEGER NOT NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_5 INTEGER NOT NULL,
    -- 芝稍・着回数 
    turfSlightlyHeavyPlacementCount_6 INTEGER NOT NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_1 INTEGER NOT NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_2 INTEGER NOT NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_3 INTEGER NOT NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_4 INTEGER NOT NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_5 INTEGER NOT NULL,
    -- 芝重・着回数 
    turfHeavyPlacementCount_6 INTEGER NOT NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_1 INTEGER NOT NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_2 INTEGER NOT NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_3 INTEGER NOT NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_4 INTEGER NOT NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_5 INTEGER NOT NULL,
    -- 芝不・着回数 
    turfBadPlacementCount_6 INTEGER NOT NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_1 INTEGER NOT NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_2 INTEGER NOT NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_3 INTEGER NOT NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_4 INTEGER NOT NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_5 INTEGER NOT NULL,
    -- ダ良・着回数 
    dirtGoodPlacementCount_6 INTEGER NOT NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_1 INTEGER NOT NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_2 INTEGER NOT NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_3 INTEGER NOT NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_4 INTEGER NOT NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_5 INTEGER NOT NULL,
    -- ダ稍・着回数 
    dirtSlightlyHeavyPlacementCount_6 INTEGER NOT NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_1 INTEGER NOT NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_2 INTEGER NOT NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_3 INTEGER NOT NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_4 INTEGER NOT NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_5 INTEGER NOT NULL,
    -- ダ重・着回数 
    dirtHeavyPlacementCount_6 INTEGER NOT NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_1 INTEGER NOT NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_2 INTEGER NOT NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_3 INTEGER NOT NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_4 INTEGER NOT NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_5 INTEGER NOT NULL,
    -- ダ不・着回数 
    dirtBadPlacementCount_6 INTEGER NOT NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_1 INTEGER NOT NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_2 INTEGER NOT NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_3 INTEGER NOT NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_4 INTEGER NOT NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_5 INTEGER NOT NULL,
    -- 障良・着回数 
    obstacleGoodPlacementCount_6 INTEGER NOT NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_1 INTEGER NOT NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_2 INTEGER NOT NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_3 INTEGER NOT NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_4 INTEGER NOT NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_5 INTEGER NOT NULL,
    -- 障稍・着回数 
    obstacleSlightlyHeavyPlacementCount_6 INTEGER NOT NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_1 INTEGER NOT NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_2 INTEGER NOT NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_3 INTEGER NOT NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_4 INTEGER NOT NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_5 INTEGER NOT NULL,
    -- 障重・着回数 
    obstacleHeavyPlacementCount_6 INTEGER NOT NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_1 INTEGER NOT NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_2 INTEGER NOT NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_3 INTEGER NOT NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_4 INTEGER NOT NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_5 INTEGER NOT NULL,
    -- 障不・着回数 
    obstacleBadPlacementCount_6 INTEGER NOT NULL,
    -- 芝16下・着回数 
    turfUnder16PlacementCount_1 INTEGER NOT NULL,
    -- 芝16下・着回数 
    turfUnder16PlacementCount_2 INTEGER NOT NULL,
    -- 芝16下・着回数 
    turfUnder16PlacementCount_3 INTEGER NOT NULL,
    -- 芝16下・着回数 
    turfUnder16PlacementCount_4 INTEGER NOT NULL,
    -- 芝16下・着回数 
    turfUnder16PlacementCount_5 INTEGER NOT NULL,
    -- 芝16下・着回数 
    turfUnder16PlacementCount_6 INTEGER NOT NULL,
    -- 芝22下・着回数 
    turfUnder22PlacementCount_1 INTEGER NOT NULL,
    -- 芝22下・着回数 
    turfUnder22PlacementCount_2 INTEGER NOT NULL,
    -- 芝22下・着回数 
    turfUnder22PlacementCount_3 INTEGER NOT NULL,
    -- 芝22下・着回数 
    turfUnder22PlacementCount_4 INTEGER NOT NULL,
    -- 芝22下・着回数 
    turfUnder22PlacementCount_5 INTEGER NOT NULL,
    -- 芝22下・着回数 
    turfUnder22PlacementCount_6 INTEGER NOT NULL,
    -- 芝22超・着回数 
    turfOver22PlacementCount_1 INTEGER NOT NULL,
    -- 芝22超・着回数 
    turfOver22PlacementCount_2 INTEGER NOT NULL,
    -- 芝22超・着回数 
    turfOver22PlacementCount_3 INTEGER NOT NULL,
    -- 芝22超・着回数 
    turfOver22PlacementCount_4 INTEGER NOT NULL,
    -- 芝22超・着回数 
    turfOver22PlacementCount_5 INTEGER NOT NULL,
    -- 芝22超・着回数 
    turfOver22PlacementCount_6 INTEGER NOT NULL,
    -- ダ16下・着回数 
    dirtUnder16PlacementCount_1 INTEGER NOT NULL,
    -- ダ16下・着回数 
    dirtUnder16PlacementCount_2 INTEGER NOT NULL,
    -- ダ16下・着回数 
    dirtUnder16PlacementCount_3 INTEGER NOT NULL,
    -- ダ16下・着回数 
    dirtUnder16PlacementCount_4 INTEGER NOT NULL,
    -- ダ16下・着回数 
    dirtUnder16PlacementCount_5 INTEGER NOT NULL,
    -- ダ16下・着回数 
    dirtUnder16PlacementCount_6 INTEGER NOT NULL,
    -- ダ22下・着回数 
    dirtUnder22PlacementCount_1 INTEGER NOT NULL,
    -- ダ22下・着回数 
    dirtUnder22PlacementCount_2 INTEGER NOT NULL,
    -- ダ22下・着回数 
    dirtUnder22PlacementCount_3 INTEGER NOT NULL,
    -- ダ22下・着回数 
    dirtUnder22PlacementCount_4 INTEGER NOT NULL,
    -- ダ22下・着回数 
    dirtUnder22PlacementCount_5 INTEGER NOT NULL,
    -- ダ22下・着回数 
    dirtUnder22PlacementCount_6 INTEGER NOT NULL,
    -- ダ22超・着回数 
    dirtOver22PlacementCount_1 INTEGER NOT NULL,
    -- ダ22超・着回数 
    dirtOver22PlacementCount_2 INTEGER NOT NULL,
    -- ダ22超・着回数 
    dirtOver22PlacementCount_3 INTEGER NOT NULL,
    -- ダ22超・着回数 
    dirtOver22PlacementCount_4 INTEGER NOT NULL,
    -- ダ22超・着回数 
    dirtOver22PlacementCount_5 INTEGER NOT NULL,
    -- ダ22超・着回数 
    dirtOver22PlacementCount_6 INTEGER NOT NULL,
    -- 脚質傾向 
    runningStyleTendency_1 TEXT NOT NULL,
    -- 脚質傾向 
    runningStyleTendency_2 TEXT NOT NULL,
    -- 脚質傾向 
    runningStyleTendency_3 TEXT NOT NULL,
    -- 脚質傾向 
    runningStyleTendency_4 TEXT NOT NULL,
    -- 登録レース数 
    registeredRaceCount INTEGER NOT NULL
);
