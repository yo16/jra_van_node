DELETE FROM 
    HorseWeight_HorseWeightInfo 
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
            HorseWeight_HorseWeightInfo_NoPK 
    ) 
INSERT INTO 
    HorseWeight_HorseWeightInfo 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

