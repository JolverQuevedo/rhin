USE [MODELADOR]
GO

/****** Objeto:  Table [dbo].[TALLAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TALLAS](
	[TALLAS] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TALLA0] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA1] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA2] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA3] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA4] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA5] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA6] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA7] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA8] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA9] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_TALLAS] PRIMARY KEY CLUSTERED 
(
	[TALLAS] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TIPEXPLO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPEXPLO](
	[CODIGO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_TIPEXPLO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TONOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONOS](
	[TONO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESTONO] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[HEXCOLOR] [char](7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TONOS] PRIMARY KEY CLUSTERED 
(
	[TONO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PARAMETROS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARAMETROS](
	[ADMIN] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IGV] [int] NULL,
	[CAL1] [int] NULL,
	[CAL2] [int] NULL,
	[MINORISTA] [int] NULL,
	[HITEPIMA] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLAVEINGE] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OPERCORTE] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OPERCOSTURA] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLAVETEJE] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OPERTEJE] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLAVEACABADO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COTIZA] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CODTEJIDO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VISA] [float] NULL,
	[DCTOEMP] [float] NULL,
	[UTILIDAD] [float] NULL,
	[TIPCAM] [float] NULL,
	[FAL] [float] NULL,
	[TOPEEMP] [float] NULL,
	[TOPEOBR] [float] NULL,
	[TOPEEJE] [float] NULL,
	[bordado] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[estampado] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lavado] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tenido] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BLOQUE_ACABAD] [char](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BLOQUE_ZURCID] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BLOQUE_DESMAN] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BLOQUE_DESCON] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BLOQUE_SEGUN] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RUC] [char](11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SALIDAS] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[utilidad2] [float] NULL
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[GENEROS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENEROS](
	[GENERO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK__GENEROS__531856C7] PRIMARY KEY CLUSTERED 
(
	[GENERO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MATERIA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIA](
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIPO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[FECHA] [smalldatetime] NULL CONSTRAINT [DF_MATERIA-PRIMA_FECHA]  DEFAULT (getdate()),
	[ESTADO] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AI NULL CONSTRAINT [DF_MATERIA-PRIMA_ESTADO]  DEFAULT (N'A'),
 CONSTRAINT [PK_MATERIA-PRIMA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[LINEAPRENDAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINEAPRENDAS](
	[CODLINEA] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_LINEAPRENDAS] PRIMARY KEY CLUSTERED 
(
	[CODLINEA] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[DESTINATARIOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESTINATARIOS](
	[CODIGO] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESTINO] [varchar](152) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AREA] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DESTINATARIOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[COTIZACION]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COTIZACION](
	[COTIZACION] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[INDIRECTOS] [float] NOT NULL,
	[ENERGIA] [float] NOT NULL,
	[ADMINISTRACION] [float] NOT NULL,
	[VENTAS] [float] NOT NULL,
	[FINANCIEROS] [float] NOT NULL,
	[MINUTO] [float] NOT NULL,
	[COMISION] [float] NULL,
	[PRECIO] [float] NOT NULL,
	[INICIAL] [float] NOT NULL,
	[TARGET] [float] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[CNETO] [float] NULL,
	[SERVICIOS] [float] NULL,
	[TIPOCAMBIO] [float] NULL,
	[CTODIRECTO] [float] NULL,
	[MINUTOCORTE] [float] NULL,
	[MINUTOACABADOS] [float] NULL,
	[UTILIDAD]  AS ((0)),
 CONSTRAINT [PK_COTIZACION] PRIMARY KEY CLUSTERED 
(
	[COTIZACION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TITULO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TITULO](
	[CODIGO] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[DESCRIPCION] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[FECHA] [smalldatetime] NOT NULL CONSTRAINT [DF_TITULO_FECHA]  DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL CONSTRAINT [DF_TITULO_ESTADO]  DEFAULT ('A'),
 CONSTRAINT [PK_TITULO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[FAMAVIOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAMAVIOS](
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORMER] [float] NULL,
	[CORREL] [float] NULL,
	[TIPOAVIO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA] [smalldatetime] NULL,
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CUENTA] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_FAMAVIOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[ESPECIFICACIONES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESPECIFICACIONES](
	[ESPECIFICACION] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MINCORTE] [float] NULL,
	[MINCOSTURA] [float] NULL,
	[MINACABADO] [float] NULL,
	[MINVARIOS] [float] NULL,
	[EFICORTE] [int] NULL,
	[EFICOSTURA] [int] NULL,
	[EFIACABADO] [int] NULL,
	[EFIVARIOS] [int] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[VARIOS] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PORA] [float] NULL,
	[PORB] [float] NULL,
	[PORC] [float] NULL,
	[COBERTURA] [float] NULL,
	[STAT] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ESPECIFICACIONES] PRIMARY KEY CLUSTERED 
(
	[ESPECIFICACION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MATRIZ_PROTO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATRIZ_PROTO](
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_MATRIZ_PROTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MERCADOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MERCADOS](
	[CODIGO] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK__MERCADOS__6EC0713C] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MENU]    Fecha de la secuencia de comandos: 02/15/2011 13:06:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[MENU] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PERFIL] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESMENU] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROGRAMA] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FOTO] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[MENU] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MERMAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MERMAS](
	[SERVICIOS] [float] NULL,
	[TELAS] [float] NULL,
	[AVIOS] [float] NULL,
	[HILO] [float] NULL,
	[TEJIDO] [float] NULL,
	[TENIDO] [float] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA] [smalldatetime] NULL,
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CORTE] [float] NULL,
	[ACABADO] [float] NULL,
	[COSTURA] [float] NULL,
	[EMBALAJE] [float] NULL,
	[ENCONADO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PAISES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAISES](
	[CODIGO] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_PAISES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MEDIDAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDIDAS](
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_MEDIDAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  StoredProcedure [dbo].[FICHAPROTO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[FICHAPROTO]  @pro char(10), @ver char(3) as


DECLARE  @n int

set @n= (select count(*) from protos where proto = @PRO and version =@VER)

if @pro = '' OR @pro is null OR @n<=0

	select  	'' as proto, '' as version, 	'' as tip, 	'' as des, '' as codcli, '' as codtem, '' as codgen, 	'' as codtel, '' as codtal,   '' as codtip,
	'' as fot, 	'' as tel, 	'' as cli, 	'' as tem, '' as gen, '' as tal,'' as rat, '' as est,'' as codrat, '' as codest, '' as cotizacion,'' as solicita, '' as ddp

else

	select p.proto,p.version,p.cotizacion,p.tipprenda as codtip,  p.descripcion as des,p.cliente as codcli,p.temporada as codtem, 
	p.genero as codgen,p.tela as codtel,p.tallas as codtal,  p.proporcion as codrat,p.estilo as codest,p.foto as fot, 
	te.descripcion as tel,e.nombre as cli, t.descripcion as tem, g.descripcion as gen, tl.tallas as tal,pr.proporcion as rat, 
	es.descripcion as est,tp.descripcion as tip,po.solicita,po.ddp
	from protos p
	inner join telas te on te.tela = p.tela
	inner join empresas e on e.cliente = p.cliente
	inner join temporadas t on t.codigo = p.temporada  
	inner join generos g on g.genero = p.genero 
	inner join tipprenda tp on tp.tipo = p.tipprenda
	inner join estilos es on es.estilo = p.estilo and es.cliente = p.cliente
	inner join [proto-obs]po on po.proto=p.proto and po.version=p.version
	left outer join tallas tl on tl.tallas = p.tallas 
	left outer join proporciones pr	on pr.proporcion = p.proporcion 
	where p.proto = @PRO and p.version =@VER

GO
/****** Objeto:  Table [dbo].[TIPOCLI]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOCLI](
	[TIPO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_TIPOCLI] PRIMARY KEY CLUSTERED 
(
	[TIPO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TIPPRENDA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPPRENDA](
	[TIPO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK__TIPPRENDA__4F47C5E3] PRIMARY KEY CLUSTERED 
(
	[TIPO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PERFILES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERFILES](
	[ID] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PERFIL] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PERFILES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TIPOSERVICIO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOSERVICIO](
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK__TIPOSERVICIO__793DFFAF] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PO-OBS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO-OBS](
	[PO] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATO] [varchar](8000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_PO-OBS] PRIMARY KEY CLUSTERED 
(
	[PO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[RECTILINEOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECTILINEOS](
	[CODIGO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TELA] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIDAD] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOLERANCIA] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR0] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR1] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR2] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR3] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR4] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR5] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR6] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR7] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR8] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LAR9] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC0] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC1] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC2] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC3] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC4] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC5] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC6] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC7] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC8] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ANC9] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLA] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FACTOR] [int] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[PESO] [float] NOT NULL,
 CONSTRAINT [PK_RECTILINEOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TIPREND]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPREND](
	[CODIGO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_TIPREND] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TIPTEL]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPTEL](
	[CODIGO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK__TIPTEL__13F1F5EB] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TIPAVI]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPAVI](
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK__TIPAVI__4B7734FF] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TENIDO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TENIDO](
	[TENIDO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESTENIDO] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[MERMA] [float] NULL,
	[COSTOKG] [float] NULL,
 CONSTRAINT [PK_TENIDO] PRIMARY KEY CLUSTERED 
(
	[TENIDO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TELA-OBS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELA-OBS](
	[TELA] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[OBSERVACION] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TELA-OBS] PRIMARY KEY NONCLUSTERED 
(
	[TELA] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  StoredProcedure [dbo].[SP_TABLE_DEFINITION]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TABLE_DEFINITION]
	@TBL [varchar](100)
WITH EXECUTE AS CALLER
AS
SELECT a.[name] as 'Table',  b.[name] as 'Column', 
 c.[name] as 'Datatype',  b.[length] as 'Length' , 
CASE   WHEN b.[cdefault] > 0 THEN d.[text]   ELSE NULL  END as 'Default',  
CASE   WHEN b.[isnullable] = 0 THEN 'No'   ELSE 'Yes'  END as 'Nullable'

FROM  sysobjects  a
INNER JOIN syscolumns b ON  a.[id] = b.[id]
INNER JOIN systypes c ON  b.[xtype] = c.[xtype] 
and  b.[xusertype] = c.[xusertype]
LEFT JOIN syscomments d ON  b.[cdefault] = d.[id]
WHERE 
---a.[xtype] = CASE WHEN @TIP IS NULL THEN 'U' ELSE @TIP END
-- 'u' for user tables, 'v' for views.
---and 
a.[name]=@tbl AND  a.[name] <> 'dtproperties'
ORDER BY a.[name],b.[colorder]



GO
/****** Objeto:  Table [dbo].[UNIDADES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIDADES](
	[UNIDAD] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_UNIDADES] PRIMARY KEY CLUSTERED 
(
	[UNIDAD] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[GRUPOPRENDA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRUPOPRENDA](
	[CODIGO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[DESCRIPCION] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[estado] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NULL DEFAULT ('A'),
	[fecha] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TIPMAQ]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPMAQ](
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA] [smalldatetime] NULL DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL DEFAULT ('A'),
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[STATS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATS](
	[CODIGO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[DESCRIPCION] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[FECHA] [smalldatetime] NOT NULL DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL DEFAULT ('A'),
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MARCATEJ]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARCATEJ](
	[CODIGO] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA] [smalldatetime] NULL DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL DEFAULT ('A'),
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MODMAQ]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODMAQ](
	[CODIGO] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA] [smalldatetime] NULL DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL DEFAULT ('A'),
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[FAMTELAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAMTELAS](
	[FAMTELA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CORREL] [decimal](18, 0) NULL,
	[COSTO] [float] NULL,
	[fecha] [smalldatetime] NULL DEFAULT (getdate()),
	[estado] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NULL DEFAULT ('A'),
	[usuario] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
 CONSTRAINT [PK_FAMTELAS] PRIMARY KEY CLUSTERED 
(
	[FAMTELA] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[MONEDAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONEDAS](
	[CODIGO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_MONEDAS] PRIMARY KEY NONCLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PROPORCIONES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROPORCIONES](
	[PROPORCION] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROP0] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP1] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP2] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP3] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP4] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP5] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP6] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP7] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP8] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROP9] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_PROPORCIONES] PRIMARY KEY CLUSTERED 
(
	[PROPORCION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PROTO-DETALLES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROTO-DETALLES](
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TIPODETALLE] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID] [int] NOT NULL,
	[CODIGO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADICIONAL] [varchar](700) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONSUMO] [float] NULL,
	[MERMA] [float] NULL,
	[PESO] [float] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[COSTO] [float] NULL,
	[TIPO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RENDIMIENTO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UBI] [int] NULL,
	[RUTA] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PROTO-DETALLES] PRIMARY KEY CLUSTERED 
(
	[PROTO] ASC,
	[VERSION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[USUARIOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[USUARIO] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CLAVE] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NOMBRES] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[USUARIO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[CONDICIONES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONDICIONES](
	[CODIGO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[DESCRIPCION] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[VALOR] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[FECHA] [smalldatetime] NOT NULL CONSTRAINT [DF_CONDICIONES_FECHA]  DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL CONSTRAINT [DF_CONDICIONES_ESTADO]  DEFAULT ('A'),
 CONSTRAINT [PK_CONDICIONES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[EMPRESAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESAS](
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RUC] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NOMBRE] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DIRECCION] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CIUDAD] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZONA] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAIS] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIPO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FAX] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TELEFONO] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ESTADO]  AS ('A'),
	[CELULAR] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GRUPO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LISTA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VENDEDOR] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SIGLA] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_EMPRESAS] PRIMARY KEY CLUSTERED 
(
	[CLIENTE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PRENDAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRENDAS](
	[CODIGO] [char](13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESCRIPCION] [char](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MINUTAJE] [float] NULL,
	[UNIDAD] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GENERO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TIPPRENDA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FOB] [float] NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[MONEDA] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TALLA] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FOTO] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GRUPO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LINEA] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PRENDAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[USR-OPC]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USR-OPC](
	[USUARIO] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MENU] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SUBMENU] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PERFIL] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_USR-OPC] PRIMARY KEY CLUSTERED 
(
	[USUARIO] ASC,
	[MENU] ASC,
	[SUBMENU] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[SERVICIOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICIOS](
	[CODIGO] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TIPO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COSTO] [float] NOT NULL CONSTRAINT [DF__SERVICIOS__COSTO__7EF6D905]  DEFAULT ((0)),
	[MONEDA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UNIDAD] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[MERMA] [float] NOT NULL CONSTRAINT [DF__SERVICIOS__MERMA__03BB8E22]  DEFAULT ((0)),
 CONSTRAINT [PK__SERVICIOS__7D0E9093] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[POS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS](
	[PO] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESTINO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMBARQUE] [smalldatetime] NULL,
	[TIPOEMB] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REFERENCIA] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OP] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CANTIDAD] [int] NULL,
	[NUMCOL] [int] NULL,
	[TALLA] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREACION] [smalldatetime] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[CLAVE] [char](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OFISIS] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FOB] [float] NULL,
	[CARTACOLOR] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_POS] PRIMARY KEY CLUSTERED 
(
	[PO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TELAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELAS](
	[TELA] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TIPOTELA] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FAMILIA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PESOCRU] [float] NOT NULL,
	[PESOACA] [float] NOT NULL,
	[RENDTUB] [float] NULL,
	[RENDABI] [float] NULL,
	[ANCHCRU] [float] NULL,
	[ANCHTUB] [float] NULL,
	[ANCHABI] [float] NULL,
	[CURZAS] [int] NULL,
	[COLUMNAS] [int] NULL,
	[LM1] [float] NULL,
	[LM2] [float] NULL,
	[LM3] [float] NULL,
	[TOLMIN] [float] NULL,
	[TOLMAX] [float] NULL,
	[HIL1] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HIL2] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HIL3] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HIL4] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[HIL5] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[HIL6] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[POR1] [float] NOT NULL,
	[POR2] [float] NULL,
	[POR3] [float] NULL,
	[POR4] [float] NULL,
	[POR5] [float] NULL,
	[POR6] [float] NULL,
	[ENCABI1] [float] NULL,
	[ENCABI2] [float] NULL,
	[ENCABI3] [float] NULL,
	[ENCLAR1] [float] NULL,
	[ENCLAR2] [float] NULL,
	[ENCLAR3] [float] NULL,
	[REVIRADO] [float] NULL,
	[MONEDA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DENDLAV] [float] NULL,
	[COSTO] [float] NULL,
	[UNIDAD] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MAQUINA] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PESOLAV] [float] NULL,
	[TOLMINL] [float] NULL,
	[TOLMAXL] [float] NULL,
	[ANCHTUBLAV] [float] NULL,
	[ANCHABILAV] [float] NULL,
	[RENTTLAV] [float] NULL,
	[RENTALAV] [float] NULL,
	[CURZALAV] [int] NULL,
	[COLLAV] [int] NULL,
	[ENCLLAV1] [float] NULL,
	[ENCLLAV2] [float] NULL,
	[ENCLLAV3] [float] NULL,
	[ENCALAV1] [float] NULL,
	[ENCALAV2] [float] NULL,
	[ENCALAV3] [float] NULL,
	[REVLAV] [float] NULL,
	[DDLAV] [float] NULL,
	[TITULO] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[STAT] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[FECINI] [smalldatetime] NOT NULL CONSTRAINT [DF_TELAS_FECINI]  DEFAULT (getdate()),
	[REALSOFT] [char](25) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA] [smalldatetime] NOT NULL CONSTRAINT [DF__TELAS__FECHA__01D345B0]  DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__TELAS__ESTADO__02C769E9]  DEFAULT ('A'),
 CONSTRAINT [PK__TELAS__251C81ED] PRIMARY KEY CLUSTERED 
(
	[TELA] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[AVIOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AVIOS](
	[CODIGO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIDAD] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MONEDA] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COSTO] [float] NULL,
	[FAMAVI] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[TIPEXPLO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STAT] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIPAVI] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_AVIOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[COLORES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COLORES](
	[CODIGO] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TENIDO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TONO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK__COLORES__0E391C95] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Objeto:  Index [COL_CLI]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
CREATE NONCLUSTERED INDEX [COL_CLI] ON [dbo].[COLORES] 
(
	[CLIENTE] ASC,
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Objeto:  Table [dbo].[EMPRESA_TALLA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESA_TALLA](
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TALLA] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_EMPRESA_TALLA] PRIMARY KEY CLUSTERED 
(
	[CLIENTE] ASC,
	[TALLA] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PROTOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROTOS](
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ESPECIFICACION] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIPPRENDA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESCRIPCION] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TEMPORADA] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GENERO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TELA] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TALLAS] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROPORCION] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ESTILO] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MOTIVO] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIDAD] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FOTO] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREACION] [smalldatetime] NULL,
	[USUARIOCREA] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[COTIZACION] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONSUMO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIEMPOS] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIMED] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PROTOS] PRIMARY KEY CLUSTERED 
(
	[PROTO] ASC,
	[VERSION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[HILADO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HILADO](
	[HILO] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](120) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UNIDAD] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MONEDA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COSTO] [float] NOT NULL CONSTRAINT [DF__HILADO__COSTO__69FBBC1F]  DEFAULT ((0)),
	[FIBRA] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TITULO] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[FILAMENTOS] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AI NULL CONSTRAINT [DF_HILADO_FILAMENTOS]  DEFAULT ('000'),
	[ACABADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NULL CONSTRAINT [DF_HILADO_ACABADO]  DEFAULT ((0)),
	[ORIGEN] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[REALSOFT] [char](25) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA] [smalldatetime] NULL CONSTRAINT [DF_HILADO_FECHA]  DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AI NULL CONSTRAINT [DF_HILADO_ESTADO]  DEFAULT ('A'),
 CONSTRAINT [PK__HILADO__671F4F74] PRIMARY KEY CLUSTERED 
(
	[HILO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[SUBMENU]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBMENU](
	[MENU] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SUBMENU] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROGRAMA] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PARAMETROS] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_SUBMENU] PRIMARY KEY CLUSTERED 
(
	[MENU] ASC,
	[SUBMENU] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PROTO-MEDIDA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROTO-MEDIDA](
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEC] [int] NOT NULL,
	[MEDIDA] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VAL0] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL1] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL2] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL3] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL4] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL5] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL6] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL7] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL8] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VAL9] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOLMIN] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOLMAX] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_PROTO-MEDIDA] PRIMARY KEY CLUSTERED 
(
	[PROTO] ASC,
	[VERSION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TEMPORADAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPORADAS](
	[CODIGO] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_TEMPORADAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[CLIENTE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[DIRECCIONES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIRECCIONES](
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CODIGO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESTINATARIO] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CALLE] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZIPCODE] [char](70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAIS] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[CIUDAD] [char](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DIRECCIONES] PRIMARY KEY CLUSTERED 
(
	[CLIENTE] ASC,
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[EMPRESA-ADICIONALES]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESA-ADICIONALES](
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TIPODET] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATO] [char](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATO2] [char](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[nextel] [char](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OFISIS] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_EMPRESA-ADICIONALES] PRIMARY KEY CLUSTERED 
(
	[CLIENTE] ASC,
	[TIPODET] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[ESTILOS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTILOS](
	[ESTILO] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CLIENTE] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
	[GENERO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TIPOPRENDA] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ESTILOS] PRIMARY KEY CLUSTERED 
(
	[ESTILO] ASC,
	[CLIENTE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PO-DETA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO-DETA](
	[PO] [char](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COLOR] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UBI] [int] NULL,
	[CANT0] [int] NULL,
	[CANT1] [int] NULL,
	[CANT2] [int] NULL,
	[CANT3] [int] NULL,
	[CANT4] [int] NULL,
	[CANT5] [int] NULL,
	[CANT6] [int] NULL,
	[CANT7] [int] NULL,
	[CANT8] [int] NULL,
	[CANT9] [int] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_PO-DETA] PRIMARY KEY CLUSTERED 
(
	[PO] ASC,
	[COLOR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PRENDADETA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRENDADETA](
	[PRENDA] [char](13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TALLA] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COLOR] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CALIDAD] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MINIMO] [decimal](18, 0) NULL,
	[MAXIMO] [decimal](18, 0) NULL,
	[UNIDADES] [decimal](18, 0) NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_PRENDADETA] PRIMARY KEY CLUSTERED 
(
	[PRENDA] ASC,
	[TALLA] ASC,
	[COLOR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TELACOLOR]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELACOLOR](
	[TELA] [char](6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COLOR] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COMBINACION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CALIDAD] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[STOCK] [float] NULL,
	[COSTO] [float] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_TELACOLOR] PRIMARY KEY CLUSTERED 
(
	[TELA] ASC,
	[COLOR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[HILOCOL]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HILOCOL](
	[HILO] [char](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COLOR] [char](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CALIDAD] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USUARIO] [varchar](8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_HILOCOL] PRIMARY KEY CLUSTERED 
(
	[HILO] ASC,
	[COLOR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[TEJEDORAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEJEDORAS](
	[CODIGO] [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPCION] [char](50) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[TIPO] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MARCA] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MODELO] [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GALGA] [int] NULL,
	[AGUJAS] [int] NULL,
	[DIAMETRO] [int] NULL,
	[SISTEMAS] [int] NULL,
	[ALIMENTA] [int] NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA] [smalldatetime] NULL CONSTRAINT [DF__TEJEDORAS__FECHA__72910220]  DEFAULT (getdate()),
	[ESTADO] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__TEJEDORAS__ESTAD__73852659]  DEFAULT ('A'),
 CONSTRAINT [PK__TEJEDORAS__6EC0713C] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PROTO-OBS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROTO-OBS](
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DDP] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ING] [varchar](6000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SOLICITA] [varchar](6000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USUARIO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FECHA]  AS (getdate()),
	[ESTADO]  AS ('A'),
 CONSTRAINT [PK_PROTO-OBS] PRIMARY KEY CLUSTERED 
(
	[PROTO] ASC,
	[VERSION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Objeto:  Table [dbo].[PROTO-TENIDO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROTO-TENIDO](
	[PROTO] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [char](3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TENIDO] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROPORCION] [float] NULL,
	[COSTO] [float] NULL,
 CONSTRAINT [PK_PROTO-TENIDO] PRIMARY KEY CLUSTERED 
(
	[PROTO] ASC,
	[VERSION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Objeto:  View [dbo].[VIEW_TELAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_TELAS]
AS
SELECT     T1.TELA, T1.DESCRIPCION, T1.TIPOTELA AS TIPTEL, TIPT.DESCRIPCION AS DESTIP, T1.FAMILIA AS CODFAM, FM.DESCRIPCION AS DESFAM, 
                      TEJ.DIAMETRO AS DIAM, TEJ.GALGA AS GG, T1.PESOCRU AS PC, T1.PESOACA AS PA, T1.ANCHCRU AS AC, T1.RENDTUB AS RT, T1.RENDABI AS RA, 
                      T1.ANCHTUB AS AT, T1.ANCHABI AS AA, T1.HIL1 AS H1, H1.DESCRIPCION AS D1, T1.POR1 AS P1, T1.HIL2 AS H2, H2.DESCRIPCION AS D2, T1.POR2 AS P2, 
                      T1.HIL3 AS H3, H3.DESCRIPCION AS D3, T1.POR3 AS P3, T1.HIL4 AS H4, H4.DESCRIPCION AS D4, T1.POR4 AS P4, T1.HIL5 AS H5, H5.DESCRIPCION AS D5, 
                      T1.POR5 AS P5, T1.HIL6 AS H6, T1.POR6 AS P6, T1.ENCABI1 AS EA1, T1.ENCABI2 AS EA2, T1.ENCABI3 AS EA3, T1.ENCLAR1 AS EL1, T1.ENCLAR2 AS EL2, 
                      T1.ENCLAR3 AS EL3, T1.REVIRADO AS REV, T1.DENDLAV AS DDL, T1.MAQUINA AS CODMAQ, TEJ.DESCRIPCION AS DESMAQ, TIT.DESCRIPCION AS DESTIT, 
                      TIPT.DESCRIPCION AS DESTIPTEL, H6.DESCRIPCION AS D6, TEJ.AGUJAS AS AGU, TEJ.SISTEMAS AS SIST, TEJ.ALIMENTA AS ALIM, TEJ.TIPO AS CODTMAQ, 
                      TMAQ.DESCRIPCION AS DESTMAQ, TEJ.MARCA AS CODMAR, MTEJ.DESCRIPCION AS DESMAR, TEJ.MODELO AS CODMOD, MODM.DESCRIPCION AS DESMOD, 
                      T1.CURZAS AS CUR, T1.COLUMNAS AS COL, T1.LM1, T1.LM2, T1.LM3, T1.TOLMIN AS TMIN, T1.TOLMAX AS TMAX, T1.USUARIO, T1.FECHA, T1.ESTADO, 
                      T1.TITULO AS CODTIT, T1.MONEDA AS MON, TBL2.TG_CDESCRI AS DESMON, T1.COSTO AS CTO, T1.UNIDAD AS UNI, TBL3.TG_CDESCRI AS DESUNI, 
                      H1.TITULO AS T1, H2.TITULO AS T2, H3.TITULO AS T3, H4.TITULO AS T4, H5.TITULO AS T5, H6.TITULO AS T6, T1.FECINI AS FINI, T1.STAT, T1.PESOLAV AS PAL, 
                      T1.TOLMINL AS TMINL, T1.TOLMAXL AS TMAXL, T1.ANCHTUBLAV AS ATL, T1.ANCHABILAV AS AAL, T1.RENTTLAV AS RTTL, T1.RENTALAV AS RTAL, 
                      T1.CURZALAV AS CURLAV, T1.COLLAV, T1.ENCLLAV1 AS ELL1, T1.ENCLLAV2 AS ELL2, T1.ENCLLAV3 AS ELL3, T1.ENCALAV1 AS EAL1, T1.ENCALAV2 AS EAL2, 
                      T1.ENCALAV3 AS EAL3, T1.REVLAV AS REVL, T1.DDLAV AS DDLL, T1.REALSOFT AS REALCOD, ST.DESCRIPCION AS STDES
FROM         RSFACCAR.dbo.AL0001TABL AS TBL2 INNER JOIN
                      dbo.TITULO AS TIT INNER JOIN
                      dbo.TELAS AS T1 INNER JOIN
                      dbo.STATS AS ST ON LEFT(ST.CODIGO, 1) = T1.STAT INNER JOIN
                      dbo.HILADO AS H1 ON T1.HIL1 COLLATE DATABASE_DEFAULT = H1.HILO COLLATE DATABASE_DEFAULT INNER JOIN
                      dbo.TIPTEL AS TIPT ON T1.TIPOTELA COLLATE DATABASE_DEFAULT = TIPT.CODIGO COLLATE DATABASE_DEFAULT INNER JOIN
                      dbo.FAMTELAS AS FM ON T1.FAMILIA COLLATE DATABASE_DEFAULT = FM.FAMTELA COLLATE DATABASE_DEFAULT INNER JOIN
                      dbo.TIPMAQ AS TMAQ INNER JOIN
                      dbo.TEJEDORAS AS TEJ ON TMAQ.CODIGO COLLATE DATABASE_DEFAULT = TEJ.TIPO COLLATE DATABASE_DEFAULT INNER JOIN
                      dbo.MARCATEJ AS MTEJ ON TEJ.MARCA COLLATE DATABASE_DEFAULT = MTEJ.CODIGO COLLATE DATABASE_DEFAULT INNER JOIN
                      dbo.MODMAQ AS MODM ON TEJ.MODELO = MODM.CODIGO ON T1.MAQUINA COLLATE DATABASE_DEFAULT = TEJ.CODIGO COLLATE DATABASE_DEFAULT ON 
                      TIT.CODIGO COLLATE DATABASE_DEFAULT = T1.TITULO COLLATE DATABASE_DEFAULT ON 
                      LTRIM(RTRIM(TBL2.TG_CCOD + TBL2.TG_CCLAVE)) COLLATE DATABASE_DEFAULT = LTRIM(RTRIM('03' + T1.MONEDA)) COLLATE DATABASE_DEFAULT INNER JOIN
                      RSFACCAR.dbo.AL0001TABL AS TBL3 ON LTRIM(RTRIM('05' + T1.UNIDAD)) COLLATE DATABASE_DEFAULT = RTRIM(LTRIM(TBL3.TG_CCOD + TBL3.TG_CCLAVE)) COLLATE
                       DATABASE_DEFAULT LEFT OUTER JOIN
                      dbo.HILADO AS H6 ON T1.HIL6 COLLATE DATABASE_DEFAULT = H6.HILO COLLATE DATABASE_DEFAULT LEFT OUTER JOIN
                      dbo.HILADO AS H5 ON T1.HIL5 COLLATE DATABASE_DEFAULT = H5.HILO COLLATE DATABASE_DEFAULT LEFT OUTER JOIN
                      dbo.HILADO AS H4 ON T1.HIL4 COLLATE DATABASE_DEFAULT = H4.HILO COLLATE DATABASE_DEFAULT LEFT OUTER JOIN
                      dbo.HILADO AS H3 ON T1.HIL3 COLLATE DATABASE_DEFAULT = H3.HILO COLLATE DATABASE_DEFAULT LEFT OUTER JOIN
                      dbo.HILADO AS H2 ON T1.HIL2 COLLATE DATABASE_DEFAULT = H2.HILO COLLATE DATABASE_DEFAULT

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[13] 4[37] 2[49] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -480
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MODM"
            Begin Extent = 
               Top = 419
               Left = 929
               Bottom = 497
               Right = 1127
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TIT"
            Begin Extent = 
               Top = 465
               Left = 14
               Bottom = 584
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MTEJ"
            Begin Extent = 
               Top = 342
               Left = 929
               Bottom = 415
               Right = 1127
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TMAQ"
            Begin Extent = 
               Top = 263
               Left = 928
               Bottom = 338
               Right = 1126
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TBL2"
            Begin Extent = 
               Top = 752
               Left = 42
               Bottom = 871
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL3"
            Begin Extent = 
               Top = 626
               Left = 40
               Bottom = 745
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "H1"
            Begin Extent = 
               Top = 5
               Left = 25
               Bottom = 78
               Right = 223
            End
            DisplayFlags = 280
            TopCo' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_TELAS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'lumn = 0
         End
         Begin Table = "H6"
            Begin Extent = 
               Top = 388
               Left = 16
               Bottom = 462
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "H5"
            Begin Extent = 
               Top = 311
               Left = 23
               Bottom = 396
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "H4"
            Begin Extent = 
               Top = 236
               Left = 19
               Bottom = 310
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "H3"
            Begin Extent = 
               Top = 159
               Left = 21
               Bottom = 232
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "H2"
            Begin Extent = 
               Top = 79
               Left = 23
               Bottom = 154
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TEJ"
            Begin Extent = 
               Top = 226
               Left = 635
               Bottom = 500
               Right = 833
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIPT"
            Begin Extent = 
               Top = 90
               Left = 902
               Bottom = 164
               Right = 1100
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FM"
            Begin Extent = 
               Top = 176
               Left = 922
               Bottom = 248
               Right = 1120
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T1"
            Begin Extent = 
               Top = 0
               Left = 401
               Bottom = 784
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ST"
            Begin Extent = 
               Top = 545
               Left = 751
               Bottom = 664
               Right = 949
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 89
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Widt' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_TELAS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'h = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1020
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_TELAS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_TELAS'

GO
/****** Objeto:  View [dbo].[VIEW_HILADO]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_HILADO]
AS
SELECT     dbo.HILADO.HILO, dbo.HILADO.DESCRIPCION, TBL3.TG_CDESCRI AS UNIDAD, dbo.HILADO.MONEDA AS CODMON, TBL2.TG_CDESCRI AS MONEDA, 
                      CONVERT(MONEY, dbo.HILADO.COSTO, 1) AS COSTO, dbo.HILADO.REALSOFT AS REAL_COD, TBL4.AR_CDESCRI AS REAL_DES, dbo.HILADO.USUARIO, 
                      dbo.HILADO.FECHA, dbo.HILADO.ESTADO AS EDO, dbo.HILADO.TITULO, dbo.HILADO.ORIGEN AS COD_ORI, dbo.HILADO.ACABADO AS COD_ACA, 
                      dbo.HILADO.FIBRA AS CODMAT, dbo.HILADO.UNIDAD AS CODUNI, dbo.MATERIA.DESCRIPCION AS MATERIA, dbo.HILADO.FILAMENTOS, 
                      CASE WHEN dbo.HILADO.ORIGEN = '1' THEN 'IMPORTADO' ELSE 'LOCAL' END AS ORIGEN, 
                      CASE WHEN dbo.HILADO.ACABADO = '1' THEN 'COLOR' ELSE 'CRUDO' END AS ACABADO
FROM         dbo.HILADO INNER JOIN
                      dbo.MATERIA ON dbo.HILADO.FIBRA = dbo.MATERIA.CODIGO INNER JOIN
                      RSFACCAR.dbo.AL0001TABL AS TBL2 ON 
                      TBL2.TG_CCOD + TBL2.TG_CCLAVE COLLATE DATABASE_DEFAULT = '03' + dbo.HILADO.MONEDA COLLATE DATABASE_DEFAULT INNER JOIN
                      RSFACCAR.dbo.AL0001TABL AS TBL3 ON 
                      TBL3.TG_CCOD + TBL3.TG_CCLAVE COLLATE DATABASE_DEFAULT = '05' + dbo.HILADO.UNIDAD COLLATE DATABASE_DEFAULT LEFT OUTER JOIN
                      RSFACCAR.dbo.AL0001ARTI AS TBL4 ON TBL4.AR_CCODIGO COLLATE DATABASE_DEFAULT = dbo.HILADO.REALSOFT COLLATE DATABASE_DEFAULT

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[7] 2[61] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "HILADO"
            Begin Extent = 
               Top = 0
               Left = 340
               Bottom = 309
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MATERIA"
            Begin Extent = 
               Top = 32
               Left = 646
               Bottom = 188
               Right = 844
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL2"
            Begin Extent = 
               Top = 100
               Left = 36
               Bottom = 219
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL3"
            Begin Extent = 
               Top = 299
               Left = 56
               Bottom = 418
               Right = 254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TBL4"
            Begin Extent = 
               Top = 192
               Left = 576
               Bottom = 311
               Right = 774
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 23
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 900
         Width = 1500
         Width = 930
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
   ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_HILADO'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_HILADO'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_HILADO'

GO
/****** Objeto:  StoredProcedure [dbo].[MODELODETA]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MODELODETA]  
@COD CHAR(13)
AS
SELECT 
	PP.CODIGO, 
	PP.DESCRIPCION, 
	PP.TALLA AS CODTAL,
	PD.TALLA ,
	PD.COLOR, 
    CC.DESCRIPCION AS DESCOL, 
	UNIDADES =SUM(CASE WHEN PP.UNIDAD = 'DD' THEN PD.UNIDADES/12 ELSE PD.UNIDADES END),	
	PP.CLIENTE,
	PD.USUARIO, 
    	MIN(PD.FECHA) AS FECHA, 
	PD.ESTADO, PP.UNIDAD
FROM 	PRENDADETA 	PD 
	FULL    OUTER JOIN 	COLORES 	CC 	ON  PD.COLOR 	= CC.CODIGO 
	FULL OUTER   JOIN 	PRENDAS 	PP 	ON 	PD.PRENDA 	= PP.CODIGO
WHERE PP.CODIGO = @COD AND PP.ESTADO = 'A'  AND PD.CALIDAD='0' 
      AND PD.ESTADO = 'A'
GROUP BY PP.CODIGO, PP.DESCRIPCION, PP.TALLA,
	PD.COLOR, CC.DESCRIPCION, PP.CLIENTE,PD.ESTADO,
    PP.UNIDAD, PD.USUARIO, PD.ESTADO , PD.TALLA

ORDER BY CC.DESCRIPCION

GO
/****** Objeto:  View [dbo].[VIEW_TEJEDORAS]    Fecha de la secuencia de comandos: 02/15/2011 13:06:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_TEJEDORAS]
AS
SELECT     TOP (100) PERCENT dbo.TEJEDORAS.CODIGO, dbo.TEJEDORAS.DESCRIPCION AS DESTEJ, dbo.TEJEDORAS.TIPO, dbo.TIPMAQ.DESCRIPCION AS DESTIP, 
                      dbo.TEJEDORAS.MARCA, dbo.MARCATEJ.DESCRIPCION AS DESMAR, dbo.TEJEDORAS.MODELO, dbo.MODMAQ.DESCRIPCION AS DESMOD, dbo.TEJEDORAS.GALGA, 
                      dbo.TEJEDORAS.AGUJAS, dbo.TEJEDORAS.DIAMETRO, dbo.TEJEDORAS.SISTEMAS, dbo.TEJEDORAS.ALIMENTA, dbo.TEJEDORAS.USUARIO, dbo.TEJEDORAS.FECHA, 
                      dbo.TEJEDORAS.ESTADO AS EDO
FROM         dbo.TIPMAQ INNER JOIN
                      dbo.TEJEDORAS ON dbo.TIPMAQ.CODIGO = dbo.TEJEDORAS.TIPO INNER JOIN
                      dbo.MARCATEJ ON dbo.TEJEDORAS.MARCA = dbo.MARCATEJ.CODIGO INNER JOIN
                      dbo.MODMAQ ON dbo.TEJEDORAS.MODELO = dbo.MODMAQ.CODIGO
WHERE     (dbo.TEJEDORAS.ESTADO = 'A')
ORDER BY dbo.TEJEDORAS.CODIGO

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[17] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TIPMAQ"
            Begin Extent = 
               Top = 24
               Left = 144
               Bottom = 166
               Right = 342
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MARCATEJ"
            Begin Extent = 
               Top = 45
               Left = 798
               Bottom = 242
               Right = 996
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MODMAQ"
            Begin Extent = 
               Top = 177
               Left = 159
               Bottom = 341
               Right = 357
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TEJEDORAS"
            Begin Extent = 
               Top = 24
               Left = 465
               Bottom = 307
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 1785
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      En' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_TEJEDORAS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_TEJEDORAS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'VIEW_TEJEDORAS'

GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
USE [MODELADOR]
GO
ALTER TABLE [dbo].[EMPRESAS]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESAS_MERCADOS] FOREIGN KEY([ZONA])
REFERENCES [dbo].[MERCADOS] ([CODIGO])
GO
ALTER TABLE [dbo].[EMPRESAS]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESAS_PAISES] FOREIGN KEY([PAIS])
REFERENCES [dbo].[PAISES] ([CODIGO])
GO
ALTER TABLE [dbo].[EMPRESAS]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESAS_TIPOCLI] FOREIGN KEY([TIPO])
REFERENCES [dbo].[TIPOCLI] ([TIPO])
GO
ALTER TABLE [dbo].[PRENDAS]  WITH CHECK ADD  CONSTRAINT [FK_PRENDAS_LINEAPRENDAS] FOREIGN KEY([LINEA])
REFERENCES [dbo].[LINEAPRENDAS] ([CODLINEA])
GO
ALTER TABLE [dbo].[PRENDAS]  WITH CHECK ADD  CONSTRAINT [FK_PRENDAS_TIPPRENDA] FOREIGN KEY([TIPPRENDA])
REFERENCES [dbo].[TIPPRENDA] ([TIPO])
GO
ALTER TABLE [dbo].[USR-OPC]  WITH CHECK ADD  CONSTRAINT [FK_USR-OPC_PERFILES] FOREIGN KEY([PERFIL])
REFERENCES [dbo].[PERFILES] ([ID])
GO
ALTER TABLE [dbo].[USR-OPC]  WITH CHECK ADD  CONSTRAINT [FK_USR-OPC_SUBMENU] FOREIGN KEY([MENU], [SUBMENU])
REFERENCES [dbo].[SUBMENU] ([MENU], [SUBMENU])
GO
ALTER TABLE [dbo].[USR-OPC]  WITH CHECK ADD  CONSTRAINT [FK_USR-OPC_USUARIOS] FOREIGN KEY([USUARIO])
REFERENCES [dbo].[USUARIOS] ([USUARIO])
GO
ALTER TABLE [dbo].[SERVICIOS]  WITH CHECK ADD  CONSTRAINT [FK__SERVICIOS__MONED__7FEAFD3E] FOREIGN KEY([MONEDA])
REFERENCES [dbo].[MONEDAS] ([CODIGO])
GO
ALTER TABLE [dbo].[SERVICIOS]  WITH CHECK ADD  CONSTRAINT [FK__SERVICIOS__TIPO__7E02B4CC] FOREIGN KEY([TIPO])
REFERENCES [dbo].[TIPOSERVICIO] ([CODIGO])
GO
ALTER TABLE [dbo].[SERVICIOS]  WITH CHECK ADD  CONSTRAINT [FK__SERVICIOS__UNIDA__00DF2177] FOREIGN KEY([UNIDAD])
REFERENCES [dbo].[UNIDADES] ([UNIDAD])
GO
ALTER TABLE [dbo].[POS]  WITH CHECK ADD  CONSTRAINT [FK_POS_PO-OBS] FOREIGN KEY([PO])
REFERENCES [dbo].[PO-OBS] ([PO])
GO
ALTER TABLE [dbo].[TELAS]  WITH CHECK ADD  CONSTRAINT [FK__TELAS__FAMILIA__2704CA5F] FOREIGN KEY([FAMILIA])
REFERENCES [dbo].[FAMTELAS] ([FAMTELA])
GO
ALTER TABLE [dbo].[TELAS]  WITH CHECK ADD  CONSTRAINT [FK__TELAS__HIL1__29E1370A] FOREIGN KEY([HIL1])
REFERENCES [dbo].[HILADO] ([HILO])
GO
ALTER TABLE [dbo].[TELAS]  WITH CHECK ADD  CONSTRAINT [FK__TELAS__MAQUINA__00DF2177] FOREIGN KEY([MAQUINA])
REFERENCES [dbo].[TEJEDORAS] ([CODIGO])
GO
ALTER TABLE [dbo].[TELAS]  WITH CHECK ADD  CONSTRAINT [FK__TELAS__TIPOTELA__2610A626] FOREIGN KEY([TIPOTELA])
REFERENCES [dbo].[TIPTEL] ([CODIGO])
GO
ALTER TABLE [dbo].[AVIOS]  WITH CHECK ADD  CONSTRAINT [FK_AVIOS_FAMAVIOS] FOREIGN KEY([FAMAVI])
REFERENCES [dbo].[FAMAVIOS] ([CODIGO])
GO
ALTER TABLE [dbo].[AVIOS]  WITH CHECK ADD  CONSTRAINT [FK_AVIOS_TIPAVI] FOREIGN KEY([TIPAVI])
REFERENCES [dbo].[TIPAVI] ([CODIGO])
GO
ALTER TABLE [dbo].[AVIOS]  WITH CHECK ADD  CONSTRAINT [FK_AVIOS_TIPEXPLO] FOREIGN KEY([TIPEXPLO])
REFERENCES [dbo].[TIPEXPLO] ([CODIGO])
GO
ALTER TABLE [dbo].[COLORES]  WITH CHECK ADD  CONSTRAINT [FK__COLORES__CLIENTE__0F2D40CE] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[EMPRESAS] ([CLIENTE])
GO
ALTER TABLE [dbo].[COLORES]  WITH CHECK ADD  CONSTRAINT [FK_COLORES_TENIDO] FOREIGN KEY([TENIDO])
REFERENCES [dbo].[TENIDO] ([TENIDO])
GO
ALTER TABLE [dbo].[COLORES]  WITH CHECK ADD  CONSTRAINT [FK_COLORES_TONOS] FOREIGN KEY([TONO])
REFERENCES [dbo].[TONOS] ([TONO])
GO
ALTER TABLE [dbo].[EMPRESA_TALLA]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESA_TALLA_EMPRESAS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[EMPRESAS] ([CLIENTE])
GO
ALTER TABLE [dbo].[EMPRESA_TALLA]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESA_TALLA_TALLAS] FOREIGN KEY([TALLA])
REFERENCES [dbo].[TALLAS] ([TALLAS])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_COTIZACION] FOREIGN KEY([COTIZACION])
REFERENCES [dbo].[COTIZACION] ([COTIZACION])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_EMPRESAS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[EMPRESAS] ([CLIENTE])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_ESPECIFICACIONES] FOREIGN KEY([ESPECIFICACION])
REFERENCES [dbo].[ESPECIFICACIONES] ([ESPECIFICACION])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_ESTILOS1] FOREIGN KEY([ESTILO], [CLIENTE])
REFERENCES [dbo].[ESTILOS] ([ESTILO], [CLIENTE])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_GENEROS] FOREIGN KEY([GENERO])
REFERENCES [dbo].[GENEROS] ([GENERO])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_PROPORCIONES] FOREIGN KEY([PROPORCION])
REFERENCES [dbo].[PROPORCIONES] ([PROPORCION])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_PROTO-DETALLES] FOREIGN KEY([PROTO], [VERSION])
REFERENCES [dbo].[PROTO-DETALLES] ([PROTO], [VERSION])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_TALLAS] FOREIGN KEY([TALLAS])
REFERENCES [dbo].[TALLAS] ([TALLAS])
GO
ALTER TABLE [dbo].[PROTOS]  WITH CHECK ADD  CONSTRAINT [FK_PROTOS_TEMPORADAS] FOREIGN KEY([TEMPORADA], [CLIENTE])
REFERENCES [dbo].[TEMPORADAS] ([CODIGO], [CLIENTE])
GO
ALTER TABLE [dbo].[HILADO]  WITH CHECK ADD  CONSTRAINT [FK_HILADO_MATERIA-PRIMA] FOREIGN KEY([FIBRA])
REFERENCES [dbo].[MATERIA] ([CODIGO])
GO
ALTER TABLE [dbo].[HILADO]  WITH CHECK ADD  CONSTRAINT [FK_HILADO_TITULO] FOREIGN KEY([TITULO])
REFERENCES [dbo].[TITULO] ([CODIGO])
GO
ALTER TABLE [dbo].[SUBMENU]  WITH CHECK ADD  CONSTRAINT [FK_SUBMENU_MENU] FOREIGN KEY([MENU])
REFERENCES [dbo].[MENU] ([MENU])
GO
ALTER TABLE [dbo].[PROTO-MEDIDA]  WITH CHECK ADD  CONSTRAINT [FK_PROTO-MEDIDA_MEDIDAS] FOREIGN KEY([MEDIDA])
REFERENCES [dbo].[MEDIDAS] ([CODIGO])
GO
ALTER TABLE [dbo].[PROTO-MEDIDA]  WITH CHECK ADD  CONSTRAINT [FK_PROTO-MEDIDA_PROTO-DETALLES] FOREIGN KEY([PROTO], [VERSION])
REFERENCES [dbo].[PROTO-DETALLES] ([PROTO], [VERSION])
GO
ALTER TABLE [dbo].[TEMPORADAS]  WITH CHECK ADD  CONSTRAINT [FK_TEMPORADAS_EMPRESAS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[EMPRESAS] ([CLIENTE])
GO
ALTER TABLE [dbo].[DIRECCIONES]  WITH CHECK ADD  CONSTRAINT [FK_DIRECCIONES_EMPRESAS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[EMPRESAS] ([CLIENTE])
GO
ALTER TABLE [dbo].[EMPRESA-ADICIONALES]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESA-ADICIONALES_EMPRESAS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[EMPRESAS] ([CLIENTE])
GO
ALTER TABLE [dbo].[ESTILOS]  WITH CHECK ADD  CONSTRAINT [FK_ESTILOS_EMPRESAS] FOREIGN KEY([CLIENTE])
REFERENCES [dbo].[EMPRESAS] ([CLIENTE])
GO
ALTER TABLE [dbo].[PO-DETA]  WITH CHECK ADD  CONSTRAINT [FK_PO-DETA_COLORES] FOREIGN KEY([COLOR])
REFERENCES [dbo].[COLORES] ([CODIGO])
GO
ALTER TABLE [dbo].[PO-DETA]  WITH CHECK ADD  CONSTRAINT [FK_PO-DETA_POS] FOREIGN KEY([PO])
REFERENCES [dbo].[POS] ([PO])
GO
ALTER TABLE [dbo].[PRENDADETA]  WITH CHECK ADD  CONSTRAINT [FK_PRENDADETA_PRENDAS] FOREIGN KEY([PRENDA])
REFERENCES [dbo].[PRENDAS] ([CODIGO])
GO
ALTER TABLE [dbo].[TELACOLOR]  WITH CHECK ADD  CONSTRAINT [FK_TELACOLOR_COLORES] FOREIGN KEY([COLOR])
REFERENCES [dbo].[COLORES] ([CODIGO])
GO
ALTER TABLE [dbo].[TELACOLOR]  WITH CHECK ADD  CONSTRAINT [FK_TELACOLOR_TELAS] FOREIGN KEY([TELA])
REFERENCES [dbo].[TELAS] ([TELA])
GO
ALTER TABLE [dbo].[HILOCOL]  WITH CHECK ADD  CONSTRAINT [FK_HILOCOL_COLORES] FOREIGN KEY([COLOR])
REFERENCES [dbo].[COLORES] ([CODIGO])
GO
ALTER TABLE [dbo].[HILOCOL]  WITH CHECK ADD  CONSTRAINT [FK_HILOCOL_HILADO] FOREIGN KEY([HILO])
REFERENCES [dbo].[HILADO] ([HILO])
GO
ALTER TABLE [dbo].[TEJEDORAS]  WITH CHECK ADD  CONSTRAINT [FK__TEJEDORAS__MARCA__70A8B9AE] FOREIGN KEY([MARCA])
REFERENCES [dbo].[MARCATEJ] ([CODIGO])
GO
ALTER TABLE [dbo].[TEJEDORAS]  WITH CHECK ADD  CONSTRAINT [FK__TEJEDORAS__MODEL__719CDDE7] FOREIGN KEY([MODELO])
REFERENCES [dbo].[MODMAQ] ([CODIGO])
GO
ALTER TABLE [dbo].[TEJEDORAS]  WITH CHECK ADD  CONSTRAINT [FK__TEJEDORAS__TIPO__6FB49575] FOREIGN KEY([TIPO])
REFERENCES [dbo].[TIPMAQ] ([CODIGO])
GO
ALTER TABLE [dbo].[PROTO-OBS]  WITH CHECK ADD  CONSTRAINT [FK_PROTO-OBS_PROTOS] FOREIGN KEY([PROTO], [VERSION])
REFERENCES [dbo].[PROTOS] ([PROTO], [VERSION])
GO
ALTER TABLE [dbo].[PROTO-TENIDO]  WITH CHECK ADD  CONSTRAINT [FK_PROTO-TENIDO_PROTOS] FOREIGN KEY([PROTO], [VERSION])
REFERENCES [dbo].[PROTOS] ([PROTO], [VERSION])
