-- Consulte  os  nomes  de  cidade  (CITY)  da  tabela  STATION  apenas  para  as  linhas  com  números  de  identificação  (ID) pares. Você pode imprimir os resultados em qualquer ordem, mas deve excluir duplicatas da sua resposta.

select distinct "CITY"
from "STATION"
where "ID" % 2 = 0;