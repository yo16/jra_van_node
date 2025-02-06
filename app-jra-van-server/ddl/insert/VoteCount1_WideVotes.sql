DELETE FROM 
    VoteCount1_WideVotes 
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
            VoteCount1_WideVotes_NoPK 
    ) 
INSERT INTO 
    VoteCount1_WideVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    combinationWide,
    votesWide,
    popularityWide
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

