DELETE FROM 
    HorseWeight 
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
            HorseWeight_NoPK 
    ) 
INSERT INTO 
    HorseWeight 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

