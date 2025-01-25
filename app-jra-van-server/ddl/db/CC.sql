-- コース変更
CREATE TABLE CourseChange (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    eventYear TEXT NOT NULL,
    eventMonthDay TEXT NOT NULL,
    raceCourseCode TEXT NOT NULL,
    eventRound INTEGER NOT NULL,
    eventDay INTEGER NOT NULL,
    raceNumber INTEGER NOT NULL,
    announcementDateTime TEXT NOT NULL,
    newDistance INTEGER NOT NULL,
    newTrackCode TEXT NOT NULL,
    oldDistance INTEGER NOT NULL,
    oldTrackCode TEXT NOT NULL,
    reasonCategory TEXT NOT NULL
);
