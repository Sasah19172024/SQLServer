CREATE TABLE Textos( ID INT, Texto VARCHAR(100) COLLATE Latin1_General_CS_AS)

INSERT INTO Textos
VALUES
	(1, 'Marcos'),
	(2, 'Excel'),
	(3, 'leandro'),
	(4, 'K'),
	(5, 'X7'),
	(6, '19'),
	(7, '#M'),
	(8, '@9'),
	(9, 'M'),
	(10, 'RT')

SELECT * FROM Textos


--RETORNANDO NOMES QUE COMECAM COM A LETRA m e OU k

SELECT 
*
from Textos
WHERE Texto LIKE '[MEK]%'

-- RETORNANDO NOMES QUE POSSUME APENAS UMA LETRA

SELECT
	*
FROM Textos
WHERE Texto LIKE '[A-z]'

-- RETORNANDO NOMES QUE POSSUME APENAS DUAS LETRA
SELECT
	*
FROM Textos
WHERE Texto LIKE '[A-z][A-z]'

-- RETORNANDO NOMES QUE POSSUME APENAS DOIS CARACTERES
SELECT
	*
FROM Textos
WHERE Texto LIKE '[A-z][0-9]'

