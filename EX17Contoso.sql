/*Voc� precisa fazer uma an�lise de vendas por produtos. O objetivo final � descobrir o valor 
total vendido (SalesAmount) por produto (ProductKey). 
a) A tabela final dever� estar ordenada de acordo com a quantidade vendida e, al�m disso, 
mostrar apenas os produtos que tiveram um resultado final de vendas maior do que 
$5.000.000.
b) Fa�a uma adapta��o no exerc�cio anterior e mostre os Top 10 produtos com mais vendas. 
Desconsidere o filtro de $5.000.000 aplicado*/


SELECT TOP(100)* FROM FactSales

SELECT
	ProductKey,
	SUM(SalesAmount)
FROM
	FactSales
GROUP BY ProductKey
HAVING SUM(SalesAmount) >= 5000000
ORDER BY ProductKey

SELECT
	TOP(10)
	ProductKey,
	SUM(SalesAmount)
FROM
	FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesAmount) DESC