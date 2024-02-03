/********************************************************************
A set of table defination for geographic details, namely country,
states and cities names, details and various other details.

Author  : Debmalya Pramanik, nxLogics
Contact : neuralNOD@gmail.com
Version : v0.0.1

Copywright © [2024] Debmalya Pramanik, nxLogics
********************************************************************/

CREATE TABLE `dbo.mwCountries` (
    CountryID   VARCHAR(3) PRIMARY KEY COMMENT 'ISO-3 Code is considered as the primary key in the database.',
    CountryName VARCHAR(64) UNIQUE NOT NULL COMMENT 'The name of the country, which must be unique throught the database.',

    CountryCapital VARCHAR(72) NULL COMMENT 'With the only exception for Antartica, all the countries have a capital.',
    CurrencyCode   VARCHAR(3) NOT NULL COMMENT 'The 3 digit ISO-4217 code of the most popular and widely used currency of the country.',
    TLDCode        VARCHAR(3) NOT NULL COMMENT 'The top level domain code of the country.',

    CONSTRAINT `fk_currency_code` FOREIGN KEY (CurrencyCode) REFERENCES `dbo.mwCurrencies`(CurrencyID)
);
