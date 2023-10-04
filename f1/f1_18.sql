-- Escreva uma consulta para obter o(s) nome(s) da(s) equipe(s) (coluna name da tabela constructors) que obtiveram a maior soma de pontos que qualquer um de seus concorrentes por pelo menos 2 temporadas (tabela seasons); ou seja, a soma das suas pontuações nas corridas realizadas em um ano foi a maior daquele ano. A coluna da tabela de saída deve se chamar  "Equipe". OBS: A coluna points da tabela results armazena a quantidade de pontos ganhos por um piloto de uma dada equipe em uma corrida e a coluna year da tabela races indica o ano de realização das corridas.

-- agrupar por equipe para cada ano (somando a pontuacao por ano)
with t1 as (
 select constructors."constructorId", sum(results."points"), races."year", name
 from ((results natural join constructors) natural join races)
 group by constructors."constructorId", year
),
-- agrupar por ano e pegando a maior pontuacao por ano
t2 as (
 select t1."year", max(sum)
 from t1
 group by t1."year"
),
-- tabela com as equipes com maiores pontuacoes por ano
t3 as (
 select t1."constructorId", name
 from t1, t2
 where t1.sum = t2.max and t1.year = t2.year
)
-- pegar apenas as equipes que aparecem 2 ou mais vezes
select t3."name" as "Equipe"
from t3
group by t3."constructorId", t3."name"
having count(t3."constructorId") >= 2