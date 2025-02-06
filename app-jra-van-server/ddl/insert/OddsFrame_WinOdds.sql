DELETE FROM 
    OddsFrame_WinOdds 
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
            OddsFrame_WinOdds_NoPK 
    ) 
INSERT INTO 
    OddsFrame_WinOdds 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime,
    seq,
    horseNumberWin,
    oddsWin,
    popularityWin
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

