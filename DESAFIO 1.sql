CREATE VIEW vwHistoricoLojas AS
SELECT
	ROW_NUMBER() OVER(ORDER BY CalendarMonth) AS 'ID',
	CalendarYear,
	CalendarMonthLabel,
	COUNT(OpenDate) AS 'QTD_ABERTA'
FROM DimDate
LEFT JOIN DimStore
 ON DimDate.Datekey = DimStore.OpenDate
 GROUP BY CalendarMonth, CalendarYear, CalendarMonthLabel



SELECT * FROM DimDate
SELECT * FROM DimStore