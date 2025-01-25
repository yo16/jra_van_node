-- 特別登録馬.<登録馬毎情報> 
CREATE TABLE TK_RegisteredHorceInformation (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 連番 
    sequenceNumber INTEGER NOT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- 馬名 
    horseName TEXT NULL,
    -- 馬記号コード 
    horseSymbolCode TEXT NULL,
    -- 性別コード 
    genderCode TEXT NULL,
    -- 調教師東西所属コード 
    trainerRegionAffiliationCode TEXT NULL,
    -- 調教師コード 
    trainerCode TEXT NULL,
    -- 調教師名略称 
    trainerNameAbbreviation TEXT NULL,
    -- 負担重量 
    carriedWeight REAL NULL,
    -- 交流区分 
    interactionCategory TEXT NULL
);
