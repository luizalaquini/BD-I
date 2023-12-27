-- Escreva uma consulta para obter o código da(s) disciplina(s) que é(são) pré-requisito(s) direto(s) da disciplina de 'Sinais e Sistemas'  (coluna  title  da tabela  course), cujo código (coluna  course_id)  é  igual  a 'ELE16191'. O resultado não deve conter ocorrências duplicadas.

select "prereq_id"
from "prereq"
where "course_id" = 'ELE16191'