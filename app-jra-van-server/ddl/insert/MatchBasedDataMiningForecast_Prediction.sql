DELETE FROM 
    MatchBasedDataMiningForecast_Prediction 
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
                    seq
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            MatchBasedDataMiningForecast_Prediction_NoPK 
    ) 
INSERT INTO 
    MatchBasedDataMiningForecast_Prediction 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    horseNumber,
    predictedScore
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

