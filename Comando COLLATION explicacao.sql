/* COLLATION

O que �?
o COLLATION nos permite configurar se teremos diferencia��o entre maiusculas e minusculas, ou entre acentuacao.

O COLLATION pode ser definido em n�veis diferentes no SQL Server. Abaixo est�o os tres n�veis:
1- A nivel de SQL Server
2- A nivel de Banco de Dados
3- A nivel de tabelas/colunas



1- A nivel de SQL Server
O COLLATION a principel � definido durante a instala��o do programa.
Por padr�o, o COLLATION padr�o � o seguinte:
Latin1_General_CI_AS
Onde CI significa Case Insensitive (nao diferencia maiusculas de minusculas) e AS significa Accent Sensitive (sensivel ao sotaque).
Para de

-- PRA SABER QUAL � O MODELO NO SEU SISTEMA*/ 
SELECT SERVERPROPERTY('COLLATION')