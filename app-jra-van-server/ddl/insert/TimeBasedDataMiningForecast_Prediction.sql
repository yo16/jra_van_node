DELETE FROM 
    TimeBasedDataMiningForecast_Prediction 
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
            TimeBasedDataMiningForecast_Prediction_NoPK 
    ) 
INSERT INTO 
    TimeBasedDataMiningForecast_Prediction 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    horseNumber,
    predictedTime,
    predictionErrorPlus,
    predictionErrorMinus
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

