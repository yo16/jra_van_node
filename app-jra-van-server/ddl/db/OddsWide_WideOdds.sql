-- オッズ3（ワイド）.<ワイドオッズ> 
CREATE TABLE IF NOT EXISTS OddsWide_WideOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combination TEXT NOT NULL,
    -- 最低オッズ 
    minOdds REAL NULL,
    -- 最高オッズ 
    maxOdds REAL NULL,
    -- 人気順 
    popularity INTEGER NULL
);
