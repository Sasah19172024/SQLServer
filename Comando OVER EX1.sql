-- Fun��es de Janela
-- C�LCULO DO PERCENTUAL TOTAL
-- a) Calcule o % de participa��o de cada loja em rela��o ao total de vendas de todas as lojas.

SELECT 
	ID_Loja,
	Nome_Loja,
	Regiao,
	Qtd_Vendida,
	SUM(Qtd_Vendida) OVER() AS 'Total Vendido',
	FORMAT(Qtd_Vendida/SUM(Qtd_Vendida) OVER(), '0.00%') AS '% Por Regi�o'
FROM Lojas
ORDER BY ID_Loja


-- b) Calcule o % de participacao de cada loja em rela��o ao total de vendas de cada regi�o.

SELECT 
	ID_Loja,
	Nome_Loja,
	Regiao,
	Qtd_Vendida,
	SUM(Qtd_Vendida) OVER(PARTITION BY Regiao) AS 'Total Vendido',
	FORMAT(Qtd_Vendida/SUM(Qtd_Vendida) OVER(PARTITION BY Regiao), '0.00%') AS '% Por Regi�o'
FROM Lojas
ORDER BY ID_Loja
