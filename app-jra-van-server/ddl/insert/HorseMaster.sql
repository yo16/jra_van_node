DELETE FROM 
    HorseMaster 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    bloodlineNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            HorseMaster_NoPK 
    ) 
INSERT INTO 
    HorseMaster 
SELECT 
    dataCategory,
    creationDate,
    bloodlineNumber,
    horseDeletionCategory,
    horseRegistrationDate,
    horseDeletionDate,
    birthDate,
    horseName,
    horseNameKana,
    horseNameEng,
    jraFacilityFlag,
    horseSymbolCode,
    genderCode,
    breedCode,
    coatColorCode,
    horseRegionAffiliationCode,
    trainerCode,
    invitationRegionName,
    producerCode,
    placeOfBirth,
    ownerCode,
    flatMainPrizeMonayCumulative,
    obstacleMainPrizeMoneyCumulative,
    flatAdditinalPrizeMoneyCumulative,
    obstacleAdditionalPrizeMoneyCumulative,
    flatEarningsPrizeMoneyCumulative,
    obstacleEarningsPrizeMoneyCumulative,
    totalPlacementCount_1,
    totalPlacementCount_2,
    totalPlacementCount_3,
    totalPlacementCount_4,
    totalPlacementCount_5,
    totalPlacementCount_6,
    centralTotalPlacementCount_1,
    centralTotalPlacementCount_2,
    centralTotalPlacementCount_3,
    centralTotalPlacementCount_4,
    centralTotalPlacementCount_5,
    centralTotalPlacementCount_6,
    turfStraightPlacementCount_1,
    turfStraightPlacementCount_2,
    turfStraightPlacementCount_3,
    turfStraightPlacementCount_4,
    turfStraightPlacementCount_5,
    turfStraightPlacementCount_6,
    turfRightPlacementCount_1,
    turfRightPlacementCount_2,
    turfRightPlacementCount_3,
    turfRightPlacementCount_4,
    turfRightPlacementCount_5,
    turfRightPlacementCount_6,
    turfLeftPlacementCount_1,
    turfLeftPlacementCount_2,
    turfLeftPlacementCount_3,
    turfLeftPlacementCount_4,
    turfLeftPlacementCount_5,
    turfLeftPlacementCount_6,
    dirtStraightPlacementCount_1,
    dirtStraightPlacementCount_2,
    dirtStraightPlacementCount_3,
    dirtStraightPlacementCount_4,
    dirtStraightPlacementCount_5,
    dirtStraightPlacementCount_6,
    dirtRightPlacementCount_1,
    dirtRightPlacementCount_2,
    dirtRightPlacementCount_3,
    dirtRightPlacementCount_4,
    dirtRightPlacementCount_5,
    dirtRightPlacementCount_6,
    dirtLeftPlacementCount_1,
    dirtLeftPlacementCount_2,
    dirtLeftPlacementCount_3,
    dirtLeftPlacementCount_4,
    dirtLeftPlacementCount_5,
    dirtLeftPlacementCount_6,
    obstaclePlacementCount_1,
    obstaclePlacementCount_2,
    obstaclePlacementCount_3,
    obstaclePlacementCount_4,
    obstaclePlacementCount_5,
    obstaclePlacementCount_6,
    turfGoodPlacementCount_1,
    turfGoodPlacementCount_2,
    turfGoodPlacementCount_3,
    turfGoodPlacementCount_4,
    turfGoodPlacementCount_5,
    turfGoodPlacementCount_6,
    turfSlightlyHeavyPlacementCount_1,
    turfSlightlyHeavyPlacementCount_2,
    turfSlightlyHeavyPlacementCount_3,
    turfSlightlyHeavyPlacementCount_4,
    turfSlightlyHeavyPlacementCount_5,
    turfSlightlyHeavyPlacementCount_6,
    turfHeavyPlacementCount_1,
    turfHeavyPlacementCount_2,
    turfHeavyPlacementCount_3,
    turfHeavyPlacementCount_4,
    turfHeavyPlacementCount_5,
    turfHeavyPlacementCount_6,
    turfBadPlacementCount_1,
    turfBadPlacementCount_2,
    turfBadPlacementCount_3,
    turfBadPlacementCount_4,
    turfBadPlacementCount_5,
    turfBadPlacementCount_6,
    dirtGoodPlacementCount_1,
    dirtGoodPlacementCount_2,
    dirtGoodPlacementCount_3,
    dirtGoodPlacementCount_4,
    dirtGoodPlacementCount_5,
    dirtGoodPlacementCount_6,
    dirtSlightlyHeavyPlacementCount_1,
    dirtSlightlyHeavyPlacementCount_2,
    dirtSlightlyHeavyPlacementCount_3,
    dirtSlightlyHeavyPlacementCount_4,
    dirtSlightlyHeavyPlacementCount_5,
    dirtSlightlyHeavyPlacementCount_6,
    dirtHeavyPlacementCount_1,
    dirtHeavyPlacementCount_2,
    dirtHeavyPlacementCount_3,
    dirtHeavyPlacementCount_4,
    dirtHeavyPlacementCount_5,
    dirtHeavyPlacementCount_6,
    dirtBadPlacementCount_1,
    dirtBadPlacementCount_2,
    dirtBadPlacementCount_3,
    dirtBadPlacementCount_4,
    dirtBadPlacementCount_5,
    dirtBadPlacementCount_6,
    obstacleGoodPlacementCount_1,
    obstacleGoodPlacementCount_2,
    obstacleGoodPlacementCount_3,
    obstacleGoodPlacementCount_4,
    obstacleGoodPlacementCount_5,
    obstacleGoodPlacementCount_6,
    obstacleSlightlyHeavyPlacementCount_1,
    obstacleSlightlyHeavyPlacementCount_2,
    obstacleSlightlyHeavyPlacementCount_3,
    obstacleSlightlyHeavyPlacementCount_4,
    obstacleSlightlyHeavyPlacementCount_5,
    obstacleSlightlyHeavyPlacementCount_6,
    obstacleHeavyPlacementCount_1,
    obstacleHeavyPlacementCount_2,
    obstacleHeavyPlacementCount_3,
    obstacleHeavyPlacementCount_4,
    obstacleHeavyPlacementCount_5,
    obstacleHeavyPlacementCount_6,
    obstacleBadPlacementCount_1,
    obstacleBadPlacementCount_2,
    obstacleBadPlacementCount_3,
    obstacleBadPlacementCount_4,
    obstacleBadPlacementCount_5,
    obstacleBadPlacementCount_6,
    turfUnder16PlacementCount_1,
    turfUnder16PlacementCount_2,
    turfUnder16PlacementCount_3,
    turfUnder16PlacementCount_4,
    turfUnder16PlacementCount_5,
    turfUnder16PlacementCount_6,
    turfUnder22PlacementCount_1,
    turfUnder22PlacementCount_2,
    turfUnder22PlacementCount_3,
    turfUnder22PlacementCount_4,
    turfUnder22PlacementCount_5,
    turfUnder22PlacementCount_6,
    turfOver22PlacementCount_1,
    turfOver22PlacementCount_2,
    turfOver22PlacementCount_3,
    turfOver22PlacementCount_4,
    turfOver22PlacementCount_5,
    turfOver22PlacementCount_6,
    dirtUnder16PlacementCount_1,
    dirtUnder16PlacementCount_2,
    dirtUnder16PlacementCount_3,
    dirtUnder16PlacementCount_4,
    dirtUnder16PlacementCount_5,
    dirtUnder16PlacementCount_6,
    dirtUnder22PlacementCount_1,
    dirtUnder22PlacementCount_2,
    dirtUnder22PlacementCount_3,
    dirtUnder22PlacementCount_4,
    dirtUnder22PlacementCount_5,
    dirtUnder22PlacementCount_6,
    dirtOver22PlacementCount_1,
    dirtOver22PlacementCount_2,
    dirtOver22PlacementCount_3,
    dirtOver22PlacementCount_4,
    dirtOver22PlacementCount_5,
    dirtOver22PlacementCount_6,
    runningStyleTendency_1,
    runningStyleTendency_2,
    runningStyleTendency_3,
    runningStyleTendency_4,
    registeredRaceCount
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

