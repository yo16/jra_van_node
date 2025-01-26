-- オッズ1（単複枠）.<複勝オッズ> 
CREATE TABLE IF NOT EXISTS OddsFrame_PlaceOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 馬番 
    horseNumberPlace INTEGER NOT NULL,
    -- 最低オッズ 
    minOddsPlace INTEGER NULL,
    -- 最高オッズ 
    maxOddsPlace INTEGER NULL,
    -- 人気順 
    popularityPlace INTEGER NULL
);
