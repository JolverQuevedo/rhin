USE [MODELADOR]
GO
/****** Objeto:  StoredProcedure [dbo].[AL_TL_S_BUSCA_TELTEN_PARA_CC]    Fecha de la secuencia de comandos: 09/26/2011 12:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AL_TL_S_BUSCA_TELTEN_PARA_CC]
(
	@PARTIDA VARCHAR(10)
)
AS
SET NOCOUNT ON
SELECT CCODPROV AS RUC, CNOMPROV AS PROVEEDOR, CCODIGO AS CODTEL, CDESCRI AS DESTEL, CNUMORD AS OC, LOTE AS PARTIDA, SUM(BULTOS) AS ROLLOS, 
      SUM(KGNETO) AS KILOS
FROM RS_ALMOVD
WHERE ESTADO='V' AND CTD='PE' AND CALMA='00MT' and dfecdoc > (getdate()-90)
	and CCODIGO NOT IN('AYIA00006','AYIA00008','AYIA00007') AND 
	VBCC='S' AND
--	LOTE LIKE '%'+@PARTIDA+'%'
-- MODIFICADO por Mabel Molina porque estaban encontrándose 
-- demasiadas partidas de diferentes proveedores duplicadas
-- el codigo de partida debe estar completo
-- 26-9-11
	LOTE = @PARTIDA
GROUP BY CCODIGO, CDESCRI, CNUMORD,
            LOTE, CCODPROV, CNOMPROV
HAVING SUM(BULTOS) > 0 AND SUM(KGNETO) > 0
order by CCODPROV,lote

