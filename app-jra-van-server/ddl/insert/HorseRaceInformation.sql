DELETE FROM 
    HorseRaceInformation 
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
                    horseNumber,
                    bloodlineNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            HorseRaceInformation_NoPK 
    ) 
INSERT INTO 
    HorseRaceInformation 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    frameNumber,
    horseNumber,
    bloodlineNumber,
    horseName,
    horseSymbolCode,
    genderCode,
    breedCode,
    coatColorCode,
    age,
    horseRegionAffiliationCode,
    trainerCode,
    trainerNameAbbreviation,
    ownerCode,
    ownerNameWithoutCorp,
    jockeyUniformColor,
    carriedWeight,
    previousCarriedWeight,
    blinkerUsage,
    jockeyCode,
    previousJockeyCode,
    jockeyNameAbbreviation,
    previousJockeyNameShort,
    apprenticeJockeyCode,
    previousApprenticeJockeyCode,
    HorseWeight,
    weightChangeSign,
    weightChange,
    abnormalityCode,
    finishOrder,
    confirmedPlacement,
    deadHeatFlag,
    deadHeatCount,
    raceTime,
    marginCode,
    plusMarginCode,
    doublePlusMarginCode,
    corner1Order,
    corner2Order,
    corner3Order,
    corner4Order,
    winOdds,
    winPopularityOrder,
    prizeMoney,
    additionalPrizeMoney,
    last4FTime,
    last3FTime,
    FirstPlaceHorseInfo_1,
    FirstPlaceHorseInfo_2,
    FirstPlaceHorseInfo_3,
    timeDifference,
    recordUpdateCategory,
    miningCategory,
    miningEstimatedTime,
    miningEstimatedErrorPlus,
    miningEstimatedErrorMinus,
    miningEstimatedRank,
    racePaceDetermination
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

