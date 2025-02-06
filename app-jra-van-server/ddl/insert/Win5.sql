DELETE FROM 
    Win5 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    eventYear,
                    eventMonthDay
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            Win5_NoPK 
    ) 
INSERT INTO 
    Win5 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    RaceInfo_1_raceCourseCode,
    RaceInfo_1_eventRound,
    RaceInfo_1_eventDay,
    RaceInfo_1_raceNumber,
    RaceInfo_2_raceCourseCode,
    RaceInfo_2_eventRound,
    RaceInfo_2_eventDay,
    RaceInfo_2_raceNumber,
    RaceInfo_3_raceCourseCode,
    RaceInfo_3_eventRound,
    RaceInfo_3_eventDay,
    RaceInfo_3_raceNumber,
    RaceInfo_4_raceCourseCode,
    RaceInfo_4_eventRound,
    RaceInfo_4_eventDay,
    RaceInfo_4_raceNumber,
    RaceInfo_5_raceCourseCode,
    RaceInfo_5_eventRound,
    RaceInfo_5_eventDay,
    RaceInfo_5_raceNumber,
    votes,
    ValidVotesInfo_1,
    ValidVotesInfo_2,
    ValidVotesInfo_3,
    ValidVotesInfo_4,
    ValidVotesInfo_5,
    refundFlag,
    invalidFlag,
    noWinFlag,
    initialCarryoverAmount,
    remainingCarryoverAmount
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

