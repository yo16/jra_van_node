DELETE FROM 
    TimeBasedDataMiningForecast 
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
            TimeBasedDataMiningForecast_NoPK 
    ) 
INSERT INTO 
    TimeBasedDataMiningForecast 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    creationTime
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

