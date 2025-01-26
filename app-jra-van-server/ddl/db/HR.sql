-- 払戻
CREATE TABLE IF NOT EXISTS Payout (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 開催年 
    eventYear TEXT NULL,
    -- 開催月日 
    eventMonthDay TEXT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    eventDay INTEGER NULL,
    -- レース番号 
    raceNumber INTEGER NULL,
    -- 登録頭数 
    registeredHorsesCount INTEGER NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NULL,
    -- 不成立フラグ　単勝 
    invalidFlagWin TEXT NULL,
    -- 不成立フラグ　複勝 
    invalidFlagPlace TEXT NULL,
    -- 不成立フラグ　枠連 
    invalidFlagBracketQuinella TEXT NULL,
    -- 不成立フラグ　馬連 
    invalidFlagQuinella TEXT NULL,
    -- 不成立フラグ　ワイド 
    invalidFlagWide TEXT NULL,
    -- 不成立フラグ　馬単 
    invalidFlagExacta TEXT NULL,
    -- 不成立フラグ　3連複 
    invalidFlagTrio TEXT NULL,
    -- 不成立フラグ　3連単 
    invalidFlagTrifecta TEXT NULL,
    -- 特払フラグ　単勝 
    specialPayFlagWin TEXT NULL,
    -- 特払フラグ　複勝 
    specialPayFlagPlace TEXT NULL,
    -- 特払フラグ　枠連 
    specialPayFlagFrameBracketQuinella TEXT NULL,
    -- 特払フラグ　馬連 
    specialPayFlagQuinella TEXT NULL,
    -- 特払フラグ　ワイド 
    specialPayFlagWide TEXT NULL,
    -- 特払フラグ　馬単 
    specialPayFlagExacta TEXT NULL,
    -- 特払フラグ　3連複 
    specialPayFlagTrio TEXT NULL,
    -- 特払フラグ　3連単 
    specialPayFlagTrifecta TEXT NULL,
    -- 返還フラグ　単勝 
    refundFlagWin TEXT NULL,
    -- 返還フラグ　複勝 
    refundFlagPlace TEXT NULL,
    -- 返還フラグ　枠連 
    refundFlagBracketQuinella TEXT NULL,
    -- 返還フラグ　馬連 
    refundFlagQuinella TEXT NULL,
    -- 返還フラグ　ワイド 
    refundFlagWide TEXT NULL,
    -- 返還フラグ　馬単 
    refundFlagExacta TEXT NULL,
    -- 返還フラグ　3連複 
    refundFlagTrio TEXT NULL,
    -- 返還フラグ　3連単 
    refundFlagTrifecta TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_1 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_2 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_3 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_4 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_5 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_6 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_7 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_8 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_9 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_10 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_11 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_12 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_13 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_14 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_15 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_16 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_17 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_18 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_19 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_20 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_21 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_22 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_23 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_24 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_25 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_26 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_27 TEXT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_28 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_1 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_2 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_3 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_4 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_5 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_6 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_7 TEXT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_8 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_1 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_2 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_3 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_4 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_5 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_6 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_7 TEXT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_8 TEXT NULL,
    -- 馬番 
    WinPayout_1_horseNumberWin INTEGER NULL,
    -- 払戻金 
    WinPayout_1_payoutAmountWin INTEGER NULL,
    -- 人気順 
    WinPayout_1_popularityWin INTEGER NULL,
    -- 馬番 
    WinPayout_2_horseNumberWin INTEGER NULL,
    -- 払戻金 
    WinPayout_2_payoutAmountWin INTEGER NULL,
    -- 人気順 
    WinPayout_2_popularityWin INTEGER NULL,
    -- 馬番 
    WinPayout_3_horseNumberWin INTEGER NULL,
    -- 払戻金 
    WinPayout_3_payoutAmountWin INTEGER NULL,
    -- 人気順 
    WinPayout_3_popularityWin INTEGER NULL,
    -- 馬番 
    PlacePayout_1_horseNumberPlace INTEGER NULL,
    -- 払戻金 
    PlacePayout_1_payoutAmountPlace INTEGER NULL,
    -- 人気順 
    PlacePayout_1_popularityPlace INTEGER NULL,
    -- 馬番 
    PlacePayout_2_horseNumberPlace INTEGER NULL,
    -- 払戻金 
    PlacePayout_2_payoutAmountPlace INTEGER NULL,
    -- 人気順 
    PlacePayout_2_popularityPlace INTEGER NULL,
    -- 馬番 
    PlacePayout_3_horseNumberPlace INTEGER NULL,
    -- 払戻金 
    PlacePayout_3_payoutAmountPlace INTEGER NULL,
    -- 人気順 
    PlacePayout_3_popularityPlace INTEGER NULL,
    -- 馬番 
    PlacePayout_4_horseNumberPlace INTEGER NULL,
    -- 払戻金 
    PlacePayout_4_payoutAmountPlace INTEGER NULL,
    -- 人気順 
    PlacePayout_4_popularityPlace INTEGER NULL,
    -- 馬番 
    PlacePayout_5_horseNumberPlace INTEGER NULL,
    -- 払戻金 
    PlacePayout_5_payoutAmountPlace INTEGER NULL,
    -- 人気順 
    PlacePayout_5_popularityPlace INTEGER NULL,
    -- 組番 
    BracketQuinellaPayout_1_combinationBracketQuinella INTEGER NULL,
    -- 払戻金 
    BracketQuinellaPayout_1_payoutAmountBracketQuinella INTEGER NULL,
    -- 人気順 
    BracketQuinellaPayout_1_popularityBracketQuinella INTEGER NULL,
    -- 組番 
    BracketQuinellaPayout_2_combinationBracketQuinella INTEGER NULL,
    -- 払戻金 
    BracketQuinellaPayout_2_payoutAmountBracketQuinella INTEGER NULL,
    -- 人気順 
    BracketQuinellaPayout_2_popularityBracketQuinella INTEGER NULL,
    -- 組番 
    BracketQuinellaPayout_3_combinationBracketQuinella INTEGER NULL,
    -- 払戻金 
    BracketQuinellaPayout_3_payoutAmountBracketQuinella INTEGER NULL,
    -- 人気順 
    BracketQuinellaPayout_3_popularityBracketQuinella INTEGER NULL,
    -- 組番 
    QuinellaPayout_1_combinationQuinella INTEGER NULL,
    -- 払戻金 
    QuinellaPayout_1_payoutAmountQuinella INTEGER NULL,
    -- 人気順 
    QuinellaPayout_1_popularityQuinella INTEGER NULL,
    -- 組番 
    QuinellaPayout_2_combinationQuinella INTEGER NULL,
    -- 払戻金 
    QuinellaPayout_2_payoutAmountQuinella INTEGER NULL,
    -- 人気順 
    QuinellaPayout_2_popularityQuinella INTEGER NULL,
    -- 組番 
    QuinellaPayout_3_combinationQuinella INTEGER NULL,
    -- 払戻金 
    QuinellaPayout_3_payoutAmountQuinella INTEGER NULL,
    -- 人気順 
    QuinellaPayout_3_popularityQuinella INTEGER NULL,
    -- 組番 
    WidePayout_1_combinationWide INTEGER NULL,
    -- 払戻金 
    WidePayout_1_payoutAmountWide INTEGER NULL,
    -- 人気順 
    WidePayout_1_popularityWide INTEGER NULL,
    -- 組番 
    WidePayout_2_combinationWide INTEGER NULL,
    -- 払戻金 
    WidePayout_2_payoutAmountWide INTEGER NULL,
    -- 人気順 
    WidePayout_2_popularityWide INTEGER NULL,
    -- 組番 
    WidePayout_3_combinationWide INTEGER NULL,
    -- 払戻金 
    WidePayout_3_payoutAmountWide INTEGER NULL,
    -- 人気順 
    WidePayout_3_popularityWide INTEGER NULL,
    -- 組番 
    WidePayout_4_combinationWide INTEGER NULL,
    -- 払戻金 
    WidePayout_4_payoutAmountWide INTEGER NULL,
    -- 人気順 
    WidePayout_4_popularityWide INTEGER NULL,
    -- 組番 
    WidePayout_5_combinationWide INTEGER NULL,
    -- 払戻金 
    WidePayout_5_payoutAmountWide INTEGER NULL,
    -- 人気順 
    WidePayout_5_popularityWide INTEGER NULL,
    -- 組番 
    WidePayout_6_combinationWide INTEGER NULL,
    -- 払戻金 
    WidePayout_6_payoutAmountWide INTEGER NULL,
    -- 人気順 
    WidePayout_6_popularityWide INTEGER NULL,
    -- 組番 
    WidePayout_7_combinationWide INTEGER NULL,
    -- 払戻金 
    WidePayout_7_payoutAmountWide INTEGER NULL,
    -- 人気順 
    WidePayout_7_popularityWide INTEGER NULL,
    -- 組番 
    ExactaPayout_1_combinationExacta INTEGER NULL,
    -- 払戻金 
    ExactaPayout_1_payoutAmountExacta INTEGER NULL,
    -- 人気順 
    ExactaPayout_1_popularityExacta INTEGER NULL,
    -- 組番 
    ExactaPayout_2_combinationExacta INTEGER NULL,
    -- 払戻金 
    ExactaPayout_2_payoutAmountExacta INTEGER NULL,
    -- 人気順 
    ExactaPayout_2_popularityExacta INTEGER NULL,
    -- 組番 
    ExactaPayout_3_combinationExacta INTEGER NULL,
    -- 払戻金 
    ExactaPayout_3_payoutAmountExacta INTEGER NULL,
    -- 人気順 
    ExactaPayout_3_popularityExacta INTEGER NULL,
    -- 組番 
    ExactaPayout_4_combinationExacta INTEGER NULL,
    -- 払戻金 
    ExactaPayout_4_payoutAmountExacta INTEGER NULL,
    -- 人気順 
    ExactaPayout_4_popularityExacta INTEGER NULL,
    -- 組番 
    ExactaPayout_5_combinationExacta INTEGER NULL,
    -- 払戻金 
    ExactaPayout_5_payoutAmountExacta INTEGER NULL,
    -- 人気順 
    ExactaPayout_5_popularityExacta INTEGER NULL,
    -- 組番 
    ExactaPayout_6_combinationExacta INTEGER NULL,
    -- 払戻金 
    ExactaPayout_6_payoutAmountExacta INTEGER NULL,
    -- 人気順 
    ExactaPayout_6_popularityExacta INTEGER NULL,
    -- 組番 
    TrioPayout_1_combinationTrio INTEGER NULL,
    -- 払戻金 
    TrioPayout_1_payoutAmountTrio INTEGER NULL,
    -- 人気順 
    TrioPayout_1_popularityTrio INTEGER NULL,
    -- 組番 
    TrioPayout_2_combinationTrio INTEGER NULL,
    -- 払戻金 
    TrioPayout_2_payoutAmountTrio INTEGER NULL,
    -- 人気順 
    TrioPayout_2_popularityTrio INTEGER NULL,
    -- 組番 
    TrioPayout_3_combinationTrio INTEGER NULL,
    -- 払戻金 
    TrioPayout_3_payoutAmountTrio INTEGER NULL,
    -- 人気順 
    TrioPayout_3_popularityTrio INTEGER NULL,
    -- 組番 
    TrifectaPayout_1_combinationTrifecta INTEGER NULL,
    -- 払戻金 
    TrifectaPayout_1_payoutAmountTrifecta INTEGER NULL,
    -- 人気順 
    TrifectaPayout_1_popularityTrifecta INTEGER NULL,
    -- 組番 
    TrifectaPayout_2_combinationTrifecta INTEGER NULL,
    -- 払戻金 
    TrifectaPayout_2_payoutAmountTrifecta INTEGER NULL,
    -- 人気順 
    TrifectaPayout_2_popularityTrifecta INTEGER NULL,
    -- 組番 
    TrifectaPayout_3_combinationTrifecta INTEGER NULL,
    -- 払戻金 
    TrifectaPayout_3_payoutAmountTrifecta INTEGER NULL,
    -- 人気順 
    TrifectaPayout_3_popularityTrifecta INTEGER NULL,
    -- 組番 
    TrifectaPayout_4_combinationTrifecta INTEGER NULL,
    -- 払戻金 
    TrifectaPayout_4_payoutAmountTrifecta INTEGER NULL,
    -- 人気順 
    TrifectaPayout_4_popularityTrifecta INTEGER NULL,
    -- 組番 
    TrifectaPayout_5_combinationTrifecta INTEGER NULL,
    -- 払戻金 
    TrifectaPayout_5_payoutAmountTrifecta INTEGER NULL,
    -- 人気順 
    TrifectaPayout_5_popularityTrifecta INTEGER NULL,
    -- 組番 
    TrifectaPayout_6_combinationTrifecta INTEGER NULL,
    -- 払戻金 
    TrifectaPayout_6_payoutAmountTrifecta INTEGER NULL,
    -- 人気順 
    TrifectaPayout_6_popularityTrifecta INTEGER NULL
);
