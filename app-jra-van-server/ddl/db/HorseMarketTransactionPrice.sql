-- 競走馬市場取引価格
CREATE TABLE IF NOT EXISTS HorseMarketTransactionPrice (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- 父馬 繁殖登録番号 
    sireRegistrationNumber TEXT NULL,
    -- 母馬 繁殖登録番号 
    damRegistrationNumber TEXT NULL,
    -- 生年 
    birthYear TEXT NULL,
    -- 主催者・市場コード 
    marketCode TEXT NULL,
    -- 主催者名称 
    organizerName TEXT NULL,
    -- 市場の名称 
    marketName TEXT NULL,
    -- 市場の開催期間(開始日) 
    marketStartDate TEXT NULL,
    -- 市場の開催期間(終了日) 
    marketEndDate TEXT NULL,
    -- 取引時の競走馬の年齢 
    horseAgeAtTransaction INTEGER NULL,
    -- 取引価格 
    transactionPrice INTEGER NULL,
    -- PRIMARY KEY
    PRIMARY KEY (bloodlineNumber, marketCode, marketStartDate)
);
