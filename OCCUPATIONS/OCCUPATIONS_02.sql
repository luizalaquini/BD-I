-- Gere uma única tabela contendo os dois conjuntos de resultados a seguir: 

--1.  Uma  lista  ordenada  alfabeticamente  de  todos  os  nomes  em  OCCUPATIONS,  onde  cada  nome  é  imediatamente seguido pela primeira letra da profissão entre parênteses. Por exemplo: AnActorName(A), ADoctorName(D), AProfessorName(P) e ASingerName(S). 

--2.  O  número  de  ocorrências  de  cada  ocupação  em  OCCUPATIONS.  Classifique  as  ocorrências  em  ordem  crescente  e produza-as no seguinte formato: 

--There are a total of [occupation_count] [occupation]s. 

-- Onde  [occupation_count]  é  o  número  de  ocorrências  de  uma  dada  ocupação  em  OCCUPATIONS  e  [occupation]  é  o nome da ocupação em letras minúsculas. Se mais de uma ocupação tiver o mesmo [occupation_count], elas deverão ser ordenadas alfabeticamente pelo nome da profissão.

-- Os resultados da segunda consulta são ordenados de forma crescente, primeiro pelo número de nomes correspondentes a cada  profissão  (2 ≤  2  ≤  3 ≤  3 )  e,  em  seguida,  em  ordem  alfabética  pela  profissão  (doctor  ≤  singer  e  actor  ≤ professor).

-- Tabela onde os nomes estão em ordem alfabética e a primeira letra da profissão está entre parênteses
with t0 as (
  select concat("Name", '(',substr("Occupation", 1, 1),')') as "NameOcuppation"
  from "OCCUPATIONS"
  order by "Name" asc
),

-- Tabela com o número de ocorrências para cada ocupação
t1 as (
  select "Occupation", count("Occupation")
  from "OCCUPATIONS"
  group by "Occupation"
)

-- Tabela final com os dois conjuntos de resultados
select *
from t0
union all
select concat('There are a total of ', t1.count, ' ', lower(t1."Occupation"), 's.')
from t1
order by "NameOcuppation" asc