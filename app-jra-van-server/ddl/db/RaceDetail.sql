-- レース詳細
CREATE TABLE IF NOT EXISTS RaceDetail (
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
    -- 曜日コード 
    weekdayCode TEXT NOT NULL,
    -- 特別競走番号 
    specialRaceNumber TEXT NULL,
    -- 競走名本題 
    raceName TEXT NULL,
    -- 競走名副題 
    raceNameSub TEXT NULL,
    -- 競走名カッコ内 
    raceNameParentheses TEXT NULL,
    -- 競走名本題欧字 
    raceNameEng TEXT NULL,
    -- 競走名副題欧字 
    raceNameSubEng TEXT NULL,
    -- 競走名カッコ内欧字 
    raceNameParenthesesEng TEXT NULL,
    -- 競走名略称10文字 
    raceNameAbbr10 TEXT NULL,
    -- 競走名略称6文字 
    raceNameAbbr6 TEXT NULL,
    -- 競走名略称3文字 
    raceNameAbbr3 TEXT NULL,
    -- 競走名区分 
    raceTitleCategory TEXT NULL,
    -- 重賞回次[第N回] 
    gradeCount INTEGER NULL,
    -- グレードコード 
    gradeCode TEXT NULL,
    -- 変更前グレードコード 
    previousGradeCode TEXT NULL,
    -- 競走種別コード 
    raceTypeCode TEXT NOT NULL,
    -- 競走記号コード 
    raceSymbolCode TEXT NOT NULL,
    -- 重量種別コード 
    weightTypeCode TEXT NOT NULL,
    -- 競走条件コード 2歳条件 
    raceConditionCode2YearOld TEXT NULL,
    -- 競走条件コード 3歳条件 
    raceConditionCode3YearOld TEXT NULL,
    -- 競走条件コード 4歳条件 
    raceConditionCode4YearOld TEXT NULL,
    -- 競走条件コード 5歳以上条件 
    raceConditionCode5YearOldAndAbove TEXT NULL,
    -- 競走条件コード 最若年条件 
    raceConditionCodeYoungest TEXT NULL,
    -- 競走条件名称 
    raceConditionName TEXT NULL,
    -- 距離 
    distance INTEGER NOT NULL,
    -- 変更前距離 
    previousDistance INTEGER NULL,
    -- トラックコード 
    trackCode TEXT NOT NULL,
    -- 変更前トラックコード 
    previousTrackCode TEXT NULL,
    -- コース区分 
    courseCategory TEXT NULL,
    -- 変更前コース区分 
    previousCourseCategory TEXT NULL,
    -- 本賞金 
    mainPrizeMoney_1 INTEGER NULL,
    -- 本賞金 
    mainPrizeMoney_2 INTEGER NULL,
    -- 本賞金 
    mainPrizeMoney_3 INTEGER NULL,
    -- 本賞金 
    mainPrizeMoney_4 INTEGER NULL,
    -- 本賞金 
    mainPrizeMoney_5 INTEGER NULL,
    -- 本賞金 
    mainPrizeMoney_6 INTEGER NULL,
    -- 本賞金 
    mainPrizeMoney_7 INTEGER NULL,
    -- 変更前本賞金 
    previousPrizeMoney_1 INTEGER NULL,
    -- 変更前本賞金 
    previousPrizeMoney_2 INTEGER NULL,
    -- 変更前本賞金 
    previousPrizeMoney_3 INTEGER NULL,
    -- 変更前本賞金 
    previousPrizeMoney_4 INTEGER NULL,
    -- 変更前本賞金 
    previousPrizeMoney_5 INTEGER NULL,
    -- 付加賞金 
    additionalPrizeMoney_1 INTEGER NULL,
    -- 付加賞金 
    additionalPrizeMoney_2 INTEGER NULL,
    -- 付加賞金 
    additionalPrizeMoney_3 INTEGER NULL,
    -- 付加賞金 
    additionalPrizeMoney_4 INTEGER NULL,
    -- 付加賞金 
    additionalPrizeMoney_5 INTEGER NULL,
    -- 変更前付加賞金 
    previousAdditionalPrizeMoney_1 INTEGER NULL,
    -- 変更前付加賞金 
    previousAdditionalPrizeMoney_2 INTEGER NULL,
    -- 変更前付加賞金 
    previousAdditionalPrizeMoney_3 INTEGER NULL,
    -- 発走時刻 
    startTime TEXT NOT NULL,
    -- 変更前発走時刻 
    previousStartTime TEXT NULL,
    -- 登録頭数 
    registeredHorsesCount INTEGER NOT NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NULL,
    -- 入線頭数 
    horsesFinishedCount INTEGER NULL,
    -- 天候コード 
    weatherCode TEXT NULL,
    -- 芝馬場状態コード 
    turfConditionCode TEXT NULL,
    -- ダート馬場状態コード 
    dirtConditionCode TEXT NULL,
    -- ラップタイム 
    lapTime_1 REAL NULL,
    -- ラップタイム 
    lapTime_2 REAL NULL,
    -- ラップタイム 
    lapTime_3 REAL NULL,
    -- ラップタイム 
    lapTime_4 REAL NULL,
    -- ラップタイム 
    lapTime_5 REAL NULL,
    -- ラップタイム 
    lapTime_6 REAL NULL,
    -- ラップタイム 
    lapTime_7 REAL NULL,
    -- ラップタイム 
    lapTime_8 REAL NULL,
    -- ラップタイム 
    lapTime_9 REAL NULL,
    -- ラップタイム 
    lapTime_10 REAL NULL,
    -- ラップタイム 
    lapTime_11 REAL NULL,
    -- ラップタイム 
    lapTime_12 REAL NULL,
    -- ラップタイム 
    lapTime_13 REAL NULL,
    -- ラップタイム 
    lapTime_14 REAL NULL,
    -- ラップタイム 
    lapTime_15 REAL NULL,
    -- ラップタイム 
    lapTime_16 REAL NULL,
    -- ラップタイム 
    lapTime_17 REAL NULL,
    -- ラップタイム 
    lapTime_18 REAL NULL,
    -- ラップタイム 
    lapTime_19 REAL NULL,
    -- ラップタイム 
    lapTime_20 REAL NULL,
    -- ラップタイム 
    lapTime_21 REAL NULL,
    -- ラップタイム 
    lapTime_22 REAL NULL,
    -- ラップタイム 
    lapTime_23 REAL NULL,
    -- ラップタイム 
    lapTime_24 REAL NULL,
    -- ラップタイム 
    lapTime_25 REAL NULL,
    -- 障害マイルタイム 
    obstacleMileTime REAL NULL,
    -- 前3ハロン 
    first3Furlongs REAL NULL,
    -- 前4ハロン 
    first4Furlongs REAL NULL,
    -- 後3ハロン 
    last3Furlongs REAL NULL,
    -- 後4ハロン 
    last4Furlongs REAL NULL,
    -- コーナー 
    CornerPassingOrder_1_corner TEXT NULL,
    -- 周回数 
    CornerPassingOrder_1_lapNumber TEXT NULL,
    -- 各通過順位 
    CornerPassingOrder_1_individualPassingOrder TEXT NULL,
    -- コーナー 
    CornerPassingOrder_2_corner TEXT NULL,
    -- 周回数 
    CornerPassingOrder_2_lapNumber TEXT NULL,
    -- 各通過順位 
    CornerPassingOrder_2_individualPassingOrder TEXT NULL,
    -- コーナー 
    CornerPassingOrder_3_corner TEXT NULL,
    -- 周回数 
    CornerPassingOrder_3_lapNumber TEXT NULL,
    -- 各通過順位 
    CornerPassingOrder_3_individualPassingOrder TEXT NULL,
    -- コーナー 
    CornerPassingOrder_4_corner TEXT NULL,
    -- 周回数 
    CornerPassingOrder_4_lapNumber TEXT NULL,
    -- 各通過順位 
    CornerPassingOrder_4_individualPassingOrder TEXT NULL,
    -- レコード更新区分 
    recordUpdateCategory TEXT NULL
);
