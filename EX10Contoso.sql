--Você foi alocado para criar um relatório das lojas registradas atualmente na Contoso.
--a) Descubra quantas lojas a empresa tem no total. Na consulta que você deverá fazer à tabela
--DimStore, retorne as seguintes informações: StoreName, OpenDate, EmployeeCount
--b) Renomeeie as colunas anteriores para deixar a sua consulta mais intuitiva.
--c) Dessas lojas, descubra quantas (e quais) lojas ainda estão ativas.

SELECT
	StoreName AS NomeDaLoja, 
	OpenDate AS DataDeAbertura, 
	EmployeeCount AS ContaDoFuncionario,
	CloseDate
FROM
	DimStore
WHERE Status = 'ON' AND StoreType = 'Store'

SELECT * FROM DimStore