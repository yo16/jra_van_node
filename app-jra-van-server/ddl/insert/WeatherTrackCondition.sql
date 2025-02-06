DELETE FROM 
    WeatherTrackCondition 
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
                    announcementDateTime,
                    changeIdentifier
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            WeatherTrackCondition_NoPK 
    ) 
INSERT INTO 
    WeatherTrackCondition 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    announcementDateTime,
    changeIdentifier,
    currentWeatherCondition,
    currentTurfCondition,
    currentDirtCondition,
    oldWeatherCondition,
    oldTurfCondition,
    oldDirtCondition
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

