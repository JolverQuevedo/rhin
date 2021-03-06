USE [MODELADOR]
GO
/****** Object:  StoredProcedure [dbo].[SP_TNT_RECTILINEOS_OFI]    Script Date: 13/04/2017 09:33:25 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MABEL MOLINA
-- Create date: 12-04-2017
-- Description:	ACUMULA LOS RECTILINEOS A PEDIR
-- =============================================
ALTER PROCEDURE [dbo].[SP_TNT_RECTILINEOS_OFI] 
	-- Add the parameters for the stored procedure here
	@CLI CHAR(5),
	@art char(16),
	@ped char(8)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
DECLARE  @id int, @tal varchar(5), @TEL VARCHAR(25), @OFI CHAR(8),@T0 varCHAR(5),@DES VARCHAR(200),@C0 NUMERIC(12,3)
DECLARE @T1 varCHAR(5), @T2 varCHAR(5),@T3 varCHAR(5),@T4 varCHAR(5),@T5 varCHAR(5),@T6 varCHAR(5),@T7 varCHAR(5),@T8 varCHAR(5),@T9 varCHAR(5)
DECLARE @POS VARCHAR(MAX), @fil varchar(10)
DECLARE @QUERY VARCHAR(1255),@query2 varchar(2000)



CREATE TABLE [dbo].[#TMP1](
	[CLI]		CHAR(5)	,
	[OFI]		CHAR(8),
	[TELA]		char(25),
	[DESCRI]	VARCHAR(200),
	[Row#]		varchar(10))

SELECT Talla, Orden  INTO #TMP2 FROM CLIENTE_TALLA
WHERE (CodCliente = @cli) AND ESTADO = 'A'
ORDER BY Orden
--select * from #tmp2
-- BARRE LA TABLA QUE TIENE TODAS LAS TALLAS
WHILE (EXISTS(SELECT top 1 ORDEN FROM #TMP2 order by orden )) -- PRIME WHILE 
	BEGIN
		SET @ID	   = (SELECT TOP 1 ORDEN FROM  #TMP2  ORDER BY orden)
		SET @tal   = CONVERT(CHAR(5),(SELECT TOP 1 talla FROM #TMP2 WHERE orden = @id )) -- va buscando las tallas
		SET @QUERY = 'ALTER TABLE #tmp1 ADD [' + LTRIM(RTRIM(@tal)) + '] numeric(12)'
		exec(@query)	
				
		DELETE #TMP2 WHERE orden = @id 
	END -- PRIMER WHILE 
-- #tmp1 es la tabla que tiene las tallas en columnas 
-- select * from tempo
SELECT DISTINCT ET.OFI,ROW_NUMBER() OVER(ORDER BY et.ofi,tela) AS Row#,  c0=(ceiling(CAN0*1.05*canpza)) , c1=(ceiling(CAN1*1.05*canpza)), c2=(ceiling(CAN2*1.05*canpza)),
c3=(ceiling(CAN3*1.05*canpza)), c4=(ceiling(CAN4*1.05*canpza)), c5=(ceiling(CAN5*1.05*canpza)), c6=(ceiling(CAN6*1.05*canpza)), 
c7=(ceiling(CAN7*1.05*canpza)), c8=(ceiling(CAN8*1.05*canpza)), c9=(ceiling(CAN9*1.05*canpza)), tela, AR_CDESCRI , t0,t1,t2,t3,t4,t5,t6,t7,t8,t9
INTO #TMP3
FROM [PO-DETA] PD 
INNER JOIN EXPLOSION_TELA ET ON REPLACE(PD.PO,' ' ,'') = REPLACE(ET.PO,' ' , '') AND PD.UBI =ET.UBI
INNER JOIN RSFACCAR..AL0001ARTI AR ON AR_CCODIGO COLLATE SQL_Latin1_General_CP1_CI_AI= TELA
inner join view_pedido_tela_deta vp on vp.codigo = et.crudo AND vp.OFI= ET.OFI
WHERE LEFT(TELA,1) ='9' AND et.OFI = (select OFIs from TEMPO where ET.OFI = ofis)
group by TELA, AR_CDESCRI , can0, can1, can2,can3,can4, can5, can6, can7, can8, can9,canpza, t0,t1,t2,t3,t4,t5,t6,t7,t8,t9, ET.OFI
order by OFI, tela

SELECT OFI, c0,c1, c2, c3, c4, c5, c6, c7, C8, C9, T0,T1, T2, T3, T4, T5, T6, T7, T8, T9, AR_CDESCRI FROM #TMP3  
where TELA = @art and ofi = @ped
order by tela

drop table #tmp1
drop table #tmp2
drop table #tmp3	
END


