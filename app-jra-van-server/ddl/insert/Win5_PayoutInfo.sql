DELETE FROM 
    Win5_PayoutInfo 
;

WITH 
    ranked AS ( 
        SELECT 
            *, 
            ROW_NUMBER() OVER ( 
                PARTITION BY 
                    eventYear,
                    eventMonthDay,
                    seq
                ORDER BY 
                    creationDate DESC 
            ) AS rn 
        FROM 
            Win5_PayoutInfo_NoPK 
    ) 
INSERT INTO 
    Win5_PayoutInfo 
SELECT 
    eventYear,
    eventMonthDay,
    seq,
    combination,
    payoutAmount,
    winningVotes
FROM 
    ranked 
WHERE 
    rn = 1 
;

COMMIT;

