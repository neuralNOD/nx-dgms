/********************************************************************
An utility stored procedures to find if there is any missing days
from a table with column defined with type `DATE` in MySQL. The query
is defined for the table `dbo.tblExchangeRate` however, for different
table/feature the same code can be replicated.

```sql
CALL `dev.missing_exch_rate_days`()
```

Author  : Debmalya Pramanik, nxLogics
Contact : neuralNOD@gmail.com
Version : v0.0.1

Copywright © [2024] Debmalya Pramanik, nxLogics
********************************************************************/

DELIMITER &&
CREATE PROCEDURE `dev.missing_exch_rate_days`()
BEGIN
    SELECT
        ROW_NUMBER() OVER(ORDER BY next_available_day) AS record_number
        , tbl.*
        , DATEDIFF(next_available_day, last_available_day) - 1 AS num_missing_days
    FROM
    (
        (
        SELECT
        -- ! on sorted (ASC) date colum, lag of `+1` is used, thus
        -- ? original/date feature is always the next day, however since the
        -- table in question has `EffectiveDate` as PK, thus always sorted in ASC

            LAG(EffectiveDate, 1, NULL) OVER(ORDER BY EffectiveDate) AS last_available_day
            , EffectiveDate AS next_available_day
        FROM `dbo.tblExchangeRate`
        )
        UNION ALL
        (
        SELECT
        -- ! Also, return the number of days of data missing from the last and current date
        -- the last available date is the max date available in the database
            MAX(EffectiveDate) AS last_available_day
            , CURRENT_DATE() AS next_available_day
        FROM `dbo.tblExchangeRate`
        )
    ) AS tbl
    WHERE DATEDIFF(next_available_day, last_available_day) != 1;
END &&
DELIMITER ;
