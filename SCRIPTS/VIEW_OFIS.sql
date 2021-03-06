USE [MODELADOR]
GO
/****** Object:  View [dbo].[VIEW_OFIS]    Script Date: 12/15/2012 14:43:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[VIEW_OFIS]
AS
SELECT OFI, CLI, NOM, COTI, CANT, CAST(FOT AS IMAGE) AS FOT, CON, CODEST, EDO, ESTCLI, DESEST, CGEN, DGEN, TPRE, DPRE
FROM  (SELECT DISTINCT 
                              OO.CODIGO AS OFI, PP.CLIENTE AS CLI, CL.NOMBRE AS NOM, PP.COTIZACION AS COTI, OO.CANTIDAD AS CANT, CAST(ES.FOTO AS VARBINARY) 
                              AS FOT, ES.CONTENIDO AS CON, PR.ESTILO AS CODEST, PP.ESTADO AS EDO, ES.ESTCLI, ES.DESCRIPCION AS DESEST, 
                              dbo.GENEROS.GENERO AS CGEN, dbo.GENEROS.DESCRIPCION AS DGEN, dbo.TIPPRENDA.TIPO AS TPRE, 
                              dbo.TIPPRENDA.DESCRIPCION AS DPRE
               FROM   dbo.POS AS PP INNER JOIN
                              dbo.COTIZACION AS CC ON PP.COTIZACION = CC.COTIZACION INNER JOIN
                              dbo.PROTOS AS PR ON CC.PROTO = PR.PROTO AND CC.VERSION = PR.VERSION INNER JOIN
                              dbo.OFIS AS OO ON PP.OFI = OO.CODIGO INNER JOIN
                              dbo.CLIENTE AS CL ON OO.CLIENTE = CL.CODIGO INNER JOIN
                              dbo.ESTILOS AS ES ON OO.CLIENTE = ES.CLIENTE AND OO.CODEST = ES.CODEST INNER JOIN
                              dbo.GENEROS ON ES.GENERO = dbo.GENEROS.GENERO INNER JOIN
                              dbo.TIPPRENDA ON ES.TIPOPRENDA = dbo.TIPPRENDA.TIPO) AS CCC
