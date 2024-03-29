/********************************************************************
A list of stored procedures for the market snapshot table under the
"lumos" project. The defination of the stored procedures are
mentioned under the `sp create` command.

```sql
CALL `dev.market_snapshot_report`();
```

Author  : Debmalya Pramanik, nxLogics
Contact : neuralNOD@gmail.com
Version : v0.0.2

Copywright © [2024] Debmalya Pramanik, nxLogics
********************************************************************/

DELIMITER &&
CREATE PROCEDURE `dev.market_snapshot_report`()
BEGIN
    SELECT
        IEXProdMarketType
        , MIN(TransactionDate) AS data_available_form
        , MAX(TransactionDate) AS data_available_till
        , DATEDIFF(CURRENT_DATE(), MAX(TransactionDate)) AS missing_days_till_today
        , FORMAT(DATEDIFF(MAX(TransactionDate), MIN(TransactionDate)) + 1, 0) AS num_days_records_available
        , FORMAT(COUNT(*), 0) AS num_records_available
        , CASE
            WHEN (DATEDIFF(MAX(TransactionDate), MIN(TransactionDate)) + 1) * 96 = COUNT(*) THEN 'No Missing Records'
            ELSE 'Missing Records Detected.'
            END AS remarks
        , FORMAT((DATEDIFF(MAX(TransactionDate), MIN(TransactionDate)) + 1) * 96 - COUNT(*), 0) AS num_blocks_missing
    FROM `apps.lumos.tblMarketSnapshot`
    GROUP BY IEXProdMarketType
    ORDER BY
		num_blocks_missing DESC -- missing block information is reported at the top
        , missing_days_till_today DESC; -- followed by the missing data update table till today
END &&
DELIMITER ;
