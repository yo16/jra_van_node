DELETE FROM 
    EventSchedule 
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
                    eventDay
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            EventSchedule_NoPK 
    ) 
INSERT INTO 
    EventSchedule 
SELECT 
    dataCategory,
    creationDate,
    eventYear,
    eventMonthDay,
    raceCourseCode,
    eventRound,
    eventDay,
    weekdayCode
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

