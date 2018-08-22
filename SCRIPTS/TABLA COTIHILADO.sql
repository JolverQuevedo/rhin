USE [MODELADOR]
GO

CREATE TABLE [COTIHILADO] (
		[COTIZACION]	CHAR(10) REFERENCES [COTIZACION](COTIZACION) NOT NULL,
		[TELA]			char(6) REFERENCES [TELAS](TELA) NOT NULL,
		[ID]			INT NOT NULL,
		[ORDEN]			INT NOT NULL,
		[COSTO]			NUMERIC(5,2),
		[USUARIO]		char(10) NOT NULL,
		[FECHA]			SMALLDATETIME DEFAULT GETDATE() NOT NULL,
		[ESTADO]		CHAR(1) DEFAULT 'A' NOT NULL
)
ON [PRIMARY]
GO
ALTER TABLE [COTIHILADO]
	ADD
	CONSTRAINT [PK_COTIILADO]
	PRIMARY KEY
	([COTIZACION], [TELA], [ID], [ORDEN])
	ON [PRIMARY]
GO