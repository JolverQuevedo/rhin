select * from CLIENTE_TALLA

select * from tallas
SELECT CODIGO into #cli FROM CLIENTE WHERE YEAR(FECCREA) = 2018 ORDER BY 1

DECLARE @cLI CHAR(5);

WHILE (EXISTS(SELECT CODIGO FROM #CLI ))
BEGIN
	SET @CLI = (SELECT TOP 1 CODIGO FROM #CLI order by 1)
	insert into CLIENTE_TALLA   SELeCT @CLI, 'XXS', 1  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, 'XS' , 2  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, 'S'  , 3  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, 'M'  , 4  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, 'L'  , 5  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, 'XL' , 6  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, '1'  , 7  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, '2'  , 8  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, '3'  , 9  , 'AUTO', GETDATE(), 'A'
	insert into CLIENTE_TALLA   SELeCT @CLI, '4'  , 10 , 'AUTO', GETDATE(), 'A'
		
   DELETE #CLI WHERE CODIGO = @CLI
END

select * from CLIENTE_TALLA order by 1 desc
drop table #cli