--selecionando todas as colunas
SELECT 
	*
FROM
	DimCustomer

SELECT TOP(100)
	*
FROM
	DimCustomer

SELECT TOP(100)
	FirstName,
	EmailAddress,
	BirthDate
FROM
	DimCustomer
--selecionar os 100 primeiros clientes
SELECT TOP(100)
	SELECT TOP(100)
	*
FROM
	DimCustomer
--mudar os nomes da coluna
SELECT TOP(100)
	FirstName AS PrimeiroNome,
	EmailAddress AS Email,
	BirthDate AS DataDeAniversario
FROM
	DimCustomer

--selecionar os 10% primeiros clientes
SELECT TOP(10) PERCENT
	*
FROM
	DimCustomer