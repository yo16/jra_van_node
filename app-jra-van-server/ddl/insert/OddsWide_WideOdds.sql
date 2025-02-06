DELETE FROM 
    OddsWide_WideOdds 
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
            OddsWide_WideOdds_NoPK 
    ) 
INSERT INTO 
    OddsWide_WideOdds 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combination,
    minOdds,
    maxOdds,
    popularity
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

