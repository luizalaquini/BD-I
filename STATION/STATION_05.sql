-- Consulte a soma das latitudes norte (LAT_N) com valores maiores que 38.7880 e menores que 137.2345 na tabela STATION. Arredonde sua resposta para 4 casas decimais. 

with t0 as (
  select "LAT_N"
  from "STATION"
  where "LAT_N" > 38.7880 and "LAT_N" < 137.2345
)

select trunc(sum("LAT_N"),4) as "Soma"
from t0