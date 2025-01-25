-- 繁殖馬マスタ
CREATE TABLE BreedingHorseMaster (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 繁殖登録番号 
    breedingRegistrationNumber TEXT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- 馬名 
    horseName TEXT NULL,
    -- 馬名半角ｶﾅ 
    horseNameKana TEXT NULL,
    -- 馬名欧字 
    horseNameEng TEXT NULL,
    -- 生年 
    birthYear TEXT NULL,
    -- 性別コード 
    genderCode TEXT NULL,
    -- 品種コード 
    breedCode TEXT NULL,
    -- 毛色コード 
    coatColorCode TEXT NULL,
    -- 繁殖馬持込区分 
    breedingHorseImportDivision TEXT NULL,
    -- 輸入年 
    importYear TEXT NULL,
    -- 産地名 
    placeOfBirth TEXT NULL,
    -- 父馬繁殖登録番号 
    fatherHorseBreedingRegNumber TEXT NULL,
    -- 母馬繁殖登録番号 
    motherHorseBreedingRegNumber TEXT NULL
);
