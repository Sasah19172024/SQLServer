-- [SQL Server] Funções Condicionais
-- Aula 6 de 18: CASE com os operadores lógicos AND e OR

-- Faça uma consulta à tabela DimProduct e retorne as colunas ProductName, BrandName, ColorName, UnitPrice e uma coluna de preço com desconto.

-- a) Caso o produto seja da marca Contoso E da cor Red, o desconto do produto será de 10%. Caso contrário, não terá nenhum desconto.
SELECT	
	ProductName,
	BrandName,
	ColorName,
	UnitPrice,
	CASE
		WHEN BrandName = 'Contoso' AND ColorName = 'Red' THEN UnitPrice - (UnitPrice * 0.10)
		WHEN BrandName = 'Litware' OR BrandName ='Fabrikam' THEN UnitPrice - (UnitPrice * 0.05)
		ELSE UnitPrice
	END AS 'NOVO PREÇO'
FROM DimProduct



-- b) Caso o produto seja da marca Litware OU Fabrikam, ele receberá um desconto de 5%. Caso contrário, não terá nenhum desconto.

