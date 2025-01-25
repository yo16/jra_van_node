-- 払戻
CREATE TABLE Payout (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 開催年 
    eventYear TEXT NOT NULL,
    -- 開催月日 
    eventMonthDay TEXT NOT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    eventDay INTEGER NOT NULL,
    -- レース番号 
    raceNumber INTEGER NOT NULL,
    -- 登録頭数 
    registeredHorsesCount INTEGER NOT NULL,
    -- 出走頭数 
    numberOfRunners INTEGER NOT NULL,
    -- 不成立フラグ　単勝 
    invalidFlagWin TEXT NOT NULL,
    -- 不成立フラグ　複勝 
    invalidFlagPlace TEXT NOT NULL,
    -- 不成立フラグ　枠連 
    invalidFlagBracketQuinella TEXT NOT NULL,
    -- 不成立フラグ　馬連 
    invalidFlagQuinella TEXT NOT NULL,
    -- 不成立フラグ　ワイド 
    invalidFlagWide TEXT NOT NULL,
    -- 不成立フラグ　馬単 
    invalidFlagExacta TEXT NOT NULL,
    -- 不成立フラグ　3連複 
    invalidFlagTrio TEXT NOT NULL,
    -- 不成立フラグ　3連単 
    invalidFlagTrifecta TEXT NOT NULL,
    -- 特払フラグ　単勝 
    specialPayFlagWin TEXT NOT NULL,
    -- 特払フラグ　複勝 
    specialPayFlagPlace TEXT NOT NULL,
    -- 特払フラグ　枠連 
    specialPayFlagFrameBracketQuinella TEXT NOT NULL,
    -- 特払フラグ　馬連 
    specialPayFlagQuinella TEXT NOT NULL,
    -- 特払フラグ　ワイド 
    specialPayFlagWide TEXT NOT NULL,
    -- 特払フラグ　馬単 
    specialPayFlagExacta TEXT NOT NULL,
    -- 特払フラグ　3連複 
    specialPayFlagTrio TEXT NOT NULL,
    -- 特払フラグ　3連単 
    specialPayFlagTrifecta TEXT NOT NULL,
    -- 返還フラグ　単勝 
    refundFlagWin TEXT NOT NULL,
    -- 返還フラグ　複勝 
    refundFlagPlace TEXT NOT NULL,
    -- 返還フラグ　枠連 
    refundFlagBracketQuinella TEXT NOT NULL,
    -- 返還フラグ　馬連 
    refundFlagQuinella TEXT NOT NULL,
    -- 返還フラグ　ワイド 
    refundFlagWide TEXT NOT NULL,
    -- 返還フラグ　馬単 
    refundFlagExacta TEXT NOT NULL,
    -- 返還フラグ　3連複 
    refundFlagTrio TEXT NOT NULL,
    -- 返還フラグ　3連単 
    refundFlagTrifecta TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_1 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_2 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_3 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_4 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_5 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_6 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_7 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_8 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_9 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_10 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_11 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_12 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_13 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_14 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_15 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_16 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_17 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_18 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_19 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_20 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_21 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_22 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_23 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_24 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_25 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_26 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_27 TEXT NOT NULL,
    -- 返還馬番情報(馬番01～28) 
    refundHorseNumberInfo_28 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_1 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_2 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_3 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_4 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_5 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_6 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_7 TEXT NOT NULL,
    -- 返還枠番情報(枠番1～8) 
    refundBracketNumberInfo_8 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_1 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_2 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_3 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_4 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_5 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_6 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_7 TEXT NOT NULL,
    -- 返還同枠情報(枠番1～8) 
    refundSameBracketInfo_8 TEXT NOT NULL,
    -- 馬番 
    WinPayout_1_horseNumberWin INTEGER NOT NULL,
    -- 払戻金 
    WinPayout_1_payoutAmountWin INTEGER NOT NULL,
    -- 人気順 
    WinPayout_1_popularityWin INTEGER NOT NULL,
    -- 馬番 
    WinPayout_2_horseNumberWin INTEGER NOT NULL,
    -- 払戻金 
    WinPayout_2_payoutAmountWin INTEGER NOT NULL,
    -- 人気順 
    WinPayout_2_popularityWin INTEGER NOT NULL,
    -- 馬番 
    WinPayout_3_horseNumberWin INTEGER NOT NULL,
    -- 払戻金 
    WinPayout_3_payoutAmountWin INTEGER NOT NULL,
    -- 人気順 
    WinPayout_3_popularityWin INTEGER NOT NULL,
    -- 馬番 
    PlacePayout_1_horseNumberPlace INTEGER NOT NULL,
    -- 払戻金 
    PlacePayout_1_payoutAmountPlace INTEGER NOT NULL,
    -- 人気順 
    PlacePayout_1_popularityPlace INTEGER NOT NULL,
    -- 馬番 
    PlacePayout_2_horseNumberPlace INTEGER NOT NULL,
    -- 払戻金 
    PlacePayout_2_payoutAmountPlace INTEGER NOT NULL,
    -- 人気順 
    PlacePayout_2_popularityPlace INTEGER NOT NULL,
    -- 馬番 
    PlacePayout_3_horseNumberPlace INTEGER NOT NULL,
    -- 払戻金 
    PlacePayout_3_payoutAmountPlace INTEGER NOT NULL,
    -- 人気順 
    PlacePayout_3_popularityPlace INTEGER NOT NULL,
    -- 馬番 
    PlacePayout_4_horseNumberPlace INTEGER NOT NULL,
    -- 払戻金 
    PlacePayout_4_payoutAmountPlace INTEGER NOT NULL,
    -- 人気順 
    PlacePayout_4_popularityPlace INTEGER NOT NULL,
    -- 馬番 
    PlacePayout_5_horseNumberPlace INTEGER NOT NULL,
    -- 払戻金 
    PlacePayout_5_payoutAmountPlace INTEGER NOT NULL,
    -- 人気順 
    PlacePayout_5_popularityPlace INTEGER NOT NULL,
    -- 組番 
    BracketQuinellaPayout_1_combinationBracketQuinella INTEGER NOT NULL,
    -- 払戻金 
    BracketQuinellaPayout_1_payoutAmountBracketQuinella INTEGER NOT NULL,
    -- 人気順 
    BracketQuinellaPayout_1_popularityBracketQuinella INTEGER NOT NULL,
    -- 組番 
    BracketQuinellaPayout_2_combinationBracketQuinella INTEGER NOT NULL,
    -- 払戻金 
    BracketQuinellaPayout_2_payoutAmountBracketQuinella INTEGER NOT NULL,
    -- 人気順 
    BracketQuinellaPayout_2_popularityBracketQuinella INTEGER NOT NULL,
    -- 組番 
    BracketQuinellaPayout_3_combinationBracketQuinella INTEGER NOT NULL,
    -- 払戻金 
    BracketQuinellaPayout_3_payoutAmountBracketQuinella INTEGER NOT NULL,
    -- 人気順 
    BracketQuinellaPayout_3_popularityBracketQuinella INTEGER NOT NULL,
    -- 組番 
    QuinellaPayout_1_combinationQuinella INTEGER NOT NULL,
    -- 払戻金 
    QuinellaPayout_1_payoutAmountQuinella INTEGER NOT NULL,
    -- 人気順 
    QuinellaPayout_1_popularityQuinella INTEGER NOT NULL,
    -- 組番 
    QuinellaPayout_2_combinationQuinella INTEGER NOT NULL,
    -- 払戻金 
    QuinellaPayout_2_payoutAmountQuinella INTEGER NOT NULL,
    -- 人気順 
    QuinellaPayout_2_popularityQuinella INTEGER NOT NULL,
    -- 組番 
    QuinellaPayout_3_combinationQuinella INTEGER NOT NULL,
    -- 払戻金 
    QuinellaPayout_3_payoutAmountQuinella INTEGER NOT NULL,
    -- 人気順 
    QuinellaPayout_3_popularityQuinella INTEGER NOT NULL,
    -- 組番 
    WidePayout_1_combinationWide INTEGER NOT NULL,
    -- 払戻金 
    WidePayout_1_payoutAmountWide INTEGER NOT NULL,
    -- 人気順 
    WidePayout_1_popularityWide INTEGER NOT NULL,
    -- 組番 
    WidePayout_2_combinationWide INTEGER NOT NULL,
    -- 払戻金 
    WidePayout_2_payoutAmountWide INTEGER NOT NULL,
    -- 人気順 
    WidePayout_2_popularityWide INTEGER NOT NULL,
    -- 組番 
    WidePayout_3_combinationWide INTEGER NOT NULL,
    -- 払戻金 
    WidePayout_3_payoutAmountWide INTEGER NOT NULL,
    -- 人気順 
    WidePayout_3_popularityWide INTEGER NOT NULL,
    -- 組番 
    WidePayout_4_combinationWide INTEGER NOT NULL,
    -- 払戻金 
    WidePayout_4_payoutAmountWide INTEGER NOT NULL,
    -- 人気順 
    WidePayout_4_popularityWide INTEGER NOT NULL,
    -- 組番 
    WidePayout_5_combinationWide INTEGER NOT NULL,
    -- 払戻金 
    WidePayout_5_payoutAmountWide INTEGER NOT NULL,
    -- 人気順 
    WidePayout_5_popularityWide INTEGER NOT NULL,
    -- 組番 
    WidePayout_6_combinationWide INTEGER NOT NULL,
    -- 払戻金 
    WidePayout_6_payoutAmountWide INTEGER NOT NULL,
    -- 人気順 
    WidePayout_6_popularityWide INTEGER NOT NULL,
    -- 組番 
    WidePayout_7_combinationWide INTEGER NOT NULL,
    -- 払戻金 
    WidePayout_7_payoutAmountWide INTEGER NOT NULL,
    -- 人気順 
    WidePayout_7_popularityWide INTEGER NOT NULL,
    -- 組番 
    ExactaPayout_1_combinationExacta INTEGER NOT NULL,
    -- 払戻金 
    ExactaPayout_1_payoutAmountExacta INTEGER NOT NULL,
    -- 人気順 
    ExactaPayout_1_popularityExacta INTEGER NOT NULL,
    -- 組番 
    ExactaPayout_2_combinationExacta INTEGER NOT NULL,
    -- 払戻金 
    ExactaPayout_2_payoutAmountExacta INTEGER NOT NULL,
    -- 人気順 
    ExactaPayout_2_popularityExacta INTEGER NOT NULL,
    -- 組番 
    ExactaPayout_3_combinationExacta INTEGER NOT NULL,
    -- 払戻金 
    ExactaPayout_3_payoutAmountExacta INTEGER NOT NULL,
    -- 人気順 
    ExactaPayout_3_popularityExacta INTEGER NOT NULL,
    -- 組番 
    ExactaPayout_4_combinationExacta INTEGER NOT NULL,
    -- 払戻金 
    ExactaPayout_4_payoutAmountExacta INTEGER NOT NULL,
    -- 人気順 
    ExactaPayout_4_popularityExacta INTEGER NOT NULL,
    -- 組番 
    ExactaPayout_5_combinationExacta INTEGER NOT NULL,
    -- 払戻金 
    ExactaPayout_5_payoutAmountExacta INTEGER NOT NULL,
    -- 人気順 
    ExactaPayout_5_popularityExacta INTEGER NOT NULL,
    -- 組番 
    ExactaPayout_6_combinationExacta INTEGER NOT NULL,
    -- 払戻金 
    ExactaPayout_6_payoutAmountExacta INTEGER NOT NULL,
    -- 人気順 
    ExactaPayout_6_popularityExacta INTEGER NOT NULL,
    -- 組番 
    TrioPayout_1_combinationTrio INTEGER NOT NULL,
    -- 払戻金 
    TrioPayout_1_payoutAmountTrio INTEGER NOT NULL,
    -- 人気順 
    TrioPayout_1_popularityTrio INTEGER NOT NULL,
    -- 組番 
    TrioPayout_2_combinationTrio INTEGER NOT NULL,
    -- 払戻金 
    TrioPayout_2_payoutAmountTrio INTEGER NOT NULL,
    -- 人気順 
    TrioPayout_2_popularityTrio INTEGER NOT NULL,
    -- 組番 
    TrioPayout_3_combinationTrio INTEGER NOT NULL,
    -- 払戻金 
    TrioPayout_3_payoutAmountTrio INTEGER NOT NULL,
    -- 人気順 
    TrioPayout_3_popularityTrio INTEGER NOT NULL,
    -- 組番 
    TrifectaPayout_1_combinationTrifecta INTEGER NOT NULL,
    -- 払戻金 
    TrifectaPayout_1_payoutAmountTrifecta INTEGER NOT NULL,
    -- 人気順 
    TrifectaPayout_1_popularityTrifecta INTEGER NOT NULL,
    -- 組番 
    TrifectaPayout_2_combinationTrifecta INTEGER NOT NULL,
    -- 払戻金 
    TrifectaPayout_2_payoutAmountTrifecta INTEGER NOT NULL,
    -- 人気順 
    TrifectaPayout_2_popularityTrifecta INTEGER NOT NULL,
    -- 組番 
    TrifectaPayout_3_combinationTrifecta INTEGER NOT NULL,
    -- 払戻金 
    TrifectaPayout_3_payoutAmountTrifecta INTEGER NOT NULL,
    -- 人気順 
    TrifectaPayout_3_popularityTrifecta INTEGER NOT NULL,
    -- 組番 
    TrifectaPayout_4_combinationTrifecta INTEGER NOT NULL,
    -- 払戻金 
    TrifectaPayout_4_payoutAmountTrifecta INTEGER NOT NULL,
    -- 人気順 
    TrifectaPayout_4_popularityTrifecta INTEGER NOT NULL,
    -- 組番 
    TrifectaPayout_5_combinationTrifecta INTEGER NOT NULL,
    -- 払戻金 
    TrifectaPayout_5_payoutAmountTrifecta INTEGER NOT NULL,
    -- 人気順 
    TrifectaPayout_5_popularityTrifecta INTEGER NOT NULL,
    -- 組番 
    TrifectaPayout_6_combinationTrifecta INTEGER NOT NULL,
    -- 払戻金 
    TrifectaPayout_6_payoutAmountTrifecta INTEGER NOT NULL,
    -- 人気順 
    TrifectaPayout_6_popularityTrifecta INTEGER NOT NULL
);
