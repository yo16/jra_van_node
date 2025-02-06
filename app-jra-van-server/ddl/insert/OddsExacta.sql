DELETE FROM 
    OddsExacta 
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
                    announcementDateTime
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            OddsExacta_NoPK 
    ) 
INSERT INTO 
    OddsExacta 
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
    saleFlagQuinella,
    totalQuinellaVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

