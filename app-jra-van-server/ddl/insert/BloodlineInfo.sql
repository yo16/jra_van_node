DELETE FROM 
    BloodlineInfo 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    breedingRegistrationNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            BloodlineInfo_NoPK 
    ) 
INSERT INTO 
    BloodlineInfo 
SELECT 
    dataCategory,
    creationDate,
    breedingRegistrationNumber,
    lineageId,
    lineageName,
    lineageDescription
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

