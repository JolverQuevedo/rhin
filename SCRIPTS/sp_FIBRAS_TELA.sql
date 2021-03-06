set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go


-- =============================================================
-- Author:		Mabel Molina
-- Create date: 15-JUN-2011
-- Description:	Devuelve todas las fibras que conforman la tela
-- =============================================================
ALTER PROCEDURE [dbo].[FIBRAS_TELA]
	-- Add the parameters for the stored procedure here
	@TEL CHAR(6)
AS
BEGIN

    -- Insert statements for procedure here
	select HIL1, FIBRA, POR1 from TELAS AS TT
INNER JOIN HILADO AS HH ON TT.HIL1 = HH.HILO
WHERE TELA =@TEL
union
select HIL2, FIBRA, POR2 from TELAS AS TT
INNER JOIN HILADO AS HH ON TT.HIL2 = HH.HILO
WHERE TELA =@TEL
union
select HIL3, FIBRA, POR3 from TELAS AS TT
INNER JOIN HILADO AS HH ON TT.HIL3 = HH.HILO
WHERE TELA =@TEL
union
select HIL4, FIBRA, POR4 from TELAS AS TT
INNER JOIN HILADO AS HH ON TT.HIL4 = HH.HILO
WHERE TELA =@TEL
union
select HIL5, FIBRA, POR5 from TELAS AS TT
INNER JOIN HILADO AS HH ON TT.HIL5= HH.HILO
WHERE TELA =@TEL
union
select HIL6, FIBRA, POR6 from TELAS AS TT
INNER JOIN HILADO AS HH ON TT.HIL6 = HH.HILO
WHERE TELA =@TEL



END


