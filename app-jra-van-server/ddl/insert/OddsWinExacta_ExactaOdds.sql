DELETE FROM 
    OddsWinExacta_ExactaOdds 
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
            OddsWinExacta_ExactaOdds_NoPK 
    ) 
INSERT INTO 
    OddsWinExacta_ExactaOdds 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combination,
    odds,
    popularity
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

