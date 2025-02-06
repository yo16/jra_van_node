DELETE FROM 
    VoteCount1_PlaceVotes 
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
            VoteCount1_PlaceVotes_NoPK 
    ) 
INSERT INTO 
    VoteCount1_PlaceVotes 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    seq,
    horseNumberPlace,
    votesPlace,
    popularityPlace
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

