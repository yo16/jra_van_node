-- 票数１.<馬連票数> 
CREATE TABLE IF NOT EXISTS VoteCount1_QuinellaVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combinationQuinella INTEGER NOT NULL,
    -- 票数 
    votesQuinella INTEGER NULL,
    -- 人気順 
    popularityQuinella INTEGER NULL
);
