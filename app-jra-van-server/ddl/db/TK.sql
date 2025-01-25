-- 特別登録馬
CREATE TABLE SpecialRegisteredHorses (
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
    -- 距離 
    distance INTEGER NULL,
    -- トラックコード 
    trackCode TEXT NULL,
    -- コース区分 
    courseCategory TEXT NOT NULL,
    -- ハンデ発表日 
    handicapAnnouncementDate TEXT NOT NULL,
    -- 登録頭数 
    registeredHorsesCount INTEGER NULL
);
