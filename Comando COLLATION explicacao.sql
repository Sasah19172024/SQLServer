/* COLLATION

O que é?
o COLLATION nos permite configurar se teremos diferenciação entre maiusculas e minusculas, ou entre acentuacao.

O COLLATION pode ser definido em níveis diferentes no SQL Server. Abaixo estão os tres níveis:
1- A nivel de SQL Server
2- A nivel de Banco de Dados
3- A nivel de tabelas/colunas



1- A nivel de SQL Server
O COLLATION a principel é definido durante a instalação do programa.
Por padrão, o COLLATION padrão é o seguinte:
Latin1_General_CI_AS
Onde CI significa Case Insensitive (nao diferencia maiusculas de minusculas) e AS significa Accent Sensitive (sensivel ao sotaque).
Para de

-- PRA SABER QUAL É O MODELO NO SEU SISTEMA*/ 
SELECT SERVERPROPERTY('COLLATION')