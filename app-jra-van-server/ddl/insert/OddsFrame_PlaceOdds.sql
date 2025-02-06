DELETE FROM 
    OddsFrame_PlaceOdds 
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
            OddsFrame_PlaceOdds_NoPK 
    ) 
INSERT INTO 
    OddsFrame_PlaceOdds 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime,
    seq,
    horseNumberPlace,
    minOddsPlace,
    maxOddsPlace,
    popularityPlace
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

