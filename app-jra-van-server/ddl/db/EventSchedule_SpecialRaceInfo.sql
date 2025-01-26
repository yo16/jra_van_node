-- 開催スケジュール.<重賞案内> 
CREATE TABLE IF NOT EXISTS EventSchedule_SpecialRaceInfo (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 特別競走番号 
    specialRaceNumber TEXT NULL,
    -- 競走名本題 
    raceName TEXT NULL,
    -- 競走名略称10文字 
    raceNameAbbr10 TEXT NULL,
    -- 競走名略称6文字 
    raceNameAbbr6 TEXT NULL,
    -- 競走名略称3文字 
    raceNameAbbr3 TEXT NULL,
    -- 重賞回次[第N回] 
    gradeCount INTEGER NULL,
    -- グレードコード 
    gradeCode TEXT NULL,
    -- 競走種別コード 
    raceTypeCode TEXT NULL,
    -- 競走記号コード 
    raceSymbolCode TEXT NULL,
    -- 重量種別コード 
    weightTypeCode TEXT NULL,
    -- 距離 
    distance INTEGER NULL,
    -- トラックコード 
    trackCode TEXT NULL
);
