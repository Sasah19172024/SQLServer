/*Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de 
acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer 
esse agrupamento*/

SELECT * FROM DimCustomer

SELECT
	Education,
	AVG(YearlyIncome) AS 'MEDIA ANUAL',
	COUNT(CustomerKey) AS 'NUM DE PESSOAS'
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education