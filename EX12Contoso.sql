--Uma nova ação no setor de Marketing precisará avaliar a média salarial de todos os clientes
--da empresa, mas apenas de ocupação Professional. Utilize um comando SQL para atingir esse
--resultado.

SELECT * FROM DimCustomer

SELECT 
	AVG(YearlyIncome) AS 'Media Salarial'
FROM 
	DimCustomer
WHERE Occupation = 'Professional'