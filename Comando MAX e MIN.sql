SELECT * FROM DimProduct

SELECT 
	MAX(UnitPrice) AS 'Pre�o Maximo',
	MIN(UnitPrice) AS 'Pre�o Minimo'
FROM 
	DimProduct