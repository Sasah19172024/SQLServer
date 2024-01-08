SELECT * FROM DimProduct

SELECT 
	BrandName,
	COUNT(*)
FROM DimProduct
GROUP BY BrandName