DELETE FROM 
    OddsFrame 
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
                    announcementDateTime
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            OddsFrame_NoPK 
    ) 
INSERT INTO 
    OddsFrame 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime,
    registeredHorsesCount,
    numberOfRunners,
    saleFlagWin,
    saleFlagPlace,
    saleFlagBracketQuinella,
    placePayoutKey,
    totalWinVotes,
    totalPlaceVotes,
    totalBracketQuinellaVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

