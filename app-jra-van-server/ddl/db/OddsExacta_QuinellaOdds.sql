-- オッズ2（馬連）.<馬連オッズ> 
CREATE TABLE IF NOT EXISTS OddsExacta_QuinellaOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combination TEXT NOT NULL,
    -- オッズ 
    odds INTEGER NULL,
    -- 人気順 
    popularity INTEGER NULL
);
