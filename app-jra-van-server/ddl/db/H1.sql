-- 票数１
CREATE TABLE VoteCount1 (
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
    -- 発売フラグ　単勝 
    saleFlagWin TEXT NOT NULL,
    -- 発売フラグ　複勝 
    saleFlagPlace TEXT NOT NULL,
    -- 発売フラグ　枠連 
    saleFlagBracketQuinella TEXT NOT NULL,
    -- 発売フラグ　馬連 
    saleFlagQuinella TEXT NOT NULL,
    -- 発売フラグ　ワイド 
    saleFlagWide TEXT NOT NULL,
    -- 発売フラグ　馬単 
    saleFlagExacta TEXT NOT NULL,
    -- 発売フラグ　3連複 
    saleFlagTrio TEXT NOT NULL,
    -- 複勝着払キー 
    placePayoutKey TEXT NOT NULL,
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
    -- 単勝票数合計 
    totalWinVotes INTEGER NOT NULL,
    -- 複勝票数合計 
    totalPlaceVotes INTEGER NOT NULL,
    -- 枠連票数合計 
    totalBracketQuinellaVotes INTEGER NOT NULL,
    -- 馬連票数合計 
    totalQuinellaVotes INTEGER NOT NULL,
    -- ワイド票数合計 
    totalWideVotes INTEGER NOT NULL,
    -- 馬単票数合計 
    totalExactaVotes INTEGER NOT NULL,
    -- 3連複票数合計 
    totalTrioVotes INTEGER NOT NULL,
    -- 単勝返還票数合計 
    totalWinRefundVotes INTEGER NOT NULL,
    -- 複勝返還票数合計 
    totalPlaceRefundVotes INTEGER NOT NULL,
    -- 枠連返還票数合計 
    totalBracketQuinellaRefundVotes INTEGER NOT NULL,
    -- 馬連返還票数合計 
    totalQuinellaRefundVotes INTEGER NOT NULL,
    -- ワイド返還票数合計 
    totalWideRefundVotes INTEGER NOT NULL,
    -- 馬単返還票数合計 
    totalExactaRefundVotes INTEGER NOT NULL,
    -- 3連複返還票数合計 
    totalTrioReundVotes INTEGER NOT NULL
);
