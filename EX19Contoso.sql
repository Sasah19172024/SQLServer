--a) Faça um agrupamento e descubra a quantidade total de produtos por marca.
SELECT * FROM DimProduct

SELECT
	BrandName,
	COUNT(ProductName) AS 'Qnt. de produto'
FROM
	DimProduct
GROUP BY BrandName

--b) Determine a média do preço unitário (UnitPrice) para cada ClassName.
SELECT
	ClassName,
	AVG(UnitPrice)
FROM
	DimProduct
GROUP BY ClassName
--c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui
SELECT
	ColorName,
	SUM(Weight)
FROM
	DimProduct
GROUP BY ColorName