-- 票数１.<複勝票数> 
CREATE TABLE H1_PlaceVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 馬番 
    horseNumberPlace INTEGER NOT NULL,
    -- 票数 
    votesPlace INTEGER NULL,
    -- 人気順 
    popularityPlace INTEGER NULL
);
