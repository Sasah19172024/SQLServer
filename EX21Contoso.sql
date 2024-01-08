--Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas a 
--16 opções de cores

SELECT * FROM DimProduct

SELECT
	BrandName,
	 COUNT(DISTINCT ColorName) 
FROM
	DimProduct
GROUP BY BrandName

SELECT
	DISTINCT ColorName
FROM
	DimProduct
WHERE BrandName = 'Contoso'