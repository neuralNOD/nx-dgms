/********************************************************************
A master view table designed for all purpose use that presents the
country, state and city level information in one place. The
developer usage features (like `_get_weather_data`) is removed from
the view and thus can be convinently used for any rest-api services.

Author  : Debmalya Pramanik, nxLogics
Contact : neuralNOD@gmail.com
Version : v0.0.1

Copywright © [2024] Debmalya Pramanik, nxLogics
********************************************************************/

CREATE VIEW `dbo.vwWorldDB` AS
SELECT
    A.CountryID, A.CountryName, A.CountryCapital, A.CurrencyCode, A.TLDCode,
    B.StateID, B.StateName, B.StateCode, B.StateType, B.StateLatitude, B.StateLongitude,
    CONCAT(B.StateLatitude, ',', B.StateLongitude) AS StateLocation, -- State location (lat, lon) for programming use `eval()`
    C.CityUUID, C.CityName, C.CityLatitude, C.CityLongitude,
    CONCAT(C.CityLatitude, ',', C.CityLongitude) AS CityLocation COMMENT -- City location (lat, lon) for programming use `eval()`
FROM `dbo.mwCountries` A
LEFT JOIN `dbo.mwStates` B ON A.CountryID = B.CountryID
LEFT JOIN `dbo.mwCities` C ON B.StateID = C.StateID

ORDER BY A.CountryName ASC, B.StateName ASC, C.CityName ASC
