DELETE FROM 
    HorseNameOrigin 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    bloodlineNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            HorseNameOrigin_NoPK 
    ) 
INSERT INTO 
    HorseNameOrigin 
SELECT 
    dataCategory,
    creationDate,
    bloodlineNumber,
    HorseNameOrigin
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

