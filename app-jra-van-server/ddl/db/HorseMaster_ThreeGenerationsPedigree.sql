-- 競走馬マスタ.<3代血統情報> 
CREATE TABLE IF NOT EXISTS HorseMaster_ThreeGenerationsPedigree (
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- SEQ
    seq INTEGER NOT NULL,
    -- 繁殖登録番号 
    breedingRegistrationNumber TEXT NULL,
    -- PRIMARY KEY
    PRIMARY KEY (bloodlineNumber, seq)
);
