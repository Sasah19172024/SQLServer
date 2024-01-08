SELECT * FROM DimProduct

SELECT 
	BrandName AS Marca,
	COUNT(BrandName)
FROM
	DimProduct
GROUP BY BrandName
HAVING COUNT(BrandName) >= 200