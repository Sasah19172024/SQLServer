-- Fun��es de Janela
-- FUN��ES DE OFFSET (Deslocamento): LAG e LEAD

SELECT
	Data_Fechamento AS 'Data do Fechamento',
	Faturamento_MM AS 'Faturamento Total (em milh�es)',
	LAG(Faturamento_MM, 1, 0) OVER(ORDER BY Data_Fechamento) AS 'Fat. M�s Anterior',
	LEAD(Faturamento_MM, 1, 0) OVER(ORDER BY Data_Fechamento) AS 'Fat. M�s Seguinte'
FROM Resultado
ORDER BY [Data do Fechamento]
