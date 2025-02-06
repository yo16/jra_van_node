DELETE FROM 
    VoteCount1_QuinellaVotes 
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
            VoteCount1_QuinellaVotes_NoPK 
    ) 
INSERT INTO 
    VoteCount1_QuinellaVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combinationQuinella,
    votesQuinella,
    popularityQuinella
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

