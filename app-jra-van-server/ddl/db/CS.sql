-- コース情報
CREATE TABLE CourseInfo (
    -- データ区分 
    dataCategory TEXT NOT NULL,
    -- データ作成年月日 
    creationDate TEXT NOT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NOT NULL,
    -- 距離 
    distance INTEGER NOT NULL,
    -- トラックコード 
    trackCode TEXT NOT NULL,
    -- コース改修年月日 
    courseRenovationDate TEXT NOT NULL,
    -- コース説明 
    courseDescription TEXT NOT NULL
);
