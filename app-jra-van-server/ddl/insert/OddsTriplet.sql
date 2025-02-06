DELETE FROM 
    OddsTriplet 
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
            OddsTriplet_NoPK 
    ) 
INSERT INTO 
    OddsTriplet 
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
    saleFlagTrifecta,
    totalTrifectaVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

