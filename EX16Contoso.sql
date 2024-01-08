/*a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas
(channelkey).
b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas
para o ano de 2007.*/SELECT TOP(100) * FROM FactSales	SELECT 	channelKey,	SUM(SalesQuantity)FROM	FactSalesGROUP BY channelKey--b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade
--total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).SELECT TOP(100) * FROM FactSalesSELECT	StoreKey,	SUM(SalesQuantity) AS QntdVendida,	SUM(ReturnQuantity) AS QntdRetornadaFROM	FactSalesGROUP BY StoreKey--c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas
--para o ano de 2007.SELECT	channelKey,	SUM(SalesAmount)FROM	FactSalesWHERE DateKey BETWEEN '20070101' AND '20071201'GROUP BY channelKey