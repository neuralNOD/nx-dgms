/********************************************************************
A simple table to store foreign exchange rates on a particular day
for a tracked currency. All the currency (code, details) are
maintained seperately in `dbo.mwCurrencies` while the rates are
tracked.

The table is designed with primary key as the `DATE` column thus
ensures no duplicate value is inserted for a particular day.

All the column names are the ISO-4217 currency code, and the base
currency is maintained in `BaseCurrency` column.

Author  : Debmalya Pramanik, nxLogics
Contact : neuralNOD@gmail.com
Version : v0.0.1

Copywright © [2024] Debmalya Pramanik, nxLogics
********************************************************************/

CREATE TABLE `dbo.tblExchangeRate` (
    `EffectiveDate` DATE PRIMARY KEY,
    `BaseCurrency` VARCHAR(3) DEFAULT NULL COMMENT 'Base Currency ISO-4217 Code',

    `AED` DECIMAL(13,6) DEFAULT NULL,
    `AFN` DECIMAL(13,6) DEFAULT NULL,
    `ALL` DECIMAL(13,6) DEFAULT NULL,
    `AMD` DECIMAL(13,6) DEFAULT NULL,
    `ANG` DECIMAL(13,6) DEFAULT NULL,
    `AOA` DECIMAL(13,6) DEFAULT NULL,
    `ARS` DECIMAL(13,6) DEFAULT NULL,
    `AUD` DECIMAL(13,6) DEFAULT NULL,
    `AWG` DECIMAL(13,6) DEFAULT NULL,
    `AZN` DECIMAL(13,6) DEFAULT NULL,
    `BAM` DECIMAL(13,6) DEFAULT NULL,
    `BBD` DECIMAL(13,6) DEFAULT NULL,
    `BDT` DECIMAL(13,6) DEFAULT NULL,
    `BGN` DECIMAL(13,6) DEFAULT NULL,
    `BHD` DECIMAL(13,6) DEFAULT NULL,
    `BIF` DECIMAL(13,6) DEFAULT NULL,
    `BMD` DECIMAL(13,6) DEFAULT NULL,
    `BND` DECIMAL(13,6) DEFAULT NULL,
    `BOB` DECIMAL(13,6) DEFAULT NULL,
    `BRL` DECIMAL(13,6) DEFAULT NULL,
    `BSD` DECIMAL(13,6) DEFAULT NULL,
    `BTN` DECIMAL(13,6) DEFAULT NULL,
    `BWP` DECIMAL(13,6) DEFAULT NULL,
    `BYN` DECIMAL(13,6) DEFAULT NULL,
    `BZD` DECIMAL(13,6) DEFAULT NULL,
    `CAD` DECIMAL(13,6) DEFAULT NULL,
    `CDF` DECIMAL(13,6) DEFAULT NULL,
    `CHF` DECIMAL(13,6) DEFAULT NULL,
    `CLP` DECIMAL(13,6) DEFAULT NULL,
    `CNY` DECIMAL(13,6) DEFAULT NULL,
    `COP` DECIMAL(13,6) DEFAULT NULL,
    `CRC` DECIMAL(13,6) DEFAULT NULL,
    `CUP` DECIMAL(13,6) DEFAULT NULL,
    `CVE` DECIMAL(13,6) DEFAULT NULL,
    `CZK` DECIMAL(13,6) DEFAULT NULL,
    `DJF` DECIMAL(13,6) DEFAULT NULL,
    `DKK` DECIMAL(13,6) DEFAULT NULL,
    `DOP` DECIMAL(13,6) DEFAULT NULL,
    `DZD` DECIMAL(13,6) DEFAULT NULL,
    `EGP` DECIMAL(13,6) DEFAULT NULL,
    `ERN` DECIMAL(13,6) DEFAULT NULL,
    `ETB` DECIMAL(13,6) DEFAULT NULL,
    `EUR` DECIMAL(13,6) DEFAULT NULL,
    `FJD` DECIMAL(13,6) DEFAULT NULL,
    `FKP` DECIMAL(13,6) DEFAULT NULL,
    `GBP` DECIMAL(13,6) DEFAULT NULL,
    `GEL` DECIMAL(13,6) DEFAULT NULL,
    `GHS` DECIMAL(13,6) DEFAULT NULL,
    `GIP` DECIMAL(13,6) DEFAULT NULL,
    `GMD` DECIMAL(13,6) DEFAULT NULL,
    `GNF` DECIMAL(13,6) DEFAULT NULL,
    `GTQ` DECIMAL(13,6) DEFAULT NULL,
    `GYD` DECIMAL(13,6) DEFAULT NULL,
    `HKD` DECIMAL(13,6) DEFAULT NULL,
    `HNL` DECIMAL(13,6) DEFAULT NULL,
    `HTG` DECIMAL(13,6) DEFAULT NULL,
    `HUF` DECIMAL(13,6) DEFAULT NULL,
    `IDR` DECIMAL(13,6) DEFAULT NULL,
    `ILS` DECIMAL(13,6) DEFAULT NULL,
    `INR` DECIMAL(13,6) DEFAULT NULL,
    `IQD` DECIMAL(13,6) DEFAULT NULL,
    `IRR` DECIMAL(13,6) DEFAULT NULL,
    `ISK` DECIMAL(13,6) DEFAULT NULL,
    `JMD` DECIMAL(13,6) DEFAULT NULL,
    `JOD` DECIMAL(13,6) DEFAULT NULL,
    `JPY` DECIMAL(13,6) DEFAULT NULL,
    `KES` DECIMAL(13,6) DEFAULT NULL,
    `KGS` DECIMAL(13,6) DEFAULT NULL,
    `KHR` DECIMAL(13,6) DEFAULT NULL,
    `KMF` DECIMAL(13,6) DEFAULT NULL,
    `KPW` DECIMAL(13,6) DEFAULT NULL,
    `KRW` DECIMAL(13,6) DEFAULT NULL,
    `KWD` DECIMAL(13,6) DEFAULT NULL,
    `KYD` DECIMAL(13,6) DEFAULT NULL,
    `KZT` DECIMAL(13,6) DEFAULT NULL,
    `LAK` DECIMAL(13,6) DEFAULT NULL,
    `LBP` DECIMAL(13,6) DEFAULT NULL,
    `LKR` DECIMAL(13,6) DEFAULT NULL,
    `LRD` DECIMAL(13,6) DEFAULT NULL,
    `LSL` DECIMAL(13,6) DEFAULT NULL,
    `LYD` DECIMAL(13,6) DEFAULT NULL,
    `MAD` DECIMAL(13,6) DEFAULT NULL,
    `MDL` DECIMAL(13,6) DEFAULT NULL,
    `MGA` DECIMAL(13,6) DEFAULT NULL,
    `MKD` DECIMAL(13,6) DEFAULT NULL,
    `MMK` DECIMAL(13,6) DEFAULT NULL,
    `MNT` DECIMAL(13,6) DEFAULT NULL,
    `MOP` DECIMAL(13,6) DEFAULT NULL,
    `MRU` DECIMAL(13,6) DEFAULT NULL,
    `MUR` DECIMAL(13,6) DEFAULT NULL,
    `MVR` DECIMAL(13,6) DEFAULT NULL,
    `MWK` DECIMAL(13,6) DEFAULT NULL,
    `MXN` DECIMAL(13,6) DEFAULT NULL,
    `MYR` DECIMAL(13,6) DEFAULT NULL,
    `MZN` DECIMAL(13,6) DEFAULT NULL,
    `NAD` DECIMAL(13,6) DEFAULT NULL,
    `NGN` DECIMAL(13,6) DEFAULT NULL,
    `NIO` DECIMAL(13,6) DEFAULT NULL,
    `NOK` DECIMAL(13,6) DEFAULT NULL,
    `NPR` DECIMAL(13,6) DEFAULT NULL,
    `NZD` DECIMAL(13,6) DEFAULT NULL,
    `OMR` DECIMAL(13,6) DEFAULT NULL,
    `PEN` DECIMAL(13,6) DEFAULT NULL,
    `PGK` DECIMAL(13,6) DEFAULT NULL,
    `PHP` DECIMAL(13,6) DEFAULT NULL,
    `PKR` DECIMAL(13,6) DEFAULT NULL,
    `PLN` DECIMAL(13,6) DEFAULT NULL,
    `PYG` DECIMAL(13,6) DEFAULT NULL,
    `QAR` DECIMAL(13,6) DEFAULT NULL,
    `RON` DECIMAL(13,6) DEFAULT NULL,
    `RSD` DECIMAL(13,6) DEFAULT NULL,
    `RUB` DECIMAL(13,6) DEFAULT NULL,
    `RWF` DECIMAL(13,6) DEFAULT NULL,
    `SAR` DECIMAL(13,6) DEFAULT NULL,
    `SBD` DECIMAL(13,6) DEFAULT NULL,
    `SCR` DECIMAL(13,6) DEFAULT NULL,
    `SDG` DECIMAL(13,6) DEFAULT NULL,
    `SEK` DECIMAL(13,6) DEFAULT NULL,
    `SGD` DECIMAL(13,6) DEFAULT NULL,
    `SHP` DECIMAL(13,6) DEFAULT NULL,
    `SLE` DECIMAL(13,6) DEFAULT NULL,
    `SOS` DECIMAL(13,6) DEFAULT NULL,
    `SRD` DECIMAL(13,6) DEFAULT NULL,
    `SSP` DECIMAL(13,6) DEFAULT NULL,
    `STN` DECIMAL(13,6) DEFAULT NULL,
    `SYP` DECIMAL(13,6) DEFAULT NULL,
    `SZL` DECIMAL(13,6) DEFAULT NULL,
    `THB` DECIMAL(13,6) DEFAULT NULL,
    `TJS` DECIMAL(13,6) DEFAULT NULL,
    `TMT` DECIMAL(13,6) DEFAULT NULL,
    `TND` DECIMAL(13,6) DEFAULT NULL,
    `TOP` DECIMAL(13,6) DEFAULT NULL,
    `TRY` DECIMAL(13,6) DEFAULT NULL,
    `TTD` DECIMAL(13,6) DEFAULT NULL,
    `TWD` DECIMAL(13,6) DEFAULT NULL,
    `TZS` DECIMAL(13,6) DEFAULT NULL,
    `UAH` DECIMAL(13,6) DEFAULT NULL,
    `UGX` DECIMAL(13,6) DEFAULT NULL,
    `USD` DECIMAL(13,6) DEFAULT NULL,
    `UYU` DECIMAL(13,6) DEFAULT NULL,
    `UZS` DECIMAL(13,6) DEFAULT NULL,
    `VES` DECIMAL(13,6) DEFAULT NULL,
    `VND` DECIMAL(13,6) DEFAULT NULL,
    `VUV` DECIMAL(13,6) DEFAULT NULL,
    `WST` DECIMAL(13,6) DEFAULT NULL,
    `XAF` DECIMAL(13,6) DEFAULT NULL,
    `XCD` DECIMAL(13,6) DEFAULT NULL,
    `XOF` DECIMAL(13,6) DEFAULT NULL,
    `XPF` DECIMAL(13,6) DEFAULT NULL,
    `YER` DECIMAL(13,6) DEFAULT NULL,
    `ZAR` DECIMAL(13,6) DEFAULT NULL,
    `ZMW` DECIMAL(13,6) DEFAULT NULL
);