-- Consulte os dois valores a seguir na tabela STATION: 
-- • A soma de todos os valores em LAT_N arredondada para uma escala de 2 casas decimais. 
-- • A soma de todos os valores em LONG_W arredondada para uma escala de 2 casas decimais.

select trunc(sum("LAT_N"), 2), trunc(sum("LONG_W"), 2)
from "STATION"

-- NÃO PASSOU NO BOCA