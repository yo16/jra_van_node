DELETE FROM 
    OffspringMaster 
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
            OffspringMaster_NoPK 
    ) 
INSERT INTO 
    OffspringMaster 
SELECT 
    dataCategory,
    creationDate,
    bloodlineNumber,
    birthDate,
    genderCode,
    breedCode,
    coatColorCode,
    offspringImportCategory,
    importYear,
    producerCode,
    placeOfBirth
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

