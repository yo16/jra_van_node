DELETE FROM 
    WoodChipTraining 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    trainingCenterCategory,
                    trainingDate,
                    trainingTime,
                    bloodlineNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            WoodChipTraining_NoPK 
    ) 
INSERT INTO 
    WoodChipTraining 
SELECT 
    dataCategory,
    creationDate,
    trainingCenterCategory,
    trainingDate,
    trainingTime,
    bloodlineNumber,
    course,
    trackDirection,
    time2000To0,
    lapTime2000To1800,
    time1800To0,
    lapTime1800To1600,
    time1600To0,
    lapTime1600To1400,
    time1400To0,
    lapTime1400To1200,
    time1200To0,
    lapTime1200To1000,
    time1000To0,
    lapTime1000To800,
    time800To0,
    lapTime800To600,
    time600To0,
    lapTime600To400,
    time400To0,
    lapTime400To200,
    lapTime200To0
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

