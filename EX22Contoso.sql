 /*Faça um agrupamento para saber o total de clientes de acordo com o Sexo e também a média 
salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus 
conhecimentos em SQL.*/

SELECT * FROM DimCustomer

SELECT
	MaritalStatus,
	COUNT(CustomerKey)
FROM 
	DimCustomer
WHERE MaritalStatus IN ('S', 'M')
GROUP BY MaritalStatus