DELETE FROM 
    BreederMaster 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    producerCode
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            BreederMaster_NoPK 
    ) 
INSERT INTO 
    BreederMaster 
SELECT 
    dataCategory,
    creationDate,
    producerCode,
    producerNameWithCorp,
    producerNameWithoutCorp,
    producerNameKana,
    producerNameEng,
    producerAddressPrefecture,
    CurrentAndCumulativeInfo_current_settingYear,
    CurrentAndCumulativeInfo_current_mainPrizeMoneyTotal,
    CurrentAndCumulativeInfo_current_additionalPrizeMoneyTotal,
    CurrentAndCumulativeInfo_current_PlacementCount_1,
    CurrentAndCumulativeInfo_current_PlacementCount_2,
    CurrentAndCumulativeInfo_current_PlacementCount_3,
    CurrentAndCumulativeInfo_current_PlacementCount_4,
    CurrentAndCumulativeInfo_current_PlacementCount_5,
    CurrentAndCumulativeInfo_current_PlacementCount_6,
    CurrentAndCumulativeInfo_cumulative_settingYear,
    CurrentAndCumulativeInfo_cumulative_mainPrizeMoneyTotal,
    CurrentAndCumulativeInfo_cumulative_additionalPrizeMoneyTotal,
    CurrentAndCumulativeInfo_cumulative_PlacementCount_1,
    CurrentAndCumulativeInfo_cumulative_PlacementCount_2,
    CurrentAndCumulativeInfo_cumulative_PlacementCount_3,
    CurrentAndCumulativeInfo_cumulative_PlacementCount_4,
    CurrentAndCumulativeInfo_cumulative_PlacementCount_5,
    CurrentAndCumulativeInfo_cumulative_PlacementCount_6
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

