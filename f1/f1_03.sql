-- Escreva uma consulta para obter o(s) nome(s) do(s) circuito(s) (coluna name da tabela circuits) nos quais não
-- foram realizadas corridas (tabela races).

select "name" 
from "circuits"
where "circuitId" not in (select "circuitId" from "races")