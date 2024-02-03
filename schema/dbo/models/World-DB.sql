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

    CountryCapital VARCHAR(72) NULL COMMENT 'With the only exception for Antartica and some island countries, all the countries have a capital.',
    CurrencyCode   VARCHAR(3) NOT NULL COMMENT 'The 3 digit ISO-4217 code of the most popular and widely used currency of the country.',
    TLDCode        VARCHAR(3) NOT NULL COMMENT 'The top level domain code of the country.',

    CONSTRAINT `fk_currency_code` FOREIGN KEY (CurrencyCode) REFERENCES `dbo.mwCurrencies`(CurrencyID)
);


CREATE TABLE `dbo.mwStates` (
    StateID VARCHAR(5) PRIMARY KEY,

    StateName VARCHAR(56) NOT NULL,
    StateCode VARCHAR(16) NULL COMMENT 'A code assigned by country/region which may/maynot be globally unique.',

    StateType VARCHAR(32) DEFAULT NULL,
    CountryID VARCHAR(3) NOT NULL,

    StateLatitude  DECIMAL(10, 6) NOT NULL,
    StateLongitude DECIMAL(10, 6) NOT NULL,

    UNIQUE KEY `ck_state_name` (CountryID, StateName) COMMENT 'A country should have unique state names, globally may repeat.',
    UNIQUE KEY `ck_state_code` (CountryID, StateCode) COMMENT 'A country should have one single state code, but globally may repeat.',
    CONSTRAINT `fk_country_id` FOREIGN KEY (CountryID) REFERENCES `dbo.mwCountries`(CountryID)
);
