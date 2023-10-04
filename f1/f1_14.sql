-- Escreva uma consulta para obter o(s) nome(s) do(s) circuito(s) (coluna name da tabela circuits) nos quais foram realizadas a maior quantidade corridas (tabela  races). A tabela de saída deve conter uma única coluna com o(s) nome(s) do(s) circuito(s).

with t1 as (
 select name, count(name) as qtd
 from circuits natural join races
 group by name
),

maiorQtd as (
 select max(qtd)
 from t1
)

select t1.name 
from t1, maiorQtd
where t1.qtd >= maiorQtd.max