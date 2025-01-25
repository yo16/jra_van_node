-- 出走取消・競走除外
CREATE TABLE RaceCancellation (
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
    reasonCategory TEXT NOT NULL
);
