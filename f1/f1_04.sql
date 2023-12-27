-- Escreva uma consulta para obter o(s) nome(s) do(s) grande(s) prêmio(s) (coluna name da tabela gps) que ainda não aconteceram (ou seja, ainda não foram realizadas corridas – tabela races)

select "name" 
from "gps"
where "gpId" not in (select "gpId" from "races")