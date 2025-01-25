-- 競走馬除外情報
CREATE TABLE HorseExclusionInfo (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    eventYear TEXT NOT NULL,
    eventMonthDay TEXT NOT NULL,
    raceCourseCode TEXT NOT NULL,
    eventRound INTEGER NOT NULL,
    eventDay INTEGER NOT NULL,
    raceNumber INTEGER NOT NULL,
    bloodlineNumber TEXT NOT NULL,
    entryOrder INTEGER NOT NULL,
    entryCategory TEXT NOT NULL,
    exclusionStatus TEXT NOT NULL
);
