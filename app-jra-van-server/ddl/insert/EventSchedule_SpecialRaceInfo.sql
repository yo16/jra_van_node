DELETE FROM 
    EventSchedule_SpecialRaceInfo 
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
                    seq
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            EventSchedule_SpecialRaceInfo_NoPK 
    ) 
INSERT INTO 
    EventSchedule_SpecialRaceInfo 
SELECT 
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    seq,
    specialRaceNumber,
    raceName,
    raceNameAbbr10,
    raceNameAbbr6,
    raceNameAbbr3,
    gradeCount,
    gradeCode,
    raceTypeCode,
    raceSymbolCode,
    weightTypeCode,
    distance,
    trackCode
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

