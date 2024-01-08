/*A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade 
total de funcionários do sexo Masculino e do sexo Feminino. 
a) Descubra essas duas informações utilizando o SQL.
b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as 
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação*/

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