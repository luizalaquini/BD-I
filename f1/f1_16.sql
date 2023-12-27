-- Escreva uma consulta para obter o(s) anos(s) (coluna year da tabela seasons) com maior número de corridas (tabela races) realizadas. As colunas da tabela de saída devem ter os nomes "Temporada" e "Corridas", contendo, respectivamente, o ano e o maior número de corridas.

with t1 as (
 select "year", count("year") as "QtdCorridas"
 from "races"
 group by "year"
),

t2 as (
 select max("QtdCorridas") as "max"
 from t1
)

select "year" as "Temporada", "max" as "Corridas"
from t1, t2
where t1."QtdCorridas" = t2."max"

-- NÃO PASSOU NO BOCA