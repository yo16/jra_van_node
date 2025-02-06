DELETE FROM 
    RaceCancellation 
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
                    horseNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            RaceCancellation_NoPK 
    ) 
INSERT INTO 
    RaceCancellation 
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
    horseNumber,
    horseName,
    reasonCategory
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

