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

SELECT * FROM Tabela

--Case Sensitive
--LIKE padrao:
SELECT
	*
FROM Tabela
WHERE Nome LIKE 'Mar%'

-- Retorna as linhas onde a primeira letra seja 'm', a segunda seja 'a' e a terceira 'r'
SELECT 
	*
FROM Tabela
WHERE Nome LIKE '[m][a][r]%'

-- Retorna as linhas onde a primeira letra seja 'M', a segunda seja 'a' e a terceira 'r'
SELECT 
	*
FROM Tabela 
WHERE Nome LIKE '[M][a][r]%'

-- Retorna as linhas onde a primeira letra seja 'M' OU 'm', a segunda seja 'a' OU 'A' e a terceira 'r' OU 'R'
SELECT 
	*
FROM Tabela 
WHERE Nome LIKE '[Mm][Aa][Rr]%'