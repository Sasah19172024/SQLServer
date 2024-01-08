 /*a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID 
(CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna 
SalesQuantity).
b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto
e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a)*/

SELECT
top(3)
	ProductKey,
	SUM(SalesQuantity)
FROM
	FactOnlineSales
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC


SELECT * FROM FactOnlineSales

SELECT
	TOP(1)
	CustomerKey,
	SUM(SalesQuantity)
FROM
	FactOnlineSales
group by CustomerKey
order by SUM(SalesQuantity) desc

/*b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto
e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a) 19037*/

SELECT * FROM FactOnlineSales

SELECT
	ProductKey,
	SUM(SalesQuantity)
FROM
	FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity)DESC

