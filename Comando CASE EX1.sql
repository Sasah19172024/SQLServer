SELECT
	CustomerKey,
	FirstName,
	Gender,
	CASE
		WHEN Gender = 'M' THEN 'Homem'
		WHEN Gender = 'F' THEN 'Mulher'
		ELSE 'EMPRESA'
	END AS 'Genero'
FROM DimCustomer


DECLARE @NOTA FLOAT = 3

SELECT	
	CASE	
		WHEN @NOTA > 6 THEN 'APROVADO'
		WHEN @NOTA BETWEEN 4 AND 6 THEN 'RECUPERAÇAO'
		ELSE 'REPROVADO'
	END AS 'NOTA'


DECLARE @VARPRODU INT = 770000

SELECT
	CASE
		WHEN @VARPRODU > 40000 THEN 'LUXO'
		WHEN @VARPRODU BETWEEN 10000 AND 39999 THEN 'ECONOMICO'
		ELSE 'BASICO'
	END