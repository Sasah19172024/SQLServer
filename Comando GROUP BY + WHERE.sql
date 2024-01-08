SELECT * FROM DimProduct

SELECT 
	ColorName,
	COUNT(*)
FROM 
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY ColorName