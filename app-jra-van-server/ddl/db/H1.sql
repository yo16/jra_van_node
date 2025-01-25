-- 票数１
CREATE TABLE VoteCount1 (
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
    -- 発売フラグ　単勝 
    saleFlagWin TEXT NULL,
    -- 発売フラグ　複勝 
    saleFlagPlace TEXT NULL,
    -- 発売フラグ　枠連 
    saleFlagBracketQuinella TEXT NULL,
    -- 発売フラグ　馬連 
    saleFlagQuinella TEXT NULL,
    -- 発売フラグ　ワイド 
    saleFlagWide TEXT NULL,
    -- 発売フラグ　馬単 
    saleFlagExacta TEXT NULL,
    -- 発売フラグ　3連複 
    saleFlagTrio TEXT NULL,
    -- 複勝着払キー 
    placePayoutKey TEXT NULL,
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
    -- 単勝票数合計 
    totalWinVotes INTEGER NULL,
    -- 複勝票数合計 
    totalPlaceVotes INTEGER NULL,
    -- 枠連票数合計 
    totalBracketQuinellaVotes INTEGER NULL,
    -- 馬連票数合計 
    totalQuinellaVotes INTEGER NULL,
    -- ワイド票数合計 
    totalWideVotes INTEGER NULL,
    -- 馬単票数合計 
    totalExactaVotes INTEGER NULL,
    -- 3連複票数合計 
    totalTrioVotes INTEGER NULL,
    -- 単勝返還票数合計 
    totalWinRefundVotes INTEGER NULL,
    -- 複勝返還票数合計 
    totalPlaceRefundVotes INTEGER NULL,
    -- 枠連返還票数合計 
    totalBracketQuinellaRefundVotes INTEGER NULL,
    -- 馬連返還票数合計 
    totalQuinellaRefundVotes INTEGER NULL,
    -- ワイド返還票数合計 
    totalWideRefundVotes INTEGER NULL,
    -- 馬単返還票数合計 
    totalExactaRefundVotes INTEGER NULL,
    -- 3連複返還票数合計 
    totalTrioReundVotes INTEGER NULL
);
