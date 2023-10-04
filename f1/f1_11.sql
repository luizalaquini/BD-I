-- Escreva uma consulta para obter a quantidade média de equipes (tabela  constructors) por temporada (tabela seasons) e retorne o resultado arredondado para um número inteiro (por ex., 32,5 → 33; 40,2 → 40). A coluna da tabela de saída deve ter o nome "MediaEquipes"

select round(avg("QtdEquipes")) as "MediaEquipes"
from (
  select count(distinct constructors."constructorId") as "QtdEquipes"
  from "constructors" natural join "results" natural join "races" natural join "seasons"
  group by races."year"
) as t0