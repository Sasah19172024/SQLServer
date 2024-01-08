--O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade
--Devolvida para o canal de venda mais importante da empresa: Store.
--Utilize uma função SQL para fazer essas consultas no seu banco de dados. Obs: Faça essa
--análise considerando a tabela FactSales.

SELECT TOP(100) * FROM FactSales

SELECT 
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnAmount) AS 'Quantidade Retornada'
FROM 
	FactSales
WHERE channelKey = 1

SELECT * FROM DimChannel