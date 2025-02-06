DELETE FROM 
    HillTraining 
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
            HillTraining_NoPK 
    ) 
INSERT INTO 
    HillTraining 
SELECT 
    dataCategory,
    creationDate,
    trainingCenterCategory,
    trainingDate,
    trainingTime,
    bloodlineNumber,
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

