/*A �rea de RH est� com uma nova a��o para a empresa, e para isso precisa saber a quantidade 
total de funcion�rios do sexo Masculino e do sexo Feminino. 
a) Descubra essas duas informa��es utilizando o SQL.
b) O funcion�rio e a funcion�ria mais antigos receber�o uma homenagem. Descubra as 
seguintes informa��es de cada um deles: Nome, E-mail, Data de Contrata��o*/

SELECT * FROM DimEmployee

SELECT 
	FirstName,
	EmailAddress,
	HireDate
FROM
	DimEmployee
WHERE MaritalStatus = 'M'
ORDER BY HireDate 

SELECT 
	FirstName,
	EmailAddress,
	HireDate
FROM DimEmployee
WHERE MaritalStatus = 'S'
ORDER BY HireDate

SELECT COUNT(FirstName) FROM DimEmployee
WHERE MaritalStatus = 'M'