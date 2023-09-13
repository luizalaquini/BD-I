-- Consulte a soma das populações para todas as cidades japonesas existentes na tabela CITY. O COUNTRYCODE para o Japão é JPN.

select sum(population)
from CITY
where CountryCode = 'JPN'