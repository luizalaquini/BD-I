-- Dadas as tabelas CITY e COUNTRY, consulte a soma das populações de todas as cidades onde o CONTINENT é Asia.

SELECT SUM(CITY.POPULATION)
FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'ASIA'