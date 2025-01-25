-- 坂路調教
CREATE TABLE HillTraining (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    trainingCenterCategory TEXT NOT NULL,
    trainingDate TEXT NOT NULL,
    trainingTime TEXT NOT NULL,
    bloodlineNumber TEXT NOT NULL,
    time800To0 REAL NOT NULL,
    lapTime800To600 REAL NOT NULL,
    time600To0 REAL NOT NULL,
    lapTime600To400 REAL NOT NULL,
    time400To0 REAL NOT NULL,
    lapTime400To200 REAL NOT NULL,
    lapTime200To0 REAL NOT NULL
);
