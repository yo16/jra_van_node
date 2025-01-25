-- オッズ1（単複枠）.<枠連オッズ> 
CREATE TABLE O1_BracketQuinellaOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combinationBracketQuinella INTEGER NOT NULL,
    -- オッズ 
    oddsBracketQuinella INTEGER NULL,
    -- 人気順 
    popularityBracketQuinella INTEGER NULL
);
