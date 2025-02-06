DELETE FROM 
    VoteCount1 
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
            VoteCount1_NoPK 
    ) 
INSERT INTO 
    VoteCount1 
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
    saleFlagWin,
    saleFlagPlace,
    saleFlagBracketQuinella,
    saleFlagQuinella,
    saleFlagWide,
    saleFlagExacta,
    saleFlagTrio,
    placePayoutKey,
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
    refundHorseNumberInfo_19,
    refundHorseNumberInfo_20,
    refundHorseNumberInfo_21,
    refundHorseNumberInfo_22,
    refundHorseNumberInfo_23,
    refundHorseNumberInfo_24,
    refundHorseNumberInfo_25,
    refundHorseNumberInfo_26,
    refundHorseNumberInfo_27,
    refundHorseNumberInfo_28,
    refundBracketNumberInfo_1,
    refundBracketNumberInfo_2,
    refundBracketNumberInfo_3,
    refundBracketNumberInfo_4,
    refundBracketNumberInfo_5,
    refundBracketNumberInfo_6,
    refundBracketNumberInfo_7,
    refundBracketNumberInfo_8,
    refundSameBracketInfo_1,
    refundSameBracketInfo_2,
    refundSameBracketInfo_3,
    refundSameBracketInfo_4,
    refundSameBracketInfo_5,
    refundSameBracketInfo_6,
    refundSameBracketInfo_7,
    refundSameBracketInfo_8,
    totalWinVotes,
    totalPlaceVotes,
    totalBracketQuinellaVotes,
    totalQuinellaVotes,
    totalWideVotes,
    totalExactaVotes,
    totalTrioVotes,
    totalWinRefundVotes,
    totalPlaceRefundVotes,
    totalBracketQuinellaRefundVotes,
    totalQuinellaRefundVotes,
    totalWideRefundVotes,
    totalExactaRefundVotes,
    totalTrioReundVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

