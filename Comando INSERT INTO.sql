USE BDImpressionador

CREATE TABLE Produtos(
	id_produto INT,
	nome_produto VARCHAR(200),
	data_validade DATETIME,
	preco_produto FLOAT
)

INSERT INTO produtos(id_produto, nome_produto, data_validade, preco_produto)
VALUES
	(1,'ARROZ','01/05/2022', 22),
	(2,'FEIJÃO','01/05/2022',22)

SELECT * FROM Produtos

UPDATE Produtos
SET nome_produto = 'MACARRÃO'
WHERE id_produto = 2

DELETE
FROM Produtos
WHERE id_produto = 3
DELETE
FROM Produtos
WHERE id_produto = 4