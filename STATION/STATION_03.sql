-- Consulte os dois valores a seguir na tabela STATION: 
-- • A soma de todos os valores em LAT_N arredondada para uma escala de 2 casas decimais. 
-- • A soma de todos os valores em LONG_W arredondada para uma escala de 2 casas decimais.

-- select * 
-- from (select trunc(sum("LAT_N"), 2) as "sum_LAT_N" from "STATION") as t0 cross join (select trunc(sum("LONG_W"), 2) as "sum_LONG_W" from "STATION") as t1

with lat as (
  select "LAT_N"
  from "STATION"
),

long as (
  select "LONG_W"
  from "STATION"
)

select trunc(sum("LAT_N"), 2) as "sum_LAT_N", trunc(sum("LONG_W"), 2) as "sum_LONG_W"
from lat cross join long

-- NÃO PASSOU NO BOCA