-- Consulte  a  longitude  oeste  (LONG_W)  da  tupla  na  tabela  STATION  que  possui  a  menor  latitude  norte  (LAT_N)  maior 
-- que 38.7780. Arredonde sua resposta para 4 casas decimais.

with t0 as (
  select "LAT_N", "LONG_W"
  from "STATION"
  where "LAT_N" > 38.7780
),

t1 as (
  select min("LAT_N") as "min_lat"
  from t0
)

select trunc("LONG_W",4)
from t0 cross join t1
where "LAT_N" = "min_lat"