SELECT * FROM DimCustomer

SELECT
	CustomerKey,
	FirstName,
	BirthDate,
	EmailAddress
FROM
	DimCustomer

SELECT
	CustomerKey ChaveDoCliente,
	FirstName as PrimeiroNome,
	BirthDate as DataDeAniversario,
	EmailAddress as EndereçoDeEmail
FROM
	DimCustomer