-- ウッドチップ調教 NoPK
CREATE TABLE IF NOT EXISTS WoodChipTraining_NoPK (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- トレセン区分 
    trainingCenterCategory TEXT NULL,
    -- 調教年月日 
    trainingDate TEXT NULL,
    -- 調教時刻 
    trainingTime TEXT NULL,
    -- 血統登録番号 
    bloodlineNumber TEXT NULL,
    -- コース 
    course TEXT NULL,
    -- 馬場周り 
    trackDirection TEXT NULL,
    -- 10ハロンタイム合計(2000M～0M) 
    time2000To0 REAL NULL,
    -- ラップタイム(2000M～1800M) 
    lapTime2000To1800 REAL NULL,
    -- 9ハロンタイム合計(1800M～0M) 
    time1800To0 REAL NULL,
    -- ラップタイム(1800M～1600M) 
    lapTime1800To1600 REAL NULL,
    -- 8ロンタイム合計(1600M～0M) 
    time1600To0 REAL NULL,
    -- ラップタイム(1600M～1400M) 
    lapTime1600To1400 REAL NULL,
    -- 7ハロンタイム合計(1400M～0M) 
    time1400To0 REAL NULL,
    -- ラップタイム(1400M～1200M) 
    lapTime1400To1200 REAL NULL,
    -- 6ハロンタイム合計(1200M～0M) 
    time1200To0 REAL NULL,
    -- ラップタイム(1200M～1000M) 
    lapTime1200To1000 REAL NULL,
    -- 5ハロンタイム合計(1000M～0M) 
    time1000To0 REAL NULL,
    -- ラップタイム(1000M～800M) 
    lapTime1000To800 REAL NULL,
    -- 4ハロンタイム合計(800M～0M) 
    time800To0 REAL NULL,
    -- ラップタイム(800M～600M) 
    lapTime800To600 REAL NULL,
    -- 3ハロンタイム合計(600M～0M) 
    time600To0 REAL NULL,
    -- ラップタイム(600M～400M) 
    lapTime600To400 REAL NULL,
    -- 2ハロンタイム合計(400M～0M) 
    time400To0 REAL NULL,
    -- ラップタイム(400M～200M) 
    lapTime400To200 REAL NULL,
    -- ラップタイム(200M～0M) 
    lapTime200To0 REAL NULL
);
