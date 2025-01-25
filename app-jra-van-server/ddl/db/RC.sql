-- レコードマスタ
CREATE TABLE RecordMaster (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- レコード識別区分 
    recordIdentificationDivision TEXT NOT NULL,
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
    -- 特別競走番号 
    specialRaceNumber TEXT NOT NULL,
    -- 競走名本題 
    raceName TEXT NOT NULL,
    -- グレードコード 
    gradeCode TEXT NOT NULL,
    -- 競走種別コード 
    raceTypeCode TEXT NOT NULL,
    -- 距離 
    distance INTEGER NOT NULL,
    -- トラックコード 
    trackCode TEXT NOT NULL,
    -- レコード区分 
    recordDelimiter TEXT NOT NULL,
    -- レコードタイム 
    recordTime REAL NOT NULL,
    -- 天候コード 
    weatherCode TEXT NOT NULL,
    -- 芝馬場状態コード 
    turfConditionCode TEXT NOT NULL,
    -- ダート馬場状態コード 
    dirtConditionCode TEXT NOT NULL,
    -- 血統登録番号 
    RecordHolderHorseInfo_1_bloodlineNumber TEXT NOT NULL,
    -- 調教師コード 
    RecordHolderHorseInfo_1_trainerCode TEXT NOT NULL,
    -- 負担重量 
    RecordHolderHorseInfo_1_carriedWeight TEXT NOT NULL,
    -- 騎手コード 
    RecordHolderHorseInfo_1_jockeyCode TEXT NOT NULL,
    -- 血統登録番号 
    RecordHolderHorseInfo_2_bloodlineNumber TEXT NOT NULL,
    -- 調教師コード 
    RecordHolderHorseInfo_2_trainerCode TEXT NOT NULL,
    -- 負担重量 
    RecordHolderHorseInfo_2_carriedWeight TEXT NOT NULL,
    -- 騎手コード 
    RecordHolderHorseInfo_2_jockeyCode TEXT NOT NULL,
    -- 血統登録番号 
    RecordHolderHorseInfo_3_bloodlineNumber TEXT NOT NULL,
    -- 調教師コード 
    RecordHolderHorseInfo_3_trainerCode TEXT NOT NULL,
    -- 負担重量 
    RecordHolderHorseInfo_3_carriedWeight TEXT NOT NULL,
    -- 騎手コード 
    RecordHolderHorseInfo_3_jockeyCode TEXT NOT NULL
);
