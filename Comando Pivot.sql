--Operador Pivot

--1. CRIANDO UMA Pivot TABEL
SELECT
	BrandName,
	COUNT(ProductKey) AS TOTAL
FROM DimProduct
GROUP BY BrandName

--1°) O primeiro passo é selecionar os dados que serao usados como base para criaçao da Pivot table
--2°) Como nao conseguimos aplicar o Pivot diretamente nos dados acima, precisaremos fazer isso indiretamente
--3°) Agora sim podemos aplicar o Pivot, incluindo o calculo desejado e os nomes das colunas a serem consideradas

SELECT * FROM (
SELECT
	ProductKey,
	BrandName
FROM
	DimProduct) AS DADOS
	PIVOT(
		COUNT(ProductKey)
		FOR BrandName
		IN ([Northwind Traders]
			,[Contoso]
			,[Tailspin Toys]
			,[Adventure Works]
			,[Southridge Video]
			,[Wide World Importers]
			,[The Phone Company]
			,[Fabrikam]
			,[Litware]
			,[A. Datum]
			,[Proseware])
) AS PivotTable



--Adicionando grupos de linha Pivot Table
--Calculando o total de funcionarios por departamento

SELECT
	DepartmentName,
	COUNT(EmployeeKey) TOT_FUNC
FROM DimEmployee
GROUP BY DepartmentName

SELECT * FROM
(SELECT 
	EmployeeKey,
	YEAR(HireDate) AS ANO,
	DATENAME(MM, HireDate) AS MES,
	DepartmentName
FROM DimEmployee) AS DADOS
PIVOT(
	COUNT(EmployeeKey)
	FOR DepartmentName
	IN ([Document Control]
		,[Engineering]
		,[Executive]
		,[Facilities and Maintenance]
		,[Finance]
		,['Human Resources Contral]
		,[Human Resources]
		,[Information Services]
		,[Marketing]
		,[Production Control]
		,[Production]
		,[Purchasing]
		,[Quality Assurance]
		,[Research and Development]
		,[Sales]
		,[Shipping and Receiving]
		,[Tool Design])
) AS PIVOT_T
ORDER BY ANO, MES 

