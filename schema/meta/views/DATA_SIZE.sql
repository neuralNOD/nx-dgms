/********************************************************************
A meta table to check the database space consumption in a general
and concise format for the defined `nxprdsys` schema. For external
users, you can parameterized/change the schema as per preference. In
addition, `330` minutes have been added for UTC to IST time.

Author  : Debmalya Pramanik, nxLogics
Contact : neuralNOD@gmail.com
Version : v0.0.1

Copywright © [2024] Debmalya Pramanik, nxLogics
********************************************************************/

CREATE VIEW `meta.DATA_SIZE` AS
SELECT
    `TABLE_TYPE`
    , `TABLE_NAME`
    , FORMAT(`TABLE_ROWS`, 0) AS `TABLE_ROWS`
    , FORMAT(`DATA_LENGTH`, 0) AS `DATA_LENGTH`
    , FORMAT(`INDEX_LENGTH`, 0) AS `INDEX_LENGTH`
    , FORMAT((`DATA_LENGTH` + `INDEX_LENGTH`) / POWER(1024, 1), 0) AS `TABLE_SIZE_KB`
    , `DATA_FREE` / POWER(1024, 2) AS `DATA_FREE_MB`
    , DATE_ADD(`CREATE_TIME`, INTERVAL 330 MINUTE) AS `CREATE_DATETIME_IST`
    , TIMEDIFF(NOW(), `CREATE_TIME`) AS `ELAPSED_TIME`
FROM `INFORMATION_SCHEMA`.`TABLES`
WHERE `TABLE_SCHEMA` = 'nxprdsys'
ORDER BY `CREATE_TIME` DESC;
