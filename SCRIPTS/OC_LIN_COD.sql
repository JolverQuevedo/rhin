USE [MODELADOR]
GO
/****** Object:  StoredProcedure [dbo].[OC_LIN_COD]    Script Date: 17/08/2017 10:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =======================================================================
-- Author:		MABEL MOLINA
-- Create date: 01-ENE-2013
-- Description:	Devuelve los campos de linea de la OC
-- ALTER Date:	
-- =======================================================================

ALTER procedure  [dbo].[OC_LIN_COD]  
@OC char(10),
@lin char(5),
@cod char(25) as

DECLARE  @n CHAR(10)

set @n= (select top 1 OC_CNUMORD From RSFACCAR..CO0001MOVd Where OC_CNUMORD=@OC and OC_CITEM= @LIN AND OC_CCODIGO= @COD)
IF @N IS NULL

	SELECT	'' AS LIN, '' AS DESCRI, '' AS COME, '' AS UNI, '' AS PAR, '' AS ARAN, 0 AS PED, 0 AS PRE,
			'' AS SOLI, '' AS CCTO, 0 AS IIGV,	0 AS IISC, 0 AS FINA, 0 AS DITE, 0 AS DADI, 
			0 AS CH1, 	0 AS CH2, 0 AS CH3, 0 AS CH4, '' AS OC_CCODREF, '' AS OC_CDESREF
			
ELSE
	
Select	SS.OC_CITEM AS LIN, AA.AR_CDESCRI AS DESCRI, SS.OC_COMENTA AS COME, OC_CUNIDAD AS UNI, 
		'' AS PAR, '' AS ARAN, ISNULL(ss.oc_ncanord,0)  as PED, ISNULL(ss.oc_npreun2,0) as PRE ,
		SS.OC_Csolici as SOLI, SS.OC_CCENCOS AS CCTO, ISNULL(SS.OC_NDSCPFI,0) AS FINA,
		ISNULL(SS.OC_CIGVPOR,0) AS CH3, ISNULL(SS.OC_CISCPOR,0) AS CH4, ISNULL(SS.OC_CITMPOR,0) AS CH1, ISNULL(SS.OC_CDSCPOR,0) AS CH2, 
		ISNULL(SS.OC_NIGVPOR,0) AS IIGV, ISNULL(SS.OC_NISCPOR,0) AS IISC, ISNULL(SS.OC_NDSCPOR,0) AS DITE, ISNULL(OC_NDSCPAD,0) AS DADI,
		OC_CCODREF, OC_CDESREF

	From RSFACCAR..CO0001MOVd ss 
	inner join RSFACCAR..AL0001ARTI AA 
	Where ss.OC_CNUMORD=@OC AND SS.OC_CITEM= @LIN AND SS.OC_CCODIGO= @COD






