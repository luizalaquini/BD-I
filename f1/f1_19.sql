-- Escreva uma consulta para obter o(s) nome(s) completo(s) do(s) piloto(s) (colunas forename e surname da tabela drivers separadas por um ' ') que pontuaram (coluna points da tabela results maior que 0) em todas as corridas realizadas em um ano (tabela seasons). As colunas da tabela de saída devem ter os nomes "Piloto" e "Ano", respectivamente.

-- Contagem de corridas por ano
with t0 as (
  select s."year", count(r."raceId") as "TotalCorridas"
  from seasons s natural join races r
  group by s."year"
),

-- Corridas que os pilotos pontuaram
t1 as (
  select concat(d."forename", ' ', d."surname") as "Piloto", r."raceId"
  from results r natural join drivers d
  where r."points" > 0
),

-- Contagem de corridas que o piloto correu e pontuou em dado 
t2 as (
  select races."year", "Piloto", count(races."raceId") as "NumCorridasPilotoPontuou"
  from t1 natural join races
  group by races."year", "Piloto"
)

-- Resultado
select "Piloto", t0."year" as "Ano"
from t0 natural join t2
where t0."TotalCorridas" = t2."NumCorridasPilotoPontuou"