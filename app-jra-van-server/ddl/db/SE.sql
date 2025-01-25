-- 馬毎レース情報
CREATE TABLE HorseRaceInformation (
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
    -- 枠番 
    frameNumber INTEGER NOT NULL,
    -- 馬番 
    horseNumber INTEGER NOT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NOT NULL,
    -- 馬名 
    horseName TEXT NOT NULL,
    -- 馬記号コード 
    horseSymbolCode TEXT NOT NULL,
    -- 性別コード 
    genderCode TEXT NOT NULL,
    -- 品種コード 
    breedCode TEXT NOT NULL,
    -- 毛色コード 
    coatColorCode TEXT NOT NULL,
    -- 馬齢 
    age INTEGER NOT NULL,
    -- 東西所属コード 
    horseRegionAffiliationCode TEXT NOT NULL,
    -- 調教師コード 
    trainerCode TEXT NOT NULL,
    -- 調教師名略称 
    trainerNameAbbreviation TEXT NOT NULL,
    -- 馬主コード 
    ownerCode TEXT NOT NULL,
    -- 馬主名(法人格無) 
    ownerNameWithoutCorp TEXT NOT NULL,
    -- 服色標示 
    jockeyUniformColor TEXT NOT NULL,
    -- 負担重量 
    carriedWeight REAL NOT NULL,
    -- 変更前負担重量 
    previousCarriedWeight REAL NOT NULL,
    -- ブリンカー使用区分 
    blinkerUsage TEXT NOT NULL,
    -- 騎手コード 
    jockeyCode TEXT NOT NULL,
    -- 変更前騎手コード 
    previousJockeyCode TEXT NOT NULL,
    -- 騎手名略称 
    jockeyNameAbbreviation TEXT NOT NULL,
    -- 変更前騎手名略称 
    previousJockeyNameShort TEXT NOT NULL,
    -- 騎手見習コード 
    apprenticeJockeyCode TEXT NOT NULL,
    -- 変更前騎手見習コード 
    previousApprenticeJockeyCode TEXT NOT NULL,
    -- 馬体重 
    HorseWeight INTEGER NOT NULL,
    -- 増減符号 
    weightChangeSign INTEGER NOT NULL,
    -- 増減差 
    weightChange INTEGER NOT NULL,
    -- 異常区分コード 
    abnormalityCode TEXT NOT NULL,
    -- 入線順位 
    finishOrder INTEGER NOT NULL,
    -- 確定着順 
    confirmedPlacement INTEGER NOT NULL,
    -- 同着区分 
    deadHeatFlag TEXT NOT NULL,
    -- 同着頭数 
    deadHeatCount INTEGER NOT NULL,
    -- 走破タイム 
    raceTime REAL NOT NULL,
    -- 着差コード 
    marginCode TEXT NOT NULL,
    -- ＋着差コード 
    plusMarginCode TEXT NOT NULL,
    -- ＋＋着差コード 
    doublePlusMarginCode TEXT NOT NULL,
    -- 1コーナーでの順位 
    corner1Order INTEGER NOT NULL,
    -- 2コーナーでの順位 
    corner2Order INTEGER NOT NULL,
    -- 3コーナーでの順位 
    corner3Order INTEGER NOT NULL,
    -- 4コーナーでの順位 
    corner4Order INTEGER NOT NULL,
    -- 単勝オッズ 
    winOdds REAL NOT NULL,
    -- 単勝人気順 
    winPopularityOrder INTEGER NOT NULL,
    -- 獲得本賞金 
    prizeMoney INTEGER NOT NULL,
    -- 獲得付加賞金 
    additionalPrizeMoney INTEGER NOT NULL,
    -- 後4ハロンタイム 
    last4FTime REAL NOT NULL,
    -- 後3ハロンタイム 
    last3FTime REAL NOT NULL,
    -- 血統登録番号 
    FirstPlaceHorseInfo_1 TEXT NOT NULL,
    -- 血統登録番号 
    FirstPlaceHorseInfo_2 TEXT NOT NULL,
    -- 血統登録番号 
    FirstPlaceHorseInfo_3 TEXT NOT NULL,
    -- タイム差 
    timeDifference REAL NOT NULL,
    -- レコード更新区分 
    recordUpdateCategory TEXT NOT NULL,
    -- マイニング区分 
    miningCategory TEXT NOT NULL,
    -- マイニング予想走破タイム 
    miningEstimatedTime REAL NOT NULL,
    -- マイニング予想誤差(信頼度)＋ 
    miningEstimatedErrorPlus REAL NOT NULL,
    -- マイニング予想誤差(信頼度)－ 
    miningEstimatedErrorMinus REAL NOT NULL,
    -- マイニング予想順位 
    miningEstimatedRank INTEGER NOT NULL,
    -- 今回レース脚質判定 
    racePaceDetermination TEXT NOT NULL
);
