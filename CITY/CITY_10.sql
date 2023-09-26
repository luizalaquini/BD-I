-- Consulte a população total de todas as cidades da tabela CITY onde o distrito é California.

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'