-- オッズ1（単複枠） NoPK
CREATE TABLE IF NOT EXISTS OddsFrame_NoPK (
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
    -- 発表月日時分 
    announcementDateTime TEXT NULL,
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
    -- 複勝着払キー 
    placePayoutKey TEXT NULL,
    -- 単勝票数合計 
    totalWinVotes INTEGER NULL,
    -- 複勝票数合計 
    totalPlaceVotes INTEGER NULL,
    -- 枠連票数合計 
    totalBracketQuinellaVotes INTEGER NULL
);
