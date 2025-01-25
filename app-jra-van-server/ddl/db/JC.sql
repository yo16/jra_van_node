-- 騎手変更
CREATE TABLE JockeyChange (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    eventYear TEXT NOT NULL,
    eventMonthDay TEXT NOT NULL,
    raceCourseCode TEXT NOT NULL,
    eventRound INTEGER NOT NULL,
    eventDay INTEGER NOT NULL,
    raceNumber INTEGER NOT NULL,
    announcementDateTime TEXT NOT NULL,
    horseNumber INTEGER NOT NULL,
    horseName TEXT NOT NULL,
    carriedWeight REAL NOT NULL,
    jockeyCode TEXT NOT NULL,
    apprenticeJockeyCode TEXT NOT NULL,
    carriedWeight REAL NOT NULL,
    jockeyCode TEXT NOT NULL,
    apprenticeJockeyCode TEXT NOT NULL
);
