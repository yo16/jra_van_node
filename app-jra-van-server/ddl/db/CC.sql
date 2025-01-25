-- コース変更
CREATE TABLE CourseChange (
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
    -- レース番号 
    raceNumber INTEGER NOT NULL,
    -- 発表月日時分 
    announcementDateTime TEXT NOT NULL,
    -- 変更後 距離 
    newDistance INTEGER NOT NULL,
    -- 変更後 トラックコード 
    newTrackCode TEXT NOT NULL,
    -- 変更前 距離 
    oldDistance INTEGER NOT NULL,
    -- 変更前 トラックコード 
    oldTrackCode TEXT NOT NULL,
    -- 事由区分 
    reasonCategory TEXT NOT NULL
);
