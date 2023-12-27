-- Consulte todas as colunas de todas as cidades americanas na tabela CITY com populações maiores que 100000. O COUNTRYCODE para Estados Unidos é USA.

select *
from CITY
where countrycode = 'USA' and population > 100000