-- オッズ3（ワイド）
CREATE TABLE OddsWide (
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
    saleFlagWide TEXT NOT NULL,
    totalWideVotes INTEGER NOT NULL
);
