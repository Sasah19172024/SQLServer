SELECT 
	*
FROM 
	DimProduct
--OS PRODUTOS SAO IGUAIS
SELECT
	DISTINCT ProductName 
FROM 
	DimProduct

SELECT 
	* 
FROM 
	DimCustomer
--oS CLIENTES DIMINUIRAM, TENDO AGORA 18869
SELECT
	DISTINCT CustomerKey 
FROM 
	DimCustomer