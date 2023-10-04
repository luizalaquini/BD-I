-- Consulte  o  maior  valor  entre  as  latitudes  norte  (LAT_N)  que  seja  menor  que  137.2345  na  tabela  STATION. Arredonde sua resposta para 4 casas decimais.

with t0 as (
  select "LAT_N"
  from "STATION"
  where "LAT_N" < 137.2345
)

select trunc(max("LAT_N"),4) 
from t0