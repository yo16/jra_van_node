-- 産駒マスタ
CREATE TABLE OffspringMaster (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NOT NULL,
    -- 生年月日 
    birthDate TEXT NOT NULL,
    -- 性別コード 
    genderCode TEXT NOT NULL,
    -- 品種コード 
    breedCode TEXT NOT NULL,
    -- 毛色コード 
    coatColorCode TEXT NOT NULL,
    -- 産駒持込区分 
    offspringImportCategory TEXT NOT NULL,
    -- 輸入年 
    importYear TEXT NOT NULL,
    -- 生産者コード 
    producerCode TEXT NOT NULL,
    -- 産地名 
    placeOfBirth TEXT NOT NULL
);
