-- 競走馬市場取引価格
CREATE TABLE HorseMarketTransactionPrice (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NOT NULL,
    -- 父馬 繁殖登録番号 
    sireRegistrationNumber TEXT NOT NULL,
    -- 母馬 繁殖登録番号 
    damRegistrationNumber TEXT NOT NULL,
    -- 生年 
    birthYear TEXT NOT NULL,
    -- 主催者・市場コード 
    marketCode TEXT NOT NULL,
    -- 主催者名称 
    organizerName TEXT NOT NULL,
    -- 市場の名称 
    marketName TEXT NOT NULL,
    -- 市場の開催期間(開始日) 
    marketStartDate TEXT NOT NULL,
    -- 市場の開催期間(終了日) 
    marketEndDate TEXT NOT NULL,
    -- 取引時の競走馬の年齢 
    horseAgeAtTransaction INTEGER NOT NULL,
    -- 取引価格 
    transactionPrice INTEGER NOT NULL
);
