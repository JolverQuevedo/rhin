USE [MODELADOR]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =======================================================================
-- Author:		MABEL MOLINA
-- Create date: 11-MAY-2011
-- Description:	Devuelve los campos de TELAS de la Ficha de Proto
-- =======================================================================

ALTER procedure  [dbo].[FICHAajuste_avio]  
@aju char(10), 
@ver char(3) AS

DECLARE  @n int

set @n= (select count(*) from [ajuste-detalles] where ajuste = @aju and version =@VER)


	SELECT	distinct	P1.CODIGO AS AVI,			V1.DESCRIPCION AS DES,	P1.ADICIONAL AS OBS,
			P1.UNIDAD AS UNI,	        V1.CODTIP      AS TPP,	P1.TIPO      AS EXX,
			P1.MERMA  AS MRR,			P1.PESO        AS CON,  P1.ESTADO    AS EDO,
			V1.DESTIP AS DTP,			E1.DESCRIPCION AS DEX,
			P1.TOTAL  AS Tto,			REPLACE ( ISNULL(P1.COSTO,0) , ',' , '.')   AS CTO,	P1.ID AS ORD,
CTO1 = CASE WHEN CODMON = 'MN' THEN isnull(V1.COSTO,0) * (SELECT TOP 1 XMEIMP2 FROM RSCONCAR.dbo.CTCAMB ORDER BY XFECCAM DESC) ELSE isnull(V1.COSTO,0) * 1 END ,
CTO2 = CASE WHEN MONVTA = 'MN' THEN isnull(V1.PRECIO,0) * (SELECT TOP 1 XMEIMP2 FROM RSCONCAR.dbo.CTCAMB ORDER BY XFECCAM DESC) ELSE isnull(V1.PRECIO,0) * 1 END

-- hay que ver la moneda original y tener el tipo de cambio  porque TODO se costea en DOLARES
-- hay que ver si la moneda de produccion y real soft son iguales, cual tiene precio y seleccionarlo
-- RSCONCAR.dbo.CTCAMB   *** tabla de tipos de cambio								
-- CTO  = PRECIO AL QUE SE COTIZO	-> HISTORICO
-- CT01 = PRECIO DE FASHION SOFT	-> REPOSICION
-- CTO2 = PRECIO DEL REAL SOFT		-> PROMEDIOO

	FROM	[ajuste-DETALLES]				AS P1
			INNER JOIN   TIPEXPLO			AS E1 ON P1.TIPO = E1.CODIGO
			INNER JOIN	 VIEW_AVIOS			AS V1 ON P1.CODIGO = V1.CODIGO

WHERE P1.ajuste = @aju AND P1.VERSION = @VER  AND TIPODETALLE = 'AV'
ORDER BY ID



--exec FICHAPROTO_Avio '0000000785' , '001' 
--SELECT * FROM [PROTO-DETALLES]