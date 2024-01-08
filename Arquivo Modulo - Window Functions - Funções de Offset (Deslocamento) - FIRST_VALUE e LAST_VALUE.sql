-- Fun��es de Janela
-- FUN��ES DE OFFSET (Deslocamento): FIRST_VALUE e LAST_VALUE

SELECT
	Data_Fechamento AS 'Data do Fechamento',
	Faturamento_MM AS 'Faturamento Total (em milh�es)',
	FIRST_VALUE(Faturamento_MM) OVER(ORDER BY Data_Fechamento) AS 'Primeiro valor',
	LAST_VALUE(Faturamento_MM) OVER(ORDER BY Data_Fechamento ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS '�ltimo valor'
FROM Resultado
ORDER BY [Data do Fechamento]
