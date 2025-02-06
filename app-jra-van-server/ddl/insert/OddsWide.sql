DELETE FROM 
    OddsWide 
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
                    raceNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            OddsWide_NoPK 
    ) 
INSERT INTO 
    OddsWide 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime,
    registeredHorsesCount,
    numberOfRunners,
    saleFlagWide,
    totalWideVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

