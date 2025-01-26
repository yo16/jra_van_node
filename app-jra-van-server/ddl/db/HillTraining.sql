-- 坂路調教
CREATE TABLE IF NOT EXISTS HillTraining (
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
