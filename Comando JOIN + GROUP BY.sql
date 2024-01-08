SELECT TOP(100)* FROM FactSales
SELECT * FROM DimDate


SELECT 
	SUM(SalesQuantity),
	CalendarYear
FROM FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
WHERE CalendarMonthLabel = 'January'
GROUP BY CalendarYear
HAVING SUM(SalesQuantity) >= 1200000