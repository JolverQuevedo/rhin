USE [MODELADOR]
GO
/****** Object:  StoredProcedure [dbo].[FICHAPROTO_tela]    Script Date: 13/02/2017 10:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =======================================================================
-- Author:		MABEL MOLINA
-- Create date: 11-MAY-2011
-- Description:	Devuelve los campos de TELAS de la Ficha de ajuste
-- =======================================================================

create procedure  [dbo].[FICHAajuste_tela]  
@AJU char(10), 
@ver char(3) AS

DECLARE  @n int

set @n= (select count(*) from [AJUSTE-detalles] where AJUSTE = @AJU and version =@VER AND TIPODETALLE = 'TE')


	SELECT		P1.CODIGO AS TEL,			V1.DESCRIPCION AS DTE,	T1.VERSION AS RUT, 
				P1.ADICIONAL AS COM,		cast(P1.CONSUMO as numeric(5,2)) AS LAR,      P1.TIPO    AS TIP,
				isnull(p1.ancho,v1.aa)  as ANC,
				V1.PA     AS PM2,			P1.MERMA AS MER,		P1.CANPZA  AS PZA, 
				P1.FACTOR AS FAC,			P1.PESO  AS CUN,  	    P1.ESTADO AS EDO,
				P1.ID,						TOT = P1.PESO * (1+(P1.MERMA /100)),
				MTS = P1.CONSUMO * (1+(P1.MERMA /100))
								
	FROM	[ajuste-DETALLES]				AS P1
			INNER JOIN	 VIEW_TELAS			AS V1 ON P1.CODIGO = V1.TELA
			INNER JOIN   TELARUTAHEAD		AS T1 ON T1.TELA = P1.CODIGO AND P1.RUTA = T1.VERSION

WHERE P1.AJUSTE = @AJU AND P1.VERSION = @VER  AND TIPODETALLE = 'TE'
ORDER BY ID
      










