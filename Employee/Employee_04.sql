-- Definimos o salário total de um funcionário como seu salário mensal x meses trabalhados (salary x months) e o salário total máximo como o maior salário total dentre os funcionários da tabela Employee. Faça uma consulta para encontrar o salário total máximo, bem como o número de funcionários com este salário total. Em seguida, imprima esses valores como 2 números inteiros separados por espaço.

with t0 as (
  select "employee_id", "salary"*"months" as "SalarioTotal"
  from "Employee"
),

max as (
  select max("SalarioTotal")
  from t0
),

t1 as (
  select max, count(distinct t0."employee_id") as "NumFunc"
  from t0 cross join max
  where t0."SalarioTotal" = max
  group by max
)

-- Resultado
select concat(max, ' ', "NumFunc")
from t1
