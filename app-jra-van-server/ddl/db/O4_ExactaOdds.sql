-- オッズ4（馬単）.<馬単オッズ> 
CREATE TABLE IF NOT EXISTS O4_ExactaOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combination TEXT NOT NULL,
    -- オッズ 
    odds REAL NULL,
    -- 人気順 
    popularity INTEGER NULL
);
