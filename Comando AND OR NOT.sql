SELECT * FROM DimProduct

SELECT * FROM DimProduct
WHERE BrandName = 'Fabrikam' AND ColorName = 'Black'
ORDER BY UnitPrice 

SELECT * FROM DimProduct
WHERE BrandName = 'Contoso' OR ColorName = 'WHITE'

SELECT * FROM DimEmployee
WHERE NOT DepartmentName = 'Marketing'