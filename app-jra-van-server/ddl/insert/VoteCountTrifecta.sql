DELETE FROM 
    VoteCountTrifecta 
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
            VoteCountTrifecta_NoPK 
    ) 
INSERT INTO 
    VoteCountTrifecta 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    registeredHorsesCount,
    numberOfRunners,
    saleFlagTrifecta,
    refundHorseNumberInfo_1,
    refundHorseNumberInfo_2,
    refundHorseNumberInfo_3,
    refundHorseNumberInfo_4,
    refundHorseNumberInfo_5,
    refundHorseNumberInfo_6,
    refundHorseNumberInfo_7,
    refundHorseNumberInfo_8,
    refundHorseNumberInfo_9,
    refundHorseNumberInfo_10,
    refundHorseNumberInfo_11,
    refundHorseNumberInfo_12,
    refundHorseNumberInfo_13,
    refundHorseNumberInfo_14,
    refundHorseNumberInfo_15,
    refundHorseNumberInfo_16,
    refundHorseNumberInfo_17,
    refundHorseNumberInfo_18,
    totalTrifectaVotes,
    totalTrifectaRefundVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

