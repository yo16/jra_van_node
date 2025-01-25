-- 天候馬場状態
CREATE TABLE WeatherTrackCondition (
    dataCategory TEXT NOT NULL,
    creationDate TEXT NOT NULL,
    eventYear TEXT NOT NULL,
    eventMonthDay TEXT NOT NULL,
    raceCourseCode TEXT NOT NULL,
    eventRound INTEGER NOT NULL,
    eventDay INTEGER NOT NULL,
    announcementDateTime TEXT NOT NULL,
    changeIdentifier TEXT NOT NULL,
    currentWeatherCondition TEXT NOT NULL,
    currentTurfCondition TEXT NOT NULL,
    currentDirtCondition TEXT NOT NULL,
    currentWeatherCondition TEXT NOT NULL,
    currentTurfCondition TEXT NOT NULL,
    currentDirtCondition TEXT NOT NULL
);
