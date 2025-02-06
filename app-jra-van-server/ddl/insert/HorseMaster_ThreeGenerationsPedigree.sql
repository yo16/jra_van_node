DELETE FROM 
    HorseMaster_ThreeGenerationsPedigree 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    bloodlineNumber,
                    seq
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            HorseMaster_ThreeGenerationsPedigree_NoPK 
    ) 
INSERT INTO 
    HorseMaster_ThreeGenerationsPedigree 
SELECT 
    bloodlineNumber,
    seq,
    breedingRegistrationNumber
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

