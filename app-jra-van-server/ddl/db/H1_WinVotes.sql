-- 票数１.<単勝票数> 
CREATE TABLE IF NOT EXISTS H1_WinVotes (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 馬番 
    horseNumberWin INTEGER NOT NULL,
    -- 票数 
    votesWin INTEGER NULL,
    -- 人気順 
    popularityWin INTEGER NULL
);
