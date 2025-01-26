-- 系統情報
CREATE TABLE IF NOT EXISTS BloodlineInfo (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 繁殖登録番号 
    breedingRegistrationNumber TEXT NULL,
    -- 系統ID 
    lineageId TEXT NULL,
    -- 系統名 
    lineageName TEXT NULL,
    -- 系統説明 
    lineageDescription TEXT NULL
);
