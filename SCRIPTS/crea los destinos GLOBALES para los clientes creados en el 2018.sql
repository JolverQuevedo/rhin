
-- crea los destinos GLOBALES para los clientes creados en el 2018 --> RHIN (no hay del modelador)
SELECT * FROM CLIENTE

SELECT CODIGO into #cli FROM CLIENTE WHERE YEAR(FECCREA) = 2018 ORDER BY 1

DECLARE @cLI CHAR(5);

WHILE (EXISTS(SELECT CODIGO FROM #CLI order by 1))
BEGIN
	SET @CLI = (SELECT TOP 1 CODIGO FROM #CLI order by 1)
	insert into DESTINOS   SELeCT (select top 1 right('0000'+ convert(varchar,convert(int,codigo)+1),4) from DESTINOS order by 1 desc), 
	'GLOBAL','','', 'USA', @CLI, 'AUTO', GETDATE(),'A'
   DELETE #CLI WHERE CODIGO = @CLI
END


select * from destinos order by 1 desc
drop table #cli