-- 産駒マスタ
CREATE TABLE IF NOT EXISTS OffspringMaster (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- 生年月日 
    birthDate TEXT NULL,
    -- 性別コード 
    genderCode TEXT NULL,
    -- 品種コード 
    breedCode TEXT NULL,
    -- 毛色コード 
    coatColorCode TEXT NULL,
    -- 産駒持込区分 
    offspringImportCategory TEXT NULL,
    -- 輸入年 
    importYear TEXT NULL,
    -- 生産者コード 
    producerCode TEXT NULL,
    -- 産地名 
    placeOfBirth TEXT NULL
);
