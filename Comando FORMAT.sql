-- [SQL Server] Variáveis
-- Aula 6 de 23: FORMAT - Formatação de dados personalizada

--FORMAT: Função para formatação de valores no SQL

-- a) Numéricos (N OR G):
SELECT FORMAT(10000, 'N')
SELECT FORMAT(10000, 'G')

-- b) Personalizados (#):

SELECT FORMAT(52976285802, '###-###-###/##')

-- c) Data (MM SEMPRE MAIUSC. OR MMMM:
SELECT FORMAT(CAST('01/05/2005' AS date), 'MM/dd/yyyy')
SELECT FORMAT(CAST('01/05/2005' AS date), 'MMMM/dd/yyyy')
-- SQL_VARIANT_PROPERTY

SELECT 'A DATA DO PRODUTO É ' + FORMAT(CAST('01/05/2005' AS DATE), 'MMMM/dd/yyyy')