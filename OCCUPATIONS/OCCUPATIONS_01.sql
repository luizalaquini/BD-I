-- “Pivote” a coluna  Occupation  na tabela  OCCUPATIONS  para que cada nome (coluna  Name) seja colocado em
--ordem alfabética e exibido abaixo da ocupação correspondente (coluna Occupation). As colunas da relação de saída
--devem ser chamadas Doctor, Professor, Singer e Actor, respectivamente. Imprima NULL quando não houver
--mais nomes correspondentes a uma ocupação.

with doctors as (
  select "Name"
  from "OCCUPATIONS"
  where "Occupation" = 'Doctor'
  order by "Name" asc
),

professors as (
  select "Name"
  from "OCCUPATIONS"
  where "Occupation" = 'Professor'
  order by "Name" asc
),

singers as (
  select "Name"
  from "OCCUPATIONS"
  where "Occupation" = 'Singer'
  order by "Name" asc
),

actors as (
  select "Name"
  from "OCCUPATIONS"
  where "Occupation" = 'Actor'
  order by "Name" asc
)

select doctors."Name" as "Doctor", professors."Name" as "Professor", singers."Name" as "Singer", actors."Name" as "Actor"
from doctors
  full outer join professors on doctors."Name" = professors."Name"
  full outer join singers on doctors."Name" = singers."Name"
  full outer join actors on doctors."Name" = actors."Name"

-- NÃO FINALIZADA: AJEITAR NULOS