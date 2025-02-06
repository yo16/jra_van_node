DELETE FROM 
    VoteCount1_ExactaVotes 
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
            VoteCount1_ExactaVotes_NoPK 
    ) 
INSERT INTO 
    VoteCount1_ExactaVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combinationExacta,
    votesExacta,
    popularityExacta
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

