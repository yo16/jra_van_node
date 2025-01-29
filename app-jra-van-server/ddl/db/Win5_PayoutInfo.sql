-- 重勝式(WIN5).<重勝式払戻情報> 
CREATE TABLE IF NOT EXISTS Win5_PayoutInfo (
    -- 開催年 
    eventYear TEXT NULL,
    -- 開催月日 
    eventMonthDay TEXT NULL,
    -- SEQ
    seq INTEGER NOT NULL,
    -- 組番 
    combination TEXT NOT NULL,
    -- 重勝式払戻金 
    payoutAmount INTEGER NULL,
    -- 的中票数 
    winningVotes INTEGER NULL,
    -- PRIMARY KEY
    PRIMARY KEY (eventYear, eventMonthDay, seq)
);
