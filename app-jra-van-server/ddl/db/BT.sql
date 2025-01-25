-- 系統情報
CREATE TABLE BloodlineInfo (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 繁殖登録番号 
    breedingRegistrationNumber TEXT NOT NULL,
    -- 系統ID 
    lineageId TEXT NOT NULL,
    -- 系統名 
    lineageName TEXT NOT NULL,
    -- 系統説明 
    lineageDescription TEXT NOT NULL
);
