-- レース詳細
CREATE TABLE RaceDetail (
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
    -- 曜日コード 
    weekdayCode TEXT NULL,
    -- 特別競走番号 
    specialRaceNumber TEXT NOT NULL,
    -- 競走名本題 
    raceName TEXT NOT NULL,
    -- 競走名副題 
    raceNameSub TEXT NOT NULL,
    -- 競走名カッコ内 
    raceNameParentheses TEXT NOT NULL,
    -- 競走名本題欧字 
    raceNameEng TEXT NOT NULL,
    -- 競走名副題欧字 
    raceNameSubEng TEXT NOT NULL,
    -- 競走名カッコ内欧字 
    raceNameParenthesesEng TEXT NOT NULL,
    -- 競走名略称10文字 
    raceNameAbbr10 TEXT NOT NULL,
    -- 競走名略称6文字 
    raceNameAbbr6 TEXT NOT NULL,
    -- 競走名略称3文字 
    raceNameAbbr3 TEXT NOT NULL,
    -- 競走名区分 
    raceTitleCategory TEXT NOT NULL,
    -- 重賞回次[第N回] 
    gradeCount INTEGER NOT NULL,
    -- グレードコード 
    gradeCode TEXT NOT NULL,
    -- 変更前グレードコード 
    previousGradeCode TEXT NOT NULL,
    -- 競走種別コード 
    raceTypeCode TEXT NULL,
    -- 競走記号コード 
    raceSymbolCode TEXT NULL,
    -- 重量種別コード 
    weightTypeCode TEXT NULL,
    -- 競走条件コード 2歳条件 
    raceConditionCode2YearOld TEXT NOT NULL,
    -- 競走条件コード 3歳条件 
    raceConditionCode3YearOld TEXT NOT NULL,
    -- 競走条件コード 4歳条件 
    raceConditionCode4YearOld TEXT NOT NULL,
    -- 競走条件コード 5歳以上条件 
    raceConditionCode5YearOldAndAbove TEXT NOT NULL,
    -- 競走条件コード 最若年条件 
    raceConditionCodeYoungest TEXT NOT NULL,
    -- 競走条件名称 
    raceConditionName TEXT NOT NULL,
    -- 距離 
    distance INTEGER NULL,
    -- 変更前距離 
    previousDistance INTEGER NOT NULL,
    -- トラックコード 
    trackCode TEXT NULL,
    -- 変更前トラックコード 
    previousTrackCode TEXT NOT NULL,
    -- コース区分 
    courseCategory TEXT NOT NULL,
    -- 変更前コース区分 
    previousCourseCategory TEXT NOT NULL,
    -- 本賞金 
    mainPrizeMoney_1 INTEGER NOT NULL,
    -- 本賞金 
    mainPrizeMoney_2 INTEGER NOT NULL,
    -- 本賞金 
    mainPrizeMoney_3 INTEGER NOT NULL,
    -- 本賞金 
    mainPrizeMoney_4 INTEGER NOT NULL,
    -- 本賞金 
    mainPrizeMoney_5 INTEGER NOT NULL,
    -- 本賞金 
    mainPrizeMoney_6 INTEGER NOT NULL,
    -- 本賞金 
    mainPrizeMoney_7 INTEGER NOT NULL,
    -- 変更前本賞金 
    previousPrizeMoney_1 INTEGER NOT NULL,
    -- 変更前本賞金 
    previousPrizeMoney_2 INTEGER NOT NULL,
    -- 変更前本賞金 
    previousPrizeMoney_3 INTEGER NOT NULL,
    -- 変更前本賞金 
    previousPrizeMoney_4 INTEGER NOT NULL,
    -- 変更前本賞金 
    previousPrizeMoney_5 INTEGER NOT NULL,
    -- 付加賞金 
    additionalPrizeMoney_1 INTEGER NOT NULL,
    -- 付加賞金 
    additionalPrizeMoney_2 INTEGER NOT NULL,
    -- 付加賞金 
    additionalPrizeMoney_3 INTEGER NOT NULL,
    -- 付加賞金 
    additionalPrizeMoney_4 INTEGER NOT NULL,
    -- 付加賞金 
    additionalPrizeMoney_5 INTEGER NOT NULL,
    -- 変更前付加賞金 
    previousAdditionalPrizeMoney_1 INTEGER NOT NULL,
    -- 変更前付加賞金 
    previousAdditionalPrizeMoney_2 INTEGER NOT NULL,
    -- 変更前付加賞金 
    previousAdditionalPrizeMoney_3 INTEGER NOT NULL,
    -- 発走時刻 
    startTime TEXT NULL,
    -- 変更前発走時刻 
    previousStartTime TEXT NOT NULL,
    -- 登録頭数 
    registeredHorsesCount INTEGER NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NOT NULL,
    -- 入線頭数 
    horsesFinishedCount INTEGER NOT NULL,
    -- 天候コード 
    weatherCode TEXT NOT NULL,
    -- 芝馬場状態コード 
    turfConditionCode TEXT NOT NULL,
    -- ダート馬場状態コード 
    dirtConditionCode TEXT NOT NULL,
    -- ラップタイム 
    lapTime_1 REAL NOT NULL,
    -- ラップタイム 
    lapTime_2 REAL NOT NULL,
    -- ラップタイム 
    lapTime_3 REAL NOT NULL,
    -- ラップタイム 
    lapTime_4 REAL NOT NULL,
    -- ラップタイム 
    lapTime_5 REAL NOT NULL,
    -- ラップタイム 
    lapTime_6 REAL NOT NULL,
    -- ラップタイム 
    lapTime_7 REAL NOT NULL,
    -- ラップタイム 
    lapTime_8 REAL NOT NULL,
    -- ラップタイム 
    lapTime_9 REAL NOT NULL,
    -- ラップタイム 
    lapTime_10 REAL NOT NULL,
    -- ラップタイム 
    lapTime_11 REAL NOT NULL,
    -- ラップタイム 
    lapTime_12 REAL NOT NULL,
    -- ラップタイム 
    lapTime_13 REAL NOT NULL,
    -- ラップタイム 
    lapTime_14 REAL NOT NULL,
    -- ラップタイム 
    lapTime_15 REAL NOT NULL,
    -- ラップタイム 
    lapTime_16 REAL NOT NULL,
    -- ラップタイム 
    lapTime_17 REAL NOT NULL,
    -- ラップタイム 
    lapTime_18 REAL NOT NULL,
    -- ラップタイム 
    lapTime_19 REAL NOT NULL,
    -- ラップタイム 
    lapTime_20 REAL NOT NULL,
    -- ラップタイム 
    lapTime_21 REAL NOT NULL,
    -- ラップタイム 
    lapTime_22 REAL NOT NULL,
    -- ラップタイム 
    lapTime_23 REAL NOT NULL,
    -- ラップタイム 
    lapTime_24 REAL NOT NULL,
    -- ラップタイム 
    lapTime_25 REAL NOT NULL,
    -- 障害マイルタイム 
    obstacleMileTime REAL NOT NULL,
    -- 前3ハロン 
    first3Furlongs REAL NOT NULL,
    -- 前4ハロン 
    first4Furlongs REAL NOT NULL,
    -- 後3ハロン 
    last3Furlongs REAL NOT NULL,
    -- 後4ハロン 
    last4Furlongs REAL NOT NULL,
    -- コーナー 
    CornerPassingOrder_1_corner TEXT NOT NULL,
    -- 周回数 
    CornerPassingOrder_1_lapNumber TEXT NOT NULL,
    -- 各通過順位 
    CornerPassingOrder_1_individualPassingOrder TEXT NOT NULL,
    -- コーナー 
    CornerPassingOrder_2_corner TEXT NOT NULL,
    -- 周回数 
    CornerPassingOrder_2_lapNumber TEXT NOT NULL,
    -- 各通過順位 
    CornerPassingOrder_2_individualPassingOrder TEXT NOT NULL,
    -- コーナー 
    CornerPassingOrder_3_corner TEXT NOT NULL,
    -- 周回数 
    CornerPassingOrder_3_lapNumber TEXT NOT NULL,
    -- 各通過順位 
    CornerPassingOrder_3_individualPassingOrder TEXT NOT NULL,
    -- コーナー 
    CornerPassingOrder_4_corner TEXT NOT NULL,
    -- 周回数 
    CornerPassingOrder_4_lapNumber TEXT NOT NULL,
    -- 各通過順位 
    CornerPassingOrder_4_individualPassingOrder TEXT NOT NULL,
    -- レコード更新区分 
    recordUpdateCategory TEXT NOT NULL
);
