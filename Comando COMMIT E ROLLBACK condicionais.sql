-- COMMIT E ROLLBACK condicionais

--Voce deve inserir a cliente Rute Campos no banco de dados, se esse nome ja existir, desfaça a transacao, se nao, adicione no bd
SELECT * FROM cliente_aux

DECLARE @Contador INT 

BEGIN TRANSACTION T1
INSERT INTO cliente_aux(nome_cliente,genero,data_nascimento,cpf)
VALUES
	('Ruth Campos', 'F', '23/03/1972', '324.731.903-89')

SELECT @Contador =  COUNT(*) FROM cliente_aux 
WHERE nome_cliente = 'Ruth Campos'

IF @Contador = 1
	BEGIN
		COMMIT TRANSACTION T1
		PRINT 'Ruth Campos cadastrada com sucesso'
	END
ELSE
	BEGIN
		ROLLBACK TRANSACTION
		PRINT 'Ruth Campos ja foi cadastrada anteriormente'
	END
