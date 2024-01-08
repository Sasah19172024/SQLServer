--PASSO 1: Crie um novo banco de dados chamado Desafio e selecione esse banco de dados
--criado
CREATE DATABASE DESAFIO

/*PASSO 2: Crie uma tabela de datas entre o dia 1 de janeiro do ano com a compra 
(DateFirstPurchase) mais antiga e o dia 31 de dezembro do ano com a compra mais recente. 
Obs1: Chame essa tabela de Calendario.
Obs2: A princípio, essa tabela deve conter apenas 1 coluna, chamada data e do tipo DATE.*/

SELECT * FROM ContosoRetailDW.dbo.DimCustomer

CREATE TABLE Calendario(
Data DATE)

DECLARE @VarAnoInicial INT = YEAR((SELECT MIN(DateFirstPurchase) FROM ContosoRetailDW.dbo.DimCustomer))
DECLARE @VarAnoFinal INT = YEAR((SELECT MAX(DateFirstPurchase) FROM ContosoRetailDW.dbo.DimCustomer))

DECLARE @VarDataInicial DATE = DATEFROMPARTS(@VarAnoInicial, 1, 1)
DECLARE @VarDataFinal DATE = DATEFROMPARTS(@VarAnoFinal, 12, 31)

WHILE @VarDataInicial < @VarDataFinal
BEGIN
	INSERT INTO Calendario(Data)
	VALUES(@VarDataInicial)
	SET @VarDataInicial = DATEADD(DAY, 1, @VarDataInicial)
END

SELECT * FROM Calendario



PASSO 3: Crie colunas auxiliares na tabela Calendario chamadas: Ano, Mes, Dia, AnoMes e 
NomeMes. Todas do tipo INT

ALTER TABLE Calendario
ADD Ano INT,
	Mes INT,
	Dia INT,
	AnoMes INT,
	NomeMes VARCHAR(50)

SELECT * FROM Calendario

--PASSO 4: Adicione na tabela os valores de Ano, Mês, Dia, AnoMes e NomeMes (nome do mês 
--em português). Dica: utilize a instrução CASE para verificar o mês e retornar o nome certo.UPDATE Calendario SET Ano = YEAR(Data)UPDATE Calendario SET Mes = MONTH(Data)UPDATE Calendario SET Dia = DAY(Data)UPDATE Calendario SET AnoMes = CONCAT(YEAR(Data), FORMAT(MONTH(Data), '00'))UPDATE Calendario SET NomeMes = 	CASE		WHEN MONTH(Data) = 1 THEN 'Janeiro'		WHEN MONTH(Data) = 2 THEN 'Fevereiro'		WHEN MONTH(Data) = 3 THEN 'Março'		WHEN MONTH(Data) = 4 THEN 'Abril'		WHEN MONTH(Data) = 5 THEN 'Maio'		WHEN MONTH(Data) = 6 THEN 'Junho'		WHEN MONTH(Data) = 7 THEN 'Julho'		WHEN MONTH(Data) = 8 THEN 'Agosto'		WHEN MONTH(Data) = 9 THEN 'Setembro'		WHEN MONTH(Data) = 10 THEN 'Outubro'		WHEN MONTH(Data) = 11 THEN 'Novembro'		WHEN MONTH(Data) = 12 THEN 'Dezembro'	END	SELECT * FROM Calendario--PASSO 5: Crie a View vwNovosClientes, que deve ter as colunas mostradas abaixo.CREATE VIEW vwNovosClientes ASSELECT 	ROW_NUMBER() OVER(ORDER BY AnoMes) AS 'ID',	Ano,	NomeMes,	COUNT(DimCustomer.DateFirstPurchase) AS 'Novos_Clientes'FROM CalendarioLEFT JOIN ContosoRetailDW.dbo.DimCustomer	ON Calendario.Data = DimCustomer.DateFirstPurchaseGROUP BY Ano, NomeMes, AnoMesSELECT * FROM vwNovosClientes