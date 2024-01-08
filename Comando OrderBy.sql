--ORDERNAR 
SELECT * FROM DimStore
ORDER BY EmployeeCount DESC

SELECT TOP(10) 
	ProductName,
	UnitCost,
	Weight
FROM 
	DimProduct
ORDER BY UnitCost DESC, Weight