-- オッズ1（単複枠）
CREATE TABLE OddsFrame (
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
    saleFlagWin TEXT NOT NULL,
    saleFlagPlace TEXT NOT NULL,
    saleFlagBracketQuinella TEXT NOT NULL,
    placePayoutKey TEXT NOT NULL,
    totalWinVotes INTEGER NOT NULL,
    totalPlaceVotes INTEGER NOT NULL,
    totalBracketQuinellaVotes INTEGER NOT NULL
);
