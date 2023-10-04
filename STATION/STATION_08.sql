-- Consulte  a  menor  latitude  norte  (LAT_N)  da  tabela  STATION  que  seja  maior  que  38.7780.  Arredonde  sua  resposta para 4 casas decimais. 

with t0 as (
  select "LAT_N"
  from "STATION"
  where "LAT_N" > 38.7780
)

select trunc(min("LAT_N"),4) 
from t0