USE MODELADOR

ALTER TABLE TB_CTRL
ADD AIR NUMERIC(7,2),
SEA NUMERIC(7,2),
DHL NUMERIC(7,2)

UPDATE TB_CTRL SET AIR = 110, SEA = 1920, DHL = 250

SELECT * FROM TB_CTRL

ALTER TABLE COTIZACION
DROP COLUMN MPDA

ALTER TABLE COTIZACION
DROP COLUMN MTELA

ALTER TABLE COTIZACION
ADD FACTOR1 NUMERIC(5,2), FACTOR2 NUMERIC(5,2)

ALTER TABLE COTIZACION
ADD ANCHOT NUMERIC(6,3), LARGOT NUMERIC (6,3)