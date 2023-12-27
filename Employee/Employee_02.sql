-- Escreva uma consulta que imprima uma lista de nomes de funcionários (ou seja, o atributo name) para funcionários na tabela Employee com salário superior a US$ 2000 por mês que tem sido funcionário por menos de 10 meses. Ordene seu resultado de forma ascendente pelo employee_id. 

select "name"
from "Employee"
where "salary" > 2000 and "months" < 10
order by "employee_id" asc