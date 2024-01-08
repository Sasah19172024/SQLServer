SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount)
FROM 
	DimStore
GROUP BY StoreType

SELECT * FROM DimProduct

SELECT
	BrandName,
	AVG(UnitPrice)
FROM
	DimProduct
GROUP BY BrandName