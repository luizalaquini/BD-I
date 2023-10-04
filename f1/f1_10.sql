-- Escreva uma consulta para obter a quantidade média de pilotos (tabela drivers) por temporada (tabela seasons) e retorne o resultado arredondado para um número inteiro (por ex., 15,4 → 15; 35,6 → 36). A coluna da tabela de saída deve ter o nome "MediaPilotos"

select round(avg("QtdPilotos")) as "MediaPilotos"
from (
  select count(distinct drivers."driverId") as "QtdPilotos"
  from "drivers" natural join "results" natural join "races" natural join "seasons"
  group by races."year"
) as t0

