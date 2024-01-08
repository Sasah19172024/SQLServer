SELECT * FROM cliente_aux

BEGIN TRANSACTION 
INSERT INTO cliente_aux(nome_cliente,genero,data_nascimento,cpf)
VALUES
	('Maria Julia', 'F', '30/04/1995', '987.654.321-00')
COMMIT TRANSACTION

BEGIN TRANSACTION
UPDATE cliente_aux
	SET cpf ='999.999.999-99'
	WHERE id_cliente =1
ROLLBACK TRANSACTION

-- NOMEANDO TRANSACAO
BEGIN TRANSACTION T1
INSERT INTO cliente_aux(nome_cliente,genero,data_nascimento,cpf)
VALUES
	('Naldo Reis', 'M', '10/02/1992', '412.889.331-90')

COMMIT TRANSACTION T1


