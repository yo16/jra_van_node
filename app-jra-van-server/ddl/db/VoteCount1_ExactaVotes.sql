-- 票数１.<馬単票数> 
CREATE TABLE IF NOT EXISTS VoteCount1_ExactaVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combinationExacta INTEGER NOT NULL,
    -- 票数 
    votesExacta INTEGER NULL,
    -- 人気順 
    popularityExacta INTEGER NULL
);
