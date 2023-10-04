-- Escreva uma consulta para obter o(s) nome(s) do(s) grande(s) prêmio(s) (coluna name da tabela gps) com corridas (tabela races) realizadas a maior quantidade de vezes. As colunas da tabela de saída devem ter os nomes "GP" e "Ocorrencias", respectivamente.

-- Contagens de corridas por GP
with t0 as (
  select gps."name" as "GP", count(distinct races."raceId") as "Ocorrencias"
  from gps natural join races
  group by "GP"
),

-- Maior ocorrencia
max as (
  select max("Ocorrencias")
  from t0
)

-- Resultado
select "GP", "Ocorrencias" 
from t0 cross join max
where "Ocorrencias" = max