-- Escreva  uma  consulta  para  imprimir  todos  os  números  primos  menores  ou  iguais  a  1000.  Imprima  seu  resultado  em uma única linha e use o caractere “&” como separador (em vez de um espaço). 

with recursive numeros as (
    select 2 as num
    union 
    select num + 1
    from numeros
    where num < 1000
),

primos as (
  select a."num" as n1, b."num" as n2,
         sum(1) over (partition by a."num") as count
  from numeros a cross join numeros b
  where a."num" % b."num" = 0
)

select string_agg(n1::text, '&')
from "primos"
where count = 1;