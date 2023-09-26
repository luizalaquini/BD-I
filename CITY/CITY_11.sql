-- Consulte a população média de todas as cidades da tabela CITY onde o distrito é California.

SELECT AVG(POPULATION)
FROM (  
  SELECT *
  FROM CITY
  WHERE DISTRICT = 'California'
) as filtered;