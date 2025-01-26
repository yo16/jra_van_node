-- タイム型データマイニング予想.<マイニング予想> 
CREATE TABLE IF NOT EXISTS DM_Prediction (
    -- SEQ
    seq INTEGER NOT NULL,
    -- 馬番 
    horseNumber INTEGER NOT NULL,
    -- 予想走破タイム 
    predictedTime REAL NULL,
    -- 予想誤差(信頼度)＋ 
    predictionErrorPlus REAL NULL,
    -- 予想誤差(信頼度)－ 
    predictionErrorMinus REAL NULL
);
