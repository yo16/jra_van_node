DELETE FROM 
    JockeyChange 
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
                    announcementDateTime,
                    horseNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            JockeyChange_NoPK 
    ) 
INSERT INTO 
    JockeyChange 
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
    newCarriedWeight,
    newJockeyCode,
    newApprenticeJockeyCode,
    oldCarriedWeight,
    oldJockeyCode,
    oldApprenticeJockeyCode
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

