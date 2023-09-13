-- Consulte a partir da tabela CITY o número de cidades com uma população maior que 100000 habitantes. 

-- Consulte a partir da tabela CITY o número de cidades com uma população maior que 100000 habitantes. 

select count(*)
from ( 
  select *
  from CITY
  where population > 100000
) as filtered;

-- Outra opção: o código abaixo gera uma tabela de verdadeiro ou falso e, fazendo a soma, também chegamos no resultado.

-- select sum(population > 100000)
-- from CITY;