DELETE FROM 
    VoteCount1_WinVotes 
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
            VoteCount1_WinVotes_NoPK 
    ) 
INSERT INTO 
    VoteCount1_WinVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    horseNumberWin,
    votesWin,
    popularityWin
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

