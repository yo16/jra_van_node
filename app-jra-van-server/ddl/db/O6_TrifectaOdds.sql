-- オッズ6（3連単）.<3連単オッズ> 
CREATE TABLE O6_TrifectaOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combination TEXT NOT NULL,
    -- オッズ 
    odds REAL NULL,
    -- 人気順 
    popularity INTEGER NULL
);
