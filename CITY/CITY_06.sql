-- Consulte os nomes de todas as cidades japonesas na tabela CITY. O COUNTRYCODE para o Japão é JPN.
select name
from CITY
where countrycode = 'JPN'