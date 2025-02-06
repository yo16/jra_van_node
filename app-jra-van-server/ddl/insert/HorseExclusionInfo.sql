DELETE FROM 
    HorseExclusionInfo 
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
                    bloodlineNumber,
                    entryOrder
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            HorseExclusionInfo_NoPK 
    ) 
INSERT INTO 
    HorseExclusionInfo 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    bloodlineNumber,
    entryOrder,
    entryCategory,
    exclusionStatus
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

