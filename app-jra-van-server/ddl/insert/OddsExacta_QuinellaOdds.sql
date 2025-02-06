DELETE FROM 
    OddsExacta_QuinellaOdds 
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
                    seq
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            OddsExacta_QuinellaOdds_NoPK 
    ) 
INSERT INTO 
    OddsExacta_QuinellaOdds 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime,
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

