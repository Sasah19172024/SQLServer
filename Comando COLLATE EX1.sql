CREATE DATABASE BD_Collation
COLLATE Latin1_General_CI_AS


CREATE TABLE Tabela(ID INT , Nome VARCHAR(50) COLLATE Latin1_General_CS_AS)

INSERT INTO Tabela
VALUES
	(1, 'Matheus'),
	(2, 'Marcela'),
	(3, 'marcos'),
	(4, 'MAuricio'),
	(5, 'Marta'),
	(6, 'Miranda'),
	(7, 'Melissa'),
	(8, 'Lucas'),
	(9, 'luisa'),
	(10, 'Pedro')

SELECT
	*
FROM Tabela
WHERE Nome = 'MARCELA'
