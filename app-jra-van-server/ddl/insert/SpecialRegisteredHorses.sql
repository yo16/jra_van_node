DELETE FROM 
    SpecialRegisteredHorses 
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
                    raceNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            SpecialRegisteredHorses_NoPK 
    ) 
INSERT INTO 
    SpecialRegisteredHorses 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    weekdayCode,
    specialRaceNumber,
    raceName,
    raceNameSub,
    raceNameParentheses,
    raceNameEng,
    raceNameSubEng,
    raceNameParenthesesEng,
    raceNameAbbr10,
    raceNameAbbr6,
    raceNameAbbr3,
    raceTitleCategory,
    gradeCount,
    gradeCode,
    raceTypeCode,
    raceSymbolCode,
    weightTypeCode,
    raceConditionCode2YearOld,
    raceConditionCode3YearOld,
    raceConditionCode4YearOld,
    raceConditionCode5YearOldAndAbove,
    raceConditionCodeYoungest,
    distance,
    trackCode,
    courseCategory,
    handicapAnnouncementDate,
    registeredHorsesCount
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

