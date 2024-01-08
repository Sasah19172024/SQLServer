SELECT * FROM DimProduct

SELECT 
	MAX(UnitPrice) AS 'Preço Maximo',
	MIN(UnitPrice) AS 'Preço Minimo'
FROM 
	DimProduct