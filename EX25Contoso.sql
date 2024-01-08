/*Faça uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Você 
deve considerar apenas as mulheres, dos departamentos de Production, Marketing, 
Engineering e Finance, para os funcionários contratados entre os anos de 1999 e 2000*/

SELECT * FROM DimEmployee

SELECT 
	Title,
	SUM(VacationHours)
FROM 
	DimEmployee
WHERE MaritalStatus = 'S' AND DepartmentName IN ('roduction',' Marketing', 
'Engineering', 'Finance') AND HireDate BETWEEN '19900101' AND '20000101'
GROUP BY Title