-- 天候馬場状態
CREATE TABLE IF NOT EXISTS WeatherTrackCondition (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 開催年 
    eventYear TEXT NULL,
    -- 開催月日 
    eventMonthDay TEXT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NULL,
    -- 開催回[第N回] 
    eventRound INTEGER NULL,
    -- 開催日目[N日目] 
    eventDay INTEGER NULL,
    -- 発表月日時分 
    announcementDateTime TEXT NULL,
    -- 変更識別 
    changeIdentifier TEXT NULL,
    -- 天候状態 
    currentWeatherCondition TEXT NULL,
    -- 馬場状態・芝 
    currentTurfCondition TEXT NULL,
    -- 馬場状態・ダート 
    currentDirtCondition TEXT NULL,
    -- 天候状態 
    oldWeatherCondition TEXT NULL,
    -- 馬場状態・芝 
    oldTurfCondition TEXT NULL,
    -- 馬場状態・ダート 
    oldDirtCondition TEXT NULL,
    -- PRIMARY KEY
    PRIMARY KEY (eventYear, eventMonthDay, raceCourseCode, eventRound, eventDay, announcementDateTime, changeIdentifier)
);
