DELETE FROM 
    VoteCountTrifecta_TrifectaVotes 
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
            VoteCountTrifecta_TrifectaVotes_NoPK 
    ) 
INSERT INTO 
    VoteCountTrifecta_TrifectaVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combination,
    votes,
    popularity
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

