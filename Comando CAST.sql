--10 49.50 'MARCOS' '10/10/2000'

SELECT SQL_VARIANT_PROPERTY(CAST('10/10/2000' AS datetime), 'BASETYPE')
SELECT SQL_VARIANT_PROPERTY(CAST(22.2 AS INT), 'BASETYPE')

SELECT CAST(22.2 AS INT)
SELECT CAST('11/11/2000' AS datetime)

SELECT	
	'O PRE�O DO PASTEL � ' + CAST(30 AS varchar(50))

SELECT CAST('11/11/2000' AS datetime) + 1