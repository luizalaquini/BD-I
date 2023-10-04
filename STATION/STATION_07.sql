-- Consulte  a  longitude  oeste  (LONG_W)  para  a  maior  latitude  norte  (LAT_N)  que  seja  menor  que  137.2345  na  tabela  STATION. Arredonde sua resposta para 4 casas decimais.

with t0 as (
  select "LAT_N", "LONG_W"
  from "STATION"
  where "LAT_N" < 137.2345
),

t1 as (
  select max("LAT_N") as "max_lat"
  from t0
)

select trunc("LONG_W",4)
from t0 cross join t1
where "LAT_N" = "max_lat"