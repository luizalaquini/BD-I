-- Dadas as tabelas CITY e COUNTRY, consulte os nomes de todas as cidades onde o CONTINENT é Africa.

select CITY.Name
from CITY JOIN COUNTRY
where CITY.CountryCode = COUNTRY.Code and COUNTRY.Continent = 'AFRICA'