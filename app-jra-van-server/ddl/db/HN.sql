-- 繁殖馬マスタ
CREATE TABLE BreedingHorseMaster (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 繁殖登録番号 
    breedingRegistrationNumber TEXT NOT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NOT NULL,
    -- 馬名 
    horseName TEXT NOT NULL,
    -- 馬名半角ｶﾅ 
    horseNameKana TEXT NOT NULL,
    -- 馬名欧字 
    horseNameEng TEXT NOT NULL,
    -- 生年 
    birthYear TEXT NOT NULL,
    -- 性別コード 
    genderCode TEXT NOT NULL,
    -- 品種コード 
    breedCode TEXT NOT NULL,
    -- 毛色コード 
    coatColorCode TEXT NOT NULL,
    -- 繁殖馬持込区分 
    breedingHorseImportDivision TEXT NOT NULL,
    -- 輸入年 
    importYear TEXT NOT NULL,
    -- 産地名 
    placeOfBirth TEXT NOT NULL,
    -- 父馬繁殖登録番号 
    fatherHorseBreedingRegNumber TEXT NOT NULL,
    -- 母馬繁殖登録番号 
    motherHorseBreedingRegNumber TEXT NOT NULL
);
