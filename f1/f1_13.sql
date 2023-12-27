-- Escreva uma consulta para obter o(s) nome da(s) equipe(s) (coluna  name  da tabela  constructors) com menor número de corridas (tabela races). As colunas da tabela de saída devem ter os nomes "Equipe" e "Aparicoes", respectivamente. OBS: Equipes podem ter mais de um piloto por corrida

with t1 as (
 select results."constructorId", count(results."constructorId")
 from results
 group by results."constructorId"
),

t2 as (
 select min(count)
 from t1
)

select name as "Equipe", t1.count as "Aparicoes"
from (t1 natural join constructors), t2
where t1.count = t2.min

-- NÃO PASSOU NO BOCA