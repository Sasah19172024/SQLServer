/*Você deverá descobrir o peso total para cada tipo de produto (StockTypeName). 
A tabela final deve considerar apenas a marca ‘Contoso’ e ter os seus valores classificados em 
ordem decrescente.*/

select * from DimProduct

SELECT
	StockTypeName,
	SUM(Weight)
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC