--PASSO 1: Crie um novo banco de dados chamado Desafio e selecione esse banco de dados
--criado
CREATE DATABASE DESAFIO

/*PASSO 2: Crie uma tabela de datas entre o dia 1 de janeiro do ano com a compra 
(DateFirstPurchase) mais antiga e o dia 31 de dezembro do ano com a compra mais recente. 
Obs1: Chame essa tabela de Calendario.
Obs2: A princ�pio, essa tabela deve conter apenas 1 coluna, chamada data e do tipo DATE.*/

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

--PASSO 4: Adicione na tabela os valores de Ano, M�s, Dia, AnoMes e NomeMes (nome do m�s 
--em portugu�s). Dica: utilize a instru��o CASE para verificar o m�s e retornar o nome certo.