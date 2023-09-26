-- Escreva uma consulta para obter o(s) nome(s) completo(s) do(s) piloto(s) (colunas forename e surname da tabela drivers separadas por um ' ') que não participaram de nenhuma corrida (tabela races).]

select concat(forename, ' ', surname) as fullname
from drivers
where driverid not in (
  select driverid 
  from results
)