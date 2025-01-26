-- 馬毎レース情報
CREATE TABLE IF NOT EXISTS HorseRaceInformation (
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
    -- 枠番 
    frameNumber INTEGER NULL,
    -- 馬番 
    horseNumber INTEGER NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- 馬名 
    horseName TEXT NULL,
    -- 馬記号コード 
    horseSymbolCode TEXT NULL,
    -- 性別コード 
    genderCode TEXT NULL,
    -- 品種コード 
    breedCode TEXT NULL,
    -- 毛色コード 
    coatColorCode TEXT NULL,
    -- 馬齢 
    age INTEGER NULL,
    -- 東西所属コード 
    horseRegionAffiliationCode TEXT NULL,
    -- 調教師コード 
    trainerCode TEXT NULL,
    -- 調教師名略称 
    trainerNameAbbreviation TEXT NULL,
    -- 馬主コード 
    ownerCode TEXT NULL,
    -- 馬主名(法人格無) 
    ownerNameWithoutCorp TEXT NULL,
    -- 服色標示 
    jockeyUniformColor TEXT NULL,
    -- 負担重量 
    carriedWeight REAL NULL,
    -- 変更前負担重量 
    previousCarriedWeight REAL NULL,
    -- ブリンカー使用区分 
    blinkerUsage TEXT NULL,
    -- 騎手コード 
    jockeyCode TEXT NULL,
    -- 変更前騎手コード 
    previousJockeyCode TEXT NULL,
    -- 騎手名略称 
    jockeyNameAbbreviation TEXT NULL,
    -- 変更前騎手名略称 
    previousJockeyNameShort TEXT NULL,
    -- 騎手見習コード 
    apprenticeJockeyCode TEXT NULL,
    -- 変更前騎手見習コード 
    previousApprenticeJockeyCode TEXT NULL,
    -- 馬体重 
    HorseWeight INTEGER NULL,
    -- 増減符号 
    weightChangeSign INTEGER NULL,
    -- 増減差 
    weightChange INTEGER NULL,
    -- 異常区分コード 
    abnormalityCode TEXT NULL,
    -- 入線順位 
    finishOrder INTEGER NULL,
    -- 確定着順 
    confirmedPlacement INTEGER NULL,
    -- 同着区分 
    deadHeatFlag TEXT NULL,
    -- 同着頭数 
    deadHeatCount INTEGER NULL,
    -- 走破タイム 
    raceTime REAL NULL,
    -- 着差コード 
    marginCode TEXT NULL,
    -- ＋着差コード 
    plusMarginCode TEXT NULL,
    -- ＋＋着差コード 
    doublePlusMarginCode TEXT NULL,
    -- 1コーナーでの順位 
    corner1Order INTEGER NULL,
    -- 2コーナーでの順位 
    corner2Order INTEGER NULL,
    -- 3コーナーでの順位 
    corner3Order INTEGER NULL,
    -- 4コーナーでの順位 
    corner4Order INTEGER NULL,
    -- 単勝オッズ 
    winOdds REAL NULL,
    -- 単勝人気順 
    winPopularityOrder INTEGER NULL,
    -- 獲得本賞金 
    prizeMoney INTEGER NULL,
    -- 獲得付加賞金 
    additionalPrizeMoney INTEGER NULL,
    -- 後4ハロンタイム 
    last4FTime REAL NULL,
    -- 後3ハロンタイム 
    last3FTime REAL NULL,
    -- 血統登録番号 
    FirstPlaceHorseInfo_1 TEXT NULL,
    -- 血統登録番号 
    FirstPlaceHorseInfo_2 TEXT NULL,
    -- 血統登録番号 
    FirstPlaceHorseInfo_3 TEXT NULL,
    -- タイム差 
    timeDifference REAL NULL,
    -- レコード更新区分 
    recordUpdateCategory TEXT NULL,
    -- マイニング区分 
    miningCategory TEXT NULL,
    -- マイニング予想走破タイム 
    miningEstimatedTime REAL NULL,
    -- マイニング予想誤差(信頼度)＋ 
    miningEstimatedErrorPlus REAL NULL,
    -- マイニング予想誤差(信頼度)－ 
    miningEstimatedErrorMinus REAL NULL,
    -- マイニング予想順位 
    miningEstimatedRank INTEGER NULL,
    -- 今回レース脚質判定 
    racePaceDetermination TEXT NULL
);
