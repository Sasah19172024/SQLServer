--Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o 
--Departamento (DepartmentName). Importante: Você deverá considerar apenas os 
--funcionários ativos

SELECT * FROM DimEmployee

SELECT
	DepartmentName,
	COUNT(DepartmentName) AS 'Num de func.'
FROM
	DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName