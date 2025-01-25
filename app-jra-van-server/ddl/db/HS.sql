-- 競走馬市場取引価格
CREATE TABLE HorseMarketTransactionPrice (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    bloodlineNumber TEXT NOT NULL,
    sireRegistrationNumber TEXT NOT NULL,
    damRegistrationNumber TEXT NOT NULL,
    birthYear TEXT NOT NULL,
    marketCode TEXT NOT NULL,
    organizerName TEXT NOT NULL,
    marketName TEXT NOT NULL,
    marketStartDate TEXT NOT NULL,
    marketEndDate TEXT NOT NULL,
    horseAgeAtTransaction INTEGER NOT NULL,
    transactionPrice INTEGER NOT NULL
);
