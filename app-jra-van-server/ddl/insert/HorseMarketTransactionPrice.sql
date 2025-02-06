DELETE FROM 
    HorseMarketTransactionPrice 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    bloodlineNumber,
                    marketCode,
                    marketStartDate
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            HorseMarketTransactionPrice_NoPK 
    ) 
INSERT INTO 
    HorseMarketTransactionPrice 
SELECT 
    dataCategory,
    creationDate,
    bloodlineNumber,
    sireRegistrationNumber,
    damRegistrationNumber,
    birthYear,
    marketCode,
    organizerName,
    marketName,
    marketStartDate,
    marketEndDate,
    horseAgeAtTransaction,
    transactionPrice
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

