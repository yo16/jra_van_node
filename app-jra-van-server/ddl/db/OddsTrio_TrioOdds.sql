-- オッズ5（3連複）.<3連複オッズ> 
CREATE TABLE IF NOT EXISTS OddsTrio_TrioOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combination TEXT NOT NULL,
    -- オッズ 
    odds REAL NULL,
    -- 人気順 
    popularity INTEGER NULL
);
