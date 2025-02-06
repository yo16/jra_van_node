DELETE FROM 
    VoteCount1_BracketQuinellaVotes 
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
            VoteCount1_BracketQuinellaVotes_NoPK 
    ) 
INSERT INTO 
    VoteCount1_BracketQuinellaVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combinationBracketQuinella,
    votesBracketQuinella,
    popularityBracketQuinella
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

