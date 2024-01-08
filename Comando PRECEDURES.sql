-- PROCEDURES

-- 1. O que é procedures?
-- é um bloco de codigo que possui um nome e pode ser armazenado no banco de dados
-- Ele pode incluir uma serie de comandos SQL para executar alguma tarefa.

--2. Por que usar uma Procedure
--Procedures sao usadas para fazer tarefas repetitivas que nao sao possiveis em queries do SQL ou que dariam muito trabalho
--Pode incluir estruturas de controle e comandos.

--3. Tipos de Procedure
--Uma Procedure pode ou nao aceitar parametros de entrada

--Procedures Com Parametro
--Procedures sem Parametros



--2. Criando uma Precedure Sem Parametros
--EX1 CRIE UMA PRECEDURE QUE EXECUTA UM SELECT SIMPLES SEM PARAMETROS

CREATE PROCEDURE prOrdenaGerentes
AS
BEGIN
	SELECT
		id_gerente,
		nome_gerente,
		salario
	FROM dGerente
	ORDER BY salario DESC
END

EXECUTE prOrdenaGerentes

--3. Criando uma Precedure Com Parametros
--EX1 CRIE UMA PRECEDURE QUE EXECUTA UM SELECT que recebe um parametro de entrada para filtrar a tabela dClientes de acordo com o genero informado

SELECT * FROM  dCliente

CREATE OR ALTER PROCEDURE prListaClientes(@GEN VARCHAR(MAX))
AS
BEGIN
	SELECT 
		nome_cliente,
		genero, 
		data_nascimento, 
		cpf 
		FROM dCliente
		WHERE generO = @GEN
END

EXECUTE prListaClientes 'F'


--4. Criando uma Precedure Com Parametros(2)
--EX1 CRIE UMA PRECEDURE QUE EXECUTA UM SELECT que recebe um parametro de entrada para filtrar a tabela dClientes de acordo com o genero informado e ano informado

CREATE OR ALTER PROCEDURE prListaClientes(@GEN VARCHAR(MAX), @ANO INT)
AS
BEGIN
	SELECT 
		nome_cliente,
		genero, 
		data_nascimento, 
		cpf 
		FROM dCliente
		WHERE genero = @GEN AND YEAR(data_nascimento) = @ANO
END

EXECUTE prListaClientes 'M', 1989


--6. Criando uma procedure mais complexa para cadastro de contatos

--Exemplo: Crie uma procedure para cadastrar uma nova assinatura de um contrato na tabela fContratos(com parametros).
--Gerente: Lucas Sampaio
--Cliente: Gustavo Barbosa
--Valor do contrato: 5000

--1° Passo: Definir as variaveis a serem utilizadas
--2° Passo: Armazenar o valor de id_gerente de acordo com o informado
--3° Passo: Armazenar o valor id_cliente de acordo com o informado
--4° Passo: Armazenar a data da assinatura como sendo a data atual do sistema
--5° Passo: Utilizar o INSERT INTO para inserir os dados na tabela

SELECT * FROM fContratos

CREATE OR ALTER PROCEDURE prRegistraContrato(@GERENTE VARCHAR(MAX), @CLIENTE VARCHAR(MAX), @VALOR FLOAT)
AS
BEGIN
	DECLARE @ID_GERENTE INT 
	DECLARE @ID_CLIENTE INT

	SELECT
		@ID_GERENTE = id_gerente
	FROM dGerente
	WHERE nome_gerente = @GERENTE

	SELECT
		@ID_CLIENTE = id_cliente
	FROM dCliente
	WHERE nome_cliente = @CLIENTE

	INSERT INTO fContratos(data_assinatura, id_cliente, id_gerente,valor_contrato)
	VALUES
		(GETDATE(), @ID_CLIENTE, @ID_GERENTE, @VALOR)

	PRINT 'Contrato registrato com sucesso'
END

EXECUTE prRegistraContrato @GERENTE = 'Lucas Sampaio', @CLIENTE = 'Gustavo Barbosa',@VALOR = 5000

--7. excluindo

DROP PROCEDURE prRegistraContrato

--8. Functions vs. Procedures

/*

Temos abaixo uma lista de principais diferencas entre as duas

Diferença 1
-- Procedures sao usasdas para executar um processo, uma sequencia de comando e blocos SQL.
-- Functions sao usadas para fazer calculos

Diferença 2
-- Procedures nao podem ser 'chamadas' dentro da clausula SELECT
-- Functions podem ser 'chamadas' dentro da clausula SELECT(desde quw nao contenham comandos SELECT)

Diferenca 3
-- Procedures nao precisam retornar um valor
-- Functions precisam retornar um valor


