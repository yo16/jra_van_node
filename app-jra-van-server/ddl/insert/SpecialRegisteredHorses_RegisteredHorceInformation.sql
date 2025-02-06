DELETE FROM 
    SpecialRegisteredHorses_RegisteredHorceInformation 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    eventYear,
                    eventMonthDay,
                    raceCourseCode,
                    eventRound,
                    eventDay,
                    raceNumber,
                    seq
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            SpecialRegisteredHorses_RegisteredHorceInformation_NoPK 
    ) 
INSERT INTO 
    SpecialRegisteredHorses_RegisteredHorceInformation 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    sequenceNumber,
    bloodlineNumber,
    horseName,
    horseSymbolCode,
    genderCode,
    trainerRegionAffiliationCode,
    trainerCode,
    trainerNameAbbreviation,
    carriedWeight,
    interactionCategory
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

