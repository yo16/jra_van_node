-- レコードマスタ
CREATE TABLE IF NOT EXISTS RecordMaster (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- レコード識別区分 
    recordIdentificationDivision TEXT NULL,
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
    -- 特別競走番号 
    specialRaceNumber TEXT NULL,
    -- 競走名本題 
    raceName TEXT NULL,
    -- グレードコード 
    gradeCode TEXT NULL,
    -- 競走種別コード 
    raceTypeCode TEXT NULL,
    -- 距離 
    distance INTEGER NULL,
    -- トラックコード 
    trackCode TEXT NULL,
    -- レコード区分 
    recordDelimiter TEXT NULL,
    -- レコードタイム 
    recordTime REAL NULL,
    -- 天候コード 
    weatherCode TEXT NULL,
    -- 芝馬場状態コード 
    turfConditionCode TEXT NULL,
    -- ダート馬場状態コード 
    dirtConditionCode TEXT NULL,
    -- 血統登録番号 
    RecordHolderHorseInfo_1_bloodlineNumber TEXT NULL,
    -- 調教師コード 
    RecordHolderHorseInfo_1_trainerCode TEXT NULL,
    -- 負担重量 
    RecordHolderHorseInfo_1_carriedWeight TEXT NULL,
    -- 騎手コード 
    RecordHolderHorseInfo_1_jockeyCode TEXT NULL,
    -- 血統登録番号 
    RecordHolderHorseInfo_2_bloodlineNumber TEXT NULL,
    -- 調教師コード 
    RecordHolderHorseInfo_2_trainerCode TEXT NULL,
    -- 負担重量 
    RecordHolderHorseInfo_2_carriedWeight TEXT NULL,
    -- 騎手コード 
    RecordHolderHorseInfo_2_jockeyCode TEXT NULL,
    -- 血統登録番号 
    RecordHolderHorseInfo_3_bloodlineNumber TEXT NULL,
    -- 調教師コード 
    RecordHolderHorseInfo_3_trainerCode TEXT NULL,
    -- 負担重量 
    RecordHolderHorseInfo_3_carriedWeight TEXT NULL,
    -- 騎手コード 
    RecordHolderHorseInfo_3_jockeyCode TEXT NULL,
    -- PRIMARY KEY
    PRIMARY KEY (recordIdentificationDivision, eventYear, eventMonthDay, raceCourseCode, eventRound, eventDay, raceNumber, specialRaceNumber, raceTypeCode, distance, trackCode)
);
