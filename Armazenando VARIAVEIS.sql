-- [SQL Server] Variáveis
-- Aula 15 de 23: Armazenando em uma variável um registro de uma consulta

-- Exemplo 1: Qual é o nome do produto que teve a maior quantidade vendida EM UMA ÚNICA VENDA da tabela FactSales?

DECLARE @VARPRODUTOMAISVENDIDO INT
DECLARE @VARTOTALMAISVENDIDO INT

SELECT TOP(1)
	@VARPRODUTOMAISVENDIDO = ProductKey,
	@VARTOTALMAISVENDIDO = SalesQuantity
FROM FactSales
ORDER BY SalesQuantity

SELECT 
	ProductKey,
	ProductName
FROM DimProduct
WHERE ProductKey = @VARPRODUTOMAISVENDIDO


