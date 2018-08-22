-- los clientes nuevos
SELECT CODIGO into #cli FROM CLIENTE WHERE YEAR(FECCREA) = 2018  ORDER BY 1

-- los estilos de los clientes nuevos
select B.* into #est from #cli AS A inner join estilos AS B on codigo = cliente

SELECT [PROTO], [VERSION] INTO #PRO FROM PROTOS WHERE  cliente IN (SELECT CLIENTE FROM #EST) and ESTILO IN (SELECT CODEST FROM #EST)



DELETE [proto-tallas]	WHERE PROTO+[VERSION] IN (SELECT PROTO+[VERSION] FROM #PRO)
DELETE [proto-detalles]	WHERE PROTO+[VERSION] IN (SELECT PROTO+[VERSION] FROM #PRO)
DELETE [PROTO-OBS] 		WHERE PROTO+[VERSION] IN (SELECT PROTO+[VERSION] FROM #PRO)
DELETE PROTOS			WHERE PROTO+[VERSION] IN (SELECT PROTO+[VERSION] FROM #PRO)




DECLARE @cLI CHAR(5);
-- barro los clientes nuevos
WHILE (EXISTS(SELECT CODIGO FROM #CLI ))
BEGIN
	SET @CLI = (SELECT TOP 1 CODIGO FROM #CLI order by 1)
	DECLARE @PRO CHAR(10)
	DECLARE @VER CHAR(3)
	DECLARE @EST CHAR(5)
	
	SET @VER = '001'
	
	-- barro los estilos de los clientes nuevos
	-- para crear los protos genericos
	WHILE (EXISTS (SELECT CODEST FROM #EST where cliente = @cli and ESTADO = 'A'))
		begin
			SET @PRO  = (select top 1 right('0000000000'+ convert(varchar,convert(int,PROTO)+1),10) from PROTOS order by 1 desc)
			set @EST = (select top 1 codest from #est where cliente = @cli)
	
			-- CABECERA
			INSERT INTO PROTOS SELECT @PRO, @VER, @cli, @est, NULL,
			 'GENERICO', '000001','000','',NULL,NULL,NULL, 1, 1, 1, 1, 100, 100, 100, 100, '', GETDATE(), 'AUTO', NULL, NULL, 'AUTO', GETDATE(), 'A', NULL

			 -- DETALLE TELA
			INSERT INTO [PROTO-DETALLES] SELECT @pro, @VER,'TE', 0, '000001', 
			'AUTOGENERADO -TELA', 1, 1, 1, 0.1, NULL, 1, 1, '001', 0.01, 'KGR', 'AUTO', GETDATE(), 'A', NULL
			-- DETALLE AVIOS
			INSERT INTO [PROTO-DETALLES] SELECT @PRO, @VER ,'AV', 1, '10000000', 
			'AUTOGENERADO - AVIOS', 1, 1, 0.01, 0.1,'G', 1, 1, null ,0.01, 'UND', 'AUTO', GETDATE(), 'A', NULL
			-- DETALLE TALLAS / SIZEBREAKDOWN
			insert into [PROTO-TALLAS] select @pro, @ver, 0, 'XXS', 1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 1, 'XS',  1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 2, 'S',   1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 3, 'M',   1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 4, 'L',   1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 5, 'XL',  1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 6, '1',   1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 7, '2',   1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 8, '3',   1, 0, 'AUTO', GETDATE(), 'A'
			insert into [PROTO-TALLAS] select @pro, @ver, 9, '4',   1, 0, 'AUTO', GETDATE(), 'A'
			-- OBSERVACIONES 
			INSERT INTO [PROTO-OBS] SELECT @PRO, @VER, NULL, NULL,'GENERADO AUTOMATICAMENTE', 'AUTO', GETDATE(), 'A'
		--	print @cli + ' - ' + @est + ' - ' + @pro

			delete #est where cliente = @cli and codest=@est
		end
   DELETE #CLI WHERE CODIGO = @CLI
END

/*
columnas de tabla PROTOS
PROTO,[VERSION], CLIENTE, ESTILO, ESPECIFICACION, DESCRIPCION, TELA, TEMPORADA, MOTIVO, TOLMIN,TOLMAX,UNIMEDIDAS,MINCOR, MINCOS, MINACA, MINADI,
EFICOR, EFICOS, EFIACA, EFIADI, ADICIONAL, CREACION, USUARIOCREA, COTIZACION, MONEDA, USUARIO, FECHA, ESTADO, OBS
select * from [proto-tallas]
SELECT * FROM PROTOS
select * from [proto-detalles]
SELECT * FROM ESTILOS
select * from avios order by 1 
*/

drop table #cli
drop table #est
DROP TABLE #PRO
