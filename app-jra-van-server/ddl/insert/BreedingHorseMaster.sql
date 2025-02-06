DELETE FROM 
    BreedingHorseMaster 
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
            BreedingHorseMaster_NoPK 
    ) 
INSERT INTO 
    BreedingHorseMaster 
SELECT 
    dataCategory,
    creationDate,
    breedingRegistrationNumber,
    bloodlineNumber,
    horseName,
    horseNameKana,
    horseNameEng,
    birthYear,
    genderCode,
    breedCode,
    coatColorCode,
    breedingHorseImportDivision,
    importYear,
    placeOfBirth,
    fatherHorseBreedingRegNumber,
    motherHorseBreedingRegNumber
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

