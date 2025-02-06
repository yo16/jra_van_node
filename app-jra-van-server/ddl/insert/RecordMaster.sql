DELETE FROM 
    RecordMaster 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    recordIdentificationDivision,
                    eventYear,
                    eventMonthDay,
                    raceCourseCode,
                    eventRound,
                    eventDay,
                    raceNumber,
                    specialRaceNumber,
                    raceTypeCode,
                    distance,
                    trackCode
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            RecordMaster_NoPK 
    ) 
INSERT INTO 
    RecordMaster 
SELECT 
    dataCategory,
    creationDate,
    recordIdentificationDivision,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    specialRaceNumber,
    raceName,
    gradeCode,
    raceTypeCode,
    distance,
    trackCode,
    recordDelimiter,
    recordTime,
    weatherCode,
    turfConditionCode,
    dirtConditionCode,
    RecordHolderHorseInfo_1_bloodlineNumber,
    RecordHolderHorseInfo_1_trainerCode,
    RecordHolderHorseInfo_1_carriedWeight,
    RecordHolderHorseInfo_1_jockeyCode,
    RecordHolderHorseInfo_2_bloodlineNumber,
    RecordHolderHorseInfo_2_trainerCode,
    RecordHolderHorseInfo_2_carriedWeight,
    RecordHolderHorseInfo_2_jockeyCode,
    RecordHolderHorseInfo_3_bloodlineNumber,
    RecordHolderHorseInfo_3_trainerCode,
    RecordHolderHorseInfo_3_carriedWeight,
    RecordHolderHorseInfo_3_jockeyCode
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

