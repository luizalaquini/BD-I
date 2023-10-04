-- Seja N o número de entradas (tuplas) de cidade (CITY) na tabela STATION e seja N’ o número de nomes distintos de  cidades (CITY) em STATION; consulte o valor de N – N’ a partir da tabela STATION. Em outras palavras, encontre a diferença entre o número total de cidades e o número de cidades distintas na tabela STATION. A coluna contendo essa diferença deve se chamar DIFF

with t0 as (
  select count("CITY") as "N"
  from "STATION"
),
 
t1 as (
  select count(distinct "CITY") as "N'"
  from "STATION"
)

select t0."N" - t1."N'" as "DIFF"
from t0, t1
