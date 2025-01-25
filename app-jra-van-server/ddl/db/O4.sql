-- オッズ4（馬単）
CREATE TABLE OddsWinExacta (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    eventYear TEXT NOT NULL,
    eventMonthDay TEXT NOT NULL,
    raceCourseCode TEXT NOT NULL,
    eventRound INTEGER NOT NULL,
    eventDay INTEGER NOT NULL,
    raceNumber INTEGER NOT NULL,
    announcementDateTime TEXT NOT NULL,
    registeredHorsesCount INTEGER NOT NULL,
    numberOfRunners INTEGER NOT NULL,
    saleFlagExacta TEXT NOT NULL,
    totalExactaVotes INTEGER NOT NULL
);
