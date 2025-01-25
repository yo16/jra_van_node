-- 対戦型データマイニング予想.<マイニング予想> 
CREATE TABLE TM_Prediction (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 馬番 
    horseNumber INTEGER NOT NULL,
    -- 予測スコア 
    predictedScore REAL NULL
);
