DELETE FROM 
    VoteCount1_TrioVotes 
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
            VoteCount1_TrioVotes_NoPK 
    ) 
INSERT INTO 
    VoteCount1_TrioVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combinationTrio,
    votesTrio,
    popularityTrio
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

