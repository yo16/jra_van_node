-- 票数１.<枠連票数> 
CREATE TABLE H1_BracketQuinellaVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combinationBracketQuinella INTEGER NOT NULL,
    -- 票数 
    votesBracketQuinella INTEGER NULL,
    -- 人気順 
    popularityBracketQuinella INTEGER NULL
);
