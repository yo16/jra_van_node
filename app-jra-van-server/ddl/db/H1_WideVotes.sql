-- 票数１.<ワイド票数> 
CREATE TABLE IF NOT EXISTS H1_WideVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combinationWide INTEGER NOT NULL,
    -- 票数 
    votesWide INTEGER NULL,
    -- 人気順 
    popularityWide INTEGER NULL
);
