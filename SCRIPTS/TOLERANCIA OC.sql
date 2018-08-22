select SK_NSKDIS - (select CAN = CASE  WHEN SUM(QTY) > 0 THEN SUM(QTY) WHEN SUM(KGS) > 0 THEN SUM(KGS) ELSE 0 END from rsv_tela  
where CODIGO = '9000190999000100')  AS DISPONIBLE, 
(SELECT  SUM(OC_NCANSAL) FROM RSFACCAR..CO0001MOVD WHERE OC_CCODIGO= '9000190999000100' AND OC_CESTADO IN( '1','4') AND OC_NCANSAL > OC_NCANORD*(SELECT CONVERT(NUMERIC(18,2),TOLERANCIA_OC)/100  from TB_CTRL)  )   AS LLEGANDO
from rsfaccar..AL0001STOC where sk_calma='00md' and sk_ccodigo= '9000190999000100'
-- ******************************************************************
--  DETALLE DE ORDENES DE COMPRA CON PENDIENTES DE ENTREGA
-- ******************************************************************

SELECT  OC_NCANSAL,  OC_NCANORD*(SELECT CONVERT(NUMERIC(18,2),TOLERANCIA_OC)/100  from TB_CTRL)  AS TOLERANCIA,OC_NCANORD, OC_CNUMORD, OC_CCODPRO,* FROM RSFACCAR..CO0001MOVD WHERE OC_CCODIGO= '9000190999000100' AND OC_CESTADO IN( '1','4') AND OC_NCANSAL > OC_NCANORD*(SELECT CONVERT(NUMERIC(18,2),TOLERANCIA_OC)/100  from TB_CTRL)
-- *******************************************************************************
--  DETALLE DE ORDENES DE COMPRA CON PENDIENTES DE ENTREGA ACUMULADO x PROVEEDOR
-- *******************************************************************************
SELECT  SUM(OC_NCANSAL) AS PENDIENTE, AA.OC_CUNIDAD, AA.OC_CCODPRO , BB.OC_CRAZSOC
FROM RSFACCAR..CO0001MOVD  AS AA
INNER JOIN RSFACCAR..CO0001MOVC AS BB ON AA.OC_CNUMORD = BB.OC_CNUMORD
WHERE OC_CCODIGO= '9000190999000100' AND OC_CESTADO IN( '1','4') AND OC_NCANSAL > OC_NCANORD*(SELECT CONVERT(NUMERIC(18,2),TOLERANCIA_OC)/100  from TB_CTRL)
GROUP BY AA.OC_CCODPRO,  BB.OC_CRAZSOC, AA.OC_CUNIDAD

 SELECT TOP 1  * FROM RSFACCAR..CO0001MOVC
 SELECT TOP 1  * FROM RSFACCAR..CO0001MOVD