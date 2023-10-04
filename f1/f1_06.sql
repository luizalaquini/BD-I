-- Escreva uma consulta para obter o(s) nome(s) da(s) equipe(s) (coluna name da tabela constructors) que nunca atingiram pelo menos o terceiro lugar em uma corrida (tabela results).

select "name"
from "constructors"
where "constructorId" not in (select "constructorId" from "results" where "positionOrder" > 3)

-- NÃO PASSOU NO BOCA