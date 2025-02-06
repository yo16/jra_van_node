DELETE FROM 
    OddsFrame_BracketQuinellaOdds 
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
            OddsFrame_BracketQuinellaOdds_NoPK 
    ) 
INSERT INTO 
    OddsFrame_BracketQuinellaOdds 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime,
    seq,
    combinationBracketQuinella,
    oddsBracketQuinella,
    popularityBracketQuinella
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

