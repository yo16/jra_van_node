DELETE FROM 
    OddsTrio_TrioOdds 
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
            OddsTrio_TrioOdds_NoPK 
    ) 
INSERT INTO 
    OddsTrio_TrioOdds 
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

