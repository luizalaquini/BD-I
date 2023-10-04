-- Escreva uma consulta para obter o código da(s) disciplina(s) que é(são) pré-requisito(s) do(s) pré-requisito(s) da disciplina de 'Sinais e Sistemas' (coluna title da tabela course), cujo código (coluna course_id) é igual a 'ELE16191'. O resultado não deve conter ocorrências duplicadas.

select b."prereq_id"
from "prereq" a, "prereq" b
where a."course_id" = 'ELE16191' and a."prereq_id" = b."course_id"