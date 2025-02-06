DELETE FROM 
    CourseChange 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    eventYear,
                    eventMonthDay,
                    raceCourseCode,
                    eventRound,
                    eventDay,
                    raceNumber
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            CourseChange_NoPK 
    ) 
INSERT INTO 
    CourseChange 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    raceNumber,
    announcementDateTime,
    newDistance,
    newTrackCode,
    oldDistance,
    oldTrackCode,
    reasonCategory
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

