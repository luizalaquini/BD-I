-- Consulte os nomes de todas as cidades americanas na tabela CITY com populações maiores que 120000. O COUNTRYCODE para Estados Unidos é USA. 

select name
from CITY
where countrycode = 'USA' and population > 120000