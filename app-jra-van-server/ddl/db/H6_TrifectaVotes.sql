-- 票数6（3連単）.<3連単票数> 
CREATE TABLE H6_TrifectaVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combination TEXT NOT NULL,
    -- 票数 
    votes INTEGER NULL,
    -- 人気順 
    popularity INTEGER NULL
);
