--Voc� foi alocado para criar um relat�rio das lojas registradas atualmente na Contoso.
--a) Descubra quantas lojas a empresa tem no total. Na consulta que voc� dever� fazer � tabela
--DimStore, retorne as seguintes informa��es: StoreName, OpenDate, EmployeeCount
--b) Renomeeie as colunas anteriores para deixar a sua consulta mais intuitiva.
--c) Dessas lojas, descubra quantas (e quais) lojas ainda est�o ativas.

SELECT
	StoreName AS NomeDaLoja, 
	OpenDate AS DataDeAbertura, 
	EmployeeCount AS ContaDoFuncionario,
	CloseDate
FROM
	DimStore
WHERE Status = 'ON' AND StoreType = 'Store'

SELECT * FROM DimStore