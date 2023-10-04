-- Escreva uma consulta para obter o(s) nome(s) completo(s) do(s) piloto(s) (colunas forename e surname da tabela drivers separadas por um ' ') que já participaram de todas as corridas (tabela races) ocorridas em um circuito, seguido do nome do circuito (coluna name da tabela circuits). As colunas da tabela de saída devem ter os nomes "Piloto" e "Circuito", respectivamente.

-- Total de corridas para cada circuito
with t1 as (
  select c."name" as "Circuito", count(r."raceId") as TotalCorridasCircuito
  from circuits c natural join races r
  group by c."name"
),

-- Numero de corridas que cada piloto correu em dado circuito
t2 as (
  select concat(d."forename", ' ', d."surname") as "Piloto", c."name" as "Circuito", count(ra."raceId") as NumCorridasCircuito
  from circuits c natural join races ra natural join results re natural join drivers d
  group by "Circuito", "Piloto"
)

-- Resultado 
select "Piloto", "Circuito"
from t1 natural join t2
where NumCorridasCircuito = TotalCorridasCircuito