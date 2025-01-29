-- コース情報
CREATE TABLE IF NOT EXISTS CourseInfo (
    -- データ区分 
    dataCategory TEXT NULL,
    -- データ作成年月日 
    creationDate TEXT NULL,
    -- 競馬場コード 
    raceCourseCode TEXT NULL,
    -- 距離 
    distance INTEGER NULL,
    -- トラックコード 
    trackCode TEXT NULL,
    -- コース改修年月日 
    courseRenovationDate TEXT NULL,
    -- コース説明 
    courseDescription TEXT NULL,
    -- PRIMARY KEY
    PRIMARY KEY (raceCourseCode, distance, trackCode, courseRenovationDate)
);
