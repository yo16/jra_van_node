DELETE FROM 
    CourseInfo 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    raceCourseCode,
                    distance,
                    trackCode,
                    courseRenovationDate
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            CourseInfo_NoPK 
    ) 
INSERT INTO 
    CourseInfo 
SELECT 
    dataCategory,
    creationDate,
    raceCourseCode,
    distance,
    trackCode,
    courseRenovationDate,
    courseDescription
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

