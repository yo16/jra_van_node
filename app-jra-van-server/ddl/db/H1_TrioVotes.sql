-- 票数１.<3連複票数> 
CREATE TABLE H1_TrioVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combinationTrio INTEGER NOT NULL,
    -- 票数 
    votesTrio INTEGER NULL,
    -- 人気順 
    popularityTrio INTEGER NULL
);
