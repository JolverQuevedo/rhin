set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go


-- =======================================================================
-- Author:		MABEL MOLINA
-- Create date: 11-JUN-2011
-- Description:	Devuelve los campos de HILOS DE TELAS PARA LA COTIZACION
-- =======================================================================

ALTER procedure  [dbo].[FICHACOTI_hilo]  
@TEL CHAR(6),
@ID CHAR(3),
@COTI CHAR(10),
@orD char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


SELECT HIL1 AS HIL ,H1.DESCRIPCION, POR1 AS POR, TT.DESCRIPCION AS TIT, 1 as id,
CTO = ISNULL((select costo from COTIHILADO C1 WHERE  C1.TELA = @TEL  AND ORDEN = @ORD 
AND ID = @ID AND COTIZACION = @COTI) , case	when H1.moneda = 'MN' then H1.costo * (select top 1 xmeimp2 
				from rsconcar..CTCAMB order by xfeccam desc) else H1.costo * 1 end )
FROM 
TELAS AS T1
INNER JOIN HILADO AS H1 ON H1.HILO=T1.HIL1
INNER JOIN TITULO AS TT ON TT.CODIGO = H1.TITULO
WHERE T1.TELA = @TEL


UNION
SELECT HIL2 AS HIL ,H1.DESCRIPCION, POR2 AS POR, TT.DESCRIPCION AS TIT,  2  as id,
CTO = ISNULL((select costo from COTIHILADO C1 WHERE  C1.TELA = @TEL  AND ORDEN = @ORD+1
AND ID = @ID AND COTIZACION = @COTI) , case	when H1.moneda = 'MN' then H1.costo * (select top 1 xmeimp2 
				from rsconcar..CTCAMB order by xfeccam desc) else H1.costo * 1 end )
FROM TELAS AS T1
INNER JOIN HILADO AS H1 ON H1.HILO=T1.HIL2
INNER JOIN TITULO AS TT ON TT.CODIGO = H1.TITULO
WHERE TELA = @TEL


UNION
SELECT HIL3 AS HIL ,H1.DESCRIPCION, POR3 AS POR, TT.DESCRIPCION AS TIT, 3  as id,
CTO = ISNULL((select costo from COTIHILADO C1 WHERE  C1.TELA = @TEL  AND ORDEN = @ORD +2
AND ID = @ID AND COTIZACION = @COTI) , case	when H1.moneda = 'MN' then H1.costo * (select top 1 xmeimp2 
				from rsconcar..CTCAMB order by xfeccam desc) else H1.costo * 1 end )
FROM TELAS AS T1
INNER JOIN HILADO AS H1 ON H1.HILO=T1.HIL3
INNER JOIN TITULO AS TT ON TT.CODIGO = H1.TITULO
WHERE TELA = @TEL


UNION
SELECT HIL4 AS HIL ,H1.DESCRIPCION, POR4 AS POR, TT.DESCRIPCION AS TIT, 4  as id,
CTO = ISNULL((select costo from COTIHILADO C1 WHERE  C1.TELA = @TEL  AND ORDEN = @ORD+3
AND ID = @ID AND COTIZACION = @COTI) , case	when H1.moneda = 'MN' then H1.costo * (select top 1 xmeimp2 
				from rsconcar..CTCAMB order by xfeccam desc) else H1.costo * 1 end )
FROM TELAS AS T1
INNER JOIN HILADO AS H1 ON H1.HILO=T1.HIL4
INNER JOIN TITULO AS TT ON TT.CODIGO = H1.TITULO
WHERE TELA = @TEL

UNION
SELECT HIL5 AS HIL ,H1.DESCRIPCION, POR5 AS POR, TT.DESCRIPCION AS TIT, 5 as id,
CTO = ISNULL((select costo from COTIHILADO C1 WHERE  C1.TELA = @TEL  AND ORDEN = @ORD+4
AND ID = @ID AND COTIZACION = @COTI) , case	when H1.moneda = 'MN' then H1.costo * (select top 1 xmeimp2 
				from rsconcar..CTCAMB order by xfeccam desc) else H1.costo * 1 end )
FROM TELAS AS T1
INNER JOIN HILADO AS H1 ON H1.HILO=T1.HIL5
INNER JOIN TITULO AS TT ON TT.CODIGO = H1.TITULO
WHERE TELA = @TEL

UNION
SELECT HIL6 AS HIL ,H1.DESCRIPCION, POR6 AS POR, TT.DESCRIPCION AS TIT, 6 as id,
CTO = ISNULL((select costo from COTIHILADO C1 WHERE  C1.TELA = @TEL  AND ORDEN = @ORD+5
AND ID = @ID AND COTIZACION = @COTI) , case	when H1.moneda = 'MN' then H1.costo * (select top 1 xmeimp2 
				from rsconcar..CTCAMB order by xfeccam desc) else H1.costo * 1 end )
FROM TELAS AS T1
INNER JOIN HILADO AS H1 ON H1.HILO=T1.HIL6
INNER JOIN TITULO AS TT ON TT.CODIGO = H1.TITULO
WHERE TELA = @TEL
order by id
END

