-- オッズ1（単複枠）.<単勝オッズ> 
CREATE TABLE IF NOT EXISTS O1_WinOdds (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 馬番 
    horseNumberWin INTEGER NOT NULL,
    -- オッズ 
    oddsWin INTEGER NULL,
    -- 人気順 
    popularityWin INTEGER NULL
);
