-- 天候馬場状態
CREATE TABLE WeatherTrackCondition (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 開催年 
    eventYear TEXT NOT NULL,
    -- 開催月日 
    eventMonthDay TEXT NOT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NOT NULL,
    -- 開催回[第N回] 
    eventRound INTEGER NOT NULL,
    -- 開催日目[N日目] 
    eventDay INTEGER NOT NULL,
    -- 発表月日時分 
    announcementDateTime TEXT NOT NULL,
    -- 変更識別 
    changeIdentifier TEXT NOT NULL,
    -- 天候状態 
    currentWeatherCondition TEXT NOT NULL,
    -- 馬場状態・芝 
    currentTurfCondition TEXT NOT NULL,
    -- 馬場状態・ダート 
    currentDirtCondition TEXT NOT NULL,
    -- 天候状態 
    currentWeatherCondition TEXT NOT NULL,
    -- 馬場状態・芝 
    currentTurfCondition TEXT NOT NULL,
    -- 馬場状態・ダート 
    currentDirtCondition TEXT NOT NULL
);
