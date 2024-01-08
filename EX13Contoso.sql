--Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na
--empresa. O seu gerente te pediu os seguintes números e informações:

--a) Quantos funcionários tem a loja com mais funcionários?
--b) Qual é o nome dessa loja?
--c) Quantos funcionários tem a loja com menos funcionários?
--d) Qual é o nome dessa loja?

SELECT * FROM DimStore

SELECT 
	MAX(EmployeeCount)
FROM DimStore

SELECT 
	TOP(1) *
FROM
	DimStore
ORDER BY EmployeeCount DESC

SELECT 
	MIN(EmployeeCount)
FROM DimStore

SELECT 
	TOP(1) *
FROM
	DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount