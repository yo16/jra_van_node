-- タイム型データマイニング予想.<マイニング予想> NoPK 
CREATE TABLE IF NOT EXISTS TimeBasedDataMiningForecast_Prediction_NoPK (
    -- 開催年 
    eventYear TEXT NULL,
    -- 開催月日 
    eventMonthDay TEXT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    eventDay INTEGER NULL,
    -- レース番号 
    raceNumber INTEGER NULL,
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
