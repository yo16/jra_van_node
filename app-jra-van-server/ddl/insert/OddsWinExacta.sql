DELETE FROM 
    OddsWinExacta 
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
            OddsWinExacta_NoPK 
    ) 
INSERT INTO 
    OddsWinExacta 
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
    saleFlagExacta,
    totalExactaVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

