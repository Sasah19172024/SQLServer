--Voc� precisar� fazer uma an�lise da quantidade de funcion�rios das lojas registradas na
--empresa. O seu gerente te pediu os seguintes n�meros e informa��es:

--a) Quantos funcion�rios tem a loja com mais funcion�rios?
--b) Qual � o nome dessa loja?
--c) Quantos funcion�rios tem a loja com menos funcion�rios?
--d) Qual � o nome dessa loja?

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