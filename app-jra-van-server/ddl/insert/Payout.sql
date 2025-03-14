DELETE FROM 
    Payout 
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
            Payout_NoPK 
    ) 
INSERT INTO 
    Payout 
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
    invalidFlagWin,
    invalidFlagPlace,
    invalidFlagBracketQuinella,
    invalidFlagQuinella,
    invalidFlagWide,
    invalidFlagExacta,
    invalidFlagTrio,
    invalidFlagTrifecta,
    specialPayFlagWin,
    specialPayFlagPlace,
    specialPayFlagFrameBracketQuinella,
    specialPayFlagQuinella,
    specialPayFlagWide,
    specialPayFlagExacta,
    specialPayFlagTrio,
    specialPayFlagTrifecta,
    refundFlagWin,
    refundFlagPlace,
    refundFlagBracketQuinella,
    refundFlagQuinella,
    refundFlagWide,
    refundFlagExacta,
    refundFlagTrio,
    refundFlagTrifecta,
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
    WinPayout_1_horseNumberWin,
    WinPayout_1_payoutAmountWin,
    WinPayout_1_popularityWin,
    WinPayout_2_horseNumberWin,
    WinPayout_2_payoutAmountWin,
    WinPayout_2_popularityWin,
    WinPayout_3_horseNumberWin,
    WinPayout_3_payoutAmountWin,
    WinPayout_3_popularityWin,
    PlacePayout_1_horseNumberPlace,
    PlacePayout_1_payoutAmountPlace,
    PlacePayout_1_popularityPlace,
    PlacePayout_2_horseNumberPlace,
    PlacePayout_2_payoutAmountPlace,
    PlacePayout_2_popularityPlace,
    PlacePayout_3_horseNumberPlace,
    PlacePayout_3_payoutAmountPlace,
    PlacePayout_3_popularityPlace,
    PlacePayout_4_horseNumberPlace,
    PlacePayout_4_payoutAmountPlace,
    PlacePayout_4_popularityPlace,
    PlacePayout_5_horseNumberPlace,
    PlacePayout_5_payoutAmountPlace,
    PlacePayout_5_popularityPlace,
    BracketQuinellaPayout_1_combinationBracketQuinella,
    BracketQuinellaPayout_1_payoutAmountBracketQuinella,
    BracketQuinellaPayout_1_popularityBracketQuinella,
    BracketQuinellaPayout_2_combinationBracketQuinella,
    BracketQuinellaPayout_2_payoutAmountBracketQuinella,
    BracketQuinellaPayout_2_popularityBracketQuinella,
    BracketQuinellaPayout_3_combinationBracketQuinella,
    BracketQuinellaPayout_3_payoutAmountBracketQuinella,
    BracketQuinellaPayout_3_popularityBracketQuinella,
    QuinellaPayout_1_combinationQuinella,
    QuinellaPayout_1_payoutAmountQuinella,
    QuinellaPayout_1_popularityQuinella,
    QuinellaPayout_2_combinationQuinella,
    QuinellaPayout_2_payoutAmountQuinella,
    QuinellaPayout_2_popularityQuinella,
    QuinellaPayout_3_combinationQuinella,
    QuinellaPayout_3_payoutAmountQuinella,
    QuinellaPayout_3_popularityQuinella,
    WidePayout_1_combinationWide,
    WidePayout_1_payoutAmountWide,
    WidePayout_1_popularityWide,
    WidePayout_2_combinationWide,
    WidePayout_2_payoutAmountWide,
    WidePayout_2_popularityWide,
    WidePayout_3_combinationWide,
    WidePayout_3_payoutAmountWide,
    WidePayout_3_popularityWide,
    WidePayout_4_combinationWide,
    WidePayout_4_payoutAmountWide,
    WidePayout_4_popularityWide,
    WidePayout_5_combinationWide,
    WidePayout_5_payoutAmountWide,
    WidePayout_5_popularityWide,
    WidePayout_6_combinationWide,
    WidePayout_6_payoutAmountWide,
    WidePayout_6_popularityWide,
    WidePayout_7_combinationWide,
    WidePayout_7_payoutAmountWide,
    WidePayout_7_popularityWide,
    ExactaPayout_1_combinationExacta,
    ExactaPayout_1_payoutAmountExacta,
    ExactaPayout_1_popularityExacta,
    ExactaPayout_2_combinationExacta,
    ExactaPayout_2_payoutAmountExacta,
    ExactaPayout_2_popularityExacta,
    ExactaPayout_3_combinationExacta,
    ExactaPayout_3_payoutAmountExacta,
    ExactaPayout_3_popularityExacta,
    ExactaPayout_4_combinationExacta,
    ExactaPayout_4_payoutAmountExacta,
    ExactaPayout_4_popularityExacta,
    ExactaPayout_5_combinationExacta,
    ExactaPayout_5_payoutAmountExacta,
    ExactaPayout_5_popularityExacta,
    ExactaPayout_6_combinationExacta,
    ExactaPayout_6_payoutAmountExacta,
    ExactaPayout_6_popularityExacta,
    TrioPayout_1_combinationTrio,
    TrioPayout_1_payoutAmountTrio,
    TrioPayout_1_popularityTrio,
    TrioPayout_2_combinationTrio,
    TrioPayout_2_payoutAmountTrio,
    TrioPayout_2_popularityTrio,
    TrioPayout_3_combinationTrio,
    TrioPayout_3_payoutAmountTrio,
    TrioPayout_3_popularityTrio,
    TrifectaPayout_1_combinationTrifecta,
    TrifectaPayout_1_payoutAmountTrifecta,
    TrifectaPayout_1_popularityTrifecta,
    TrifectaPayout_2_combinationTrifecta,
    TrifectaPayout_2_payoutAmountTrifecta,
    TrifectaPayout_2_popularityTrifecta,
    TrifectaPayout_3_combinationTrifecta,
    TrifectaPayout_3_payoutAmountTrifecta,
    TrifectaPayout_3_popularityTrifecta,
    TrifectaPayout_4_combinationTrifecta,
    TrifectaPayout_4_payoutAmountTrifecta,
    TrifectaPayout_4_popularityTrifecta,
    TrifectaPayout_5_combinationTrifecta,
    TrifectaPayout_5_payoutAmountTrifecta,
    TrifectaPayout_5_popularityTrifecta,
    TrifectaPayout_6_combinationTrifecta,
    TrifectaPayout_6_payoutAmountTrifecta,
    TrifectaPayout_6_popularityTrifecta
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

