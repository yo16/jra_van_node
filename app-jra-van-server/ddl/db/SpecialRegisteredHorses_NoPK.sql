-- 特別登録馬 NoPK
CREATE TABLE IF NOT EXISTS SpecialRegisteredHorses_NoPK (
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
    -- 距離 
    distance INTEGER NOT NULL,
    -- トラックコード 
    trackCode TEXT NOT NULL,
    -- コース区分 
    courseCategory TEXT NULL,
    -- ハンデ発表日 
    handicapAnnouncementDate TEXT NULL,
    -- 登録頭数 
    registeredHorsesCount INTEGER NOT NULL
);
