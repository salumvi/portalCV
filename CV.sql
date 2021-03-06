/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2012
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [Dev_PortalCandidato]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 30/07/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Surname] [nvarchar](150) NULL,
	[RegionsIds] [nvarchar](150) NOT NULL,
	[Telephone] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PathCV] [nvarchar](1000) NOT NULL,
	[User] [varchar](100) NOT NULL,
	[TimeIn] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[TimeDelete] [datetime] NULL,
	[IsRead] [bit] NOT NULL,
	[TimeRead] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[desc_elementosTrabajo]    Script Date: 30/07/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desc_elementosTrabajo](
	[id] [int] NOT NULL,
	[Tipo] [nvarchar](max) NULL,
	[TablaElementos] [nvarchar](max) NULL,
 CONSTRAINT [PK_desc_elementosTrabajo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 98) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfiles]    Script Date: 30/07/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Orden] [int] NULL,
	[Grupo] [nvarchar](max) NULL,
	[LabelPerfil] [nvarchar](max) NULL,
	[DescPerfil] [nvarchar](max) NULL,
	[urlPerfil] [nvarchar](max) NULL,
 CONSTRAINT [PK_perfiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 30/07/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] NOT NULL,
	[SedeName] [nvarchar](100) NOT NULL,
	[RegionName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[User] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[perfiles] ON 

INSERT [dbo].[perfiles] ([id], [Orden], [Grupo], [LabelPerfil], [DescPerfil], [urlPerfil]) VALUES (1, 1, N'perfil', N'Administrador', N'RRHH: Administrador', N'principal.aspx')
INSERT [dbo].[perfiles] ([id], [Orden], [Grupo], [LabelPerfil], [DescPerfil], [urlPerfil]) VALUES (2, 1, N'perfil', N'Técnico selección', N'RRHH: Tecnico seleccion', N'principal.aspx')
SET IDENTITY_INSERT [dbo].[perfiles] OFF
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (5, N'Zaragoza', N'Zaragoza', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (6, N'Barcelona', N'Barcelona', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (8, N'Salamanca', N'Salamanca', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (11, N'Bucaramanga', N'Bucaramanga', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (13, N'Lima', N'Lima', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (31, N'ALCALA 265', N'ALCALA 265', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (32, N'ALCALA 265_AI', N'ALCALA 265_AI', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (35, N'Lisboa', N'Lisboa', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (37, N'010 AYTO BARCELONA', N'010 AYTO BARCELONA', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (38, N'CADIZ Ctro Empresarial', N'CADIZ Ctro Empresarial', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
INSERT [dbo].[Region] ([Id], [SedeName], [RegionName], [Email], [User]) VALUES (39, N'Lisboa José Malhoa', N'Lisboa José Malhoa', N'juanpedro.vicente@arvato.com;juanpedrosalamanca@gmail.com', N'jpvicente')
ALTER TABLE [dbo].[Candidate] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Candidate] ADD  CONSTRAINT [DF_Candidate_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[perfiles] ADD  CONSTRAINT [DF_perfiles_Orden]  DEFAULT ((0)) FOR [Orden]
GO
/****** Object:  StoredProcedure [dbo].[obtener_detalle_elementos_trabajo]    Script Date: 30/07/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Modificado: Ramon Campos
--Fecha Mod.: 26/03/2014
-- Introducimos el nuevo elemento de test que sera el de modificar test
--insert into dbo.desc_elementosTrabajo (id,Tipo,TablaElementos) values (6,'Modificar/Crear Test','elementosTests')
-- Renombramos el tipo 2 para indicar que este tipo esta para realizar test
--update dbo.desc_elementosTrabajo SET Tipo = 'Realizar Test' where dbo.desc_elementosTrabajo.id = 2

CREATE PROCEDURE [dbo].[obtener_detalle_elementos_trabajo]
@tipo as int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET FMTONLY OFF;
	SET NOCOUNT ON;


Select '' id, '' nombreElemento, '' Complemento

END
GO
/****** Object:  StoredProcedure [dbo].[obtener_index_elementos_trabajo]    Script Date: 30/07/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[obtener_index_elementos_trabajo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET FMTONLY OFF;
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT id,Tipo,TablaElementos from dbo.desc_elementosTrabajo order by id
END
GO
/****** Object:  StoredProcedure [dbo].[obtener_perfiles]    Script Date: 30/07/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[obtener_perfiles]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	 SET FMTONLY OFF;
	SET NOCOUNT ON;

select id, Orden, Grupo, LabelPerfil, DescPerfil, urlPerfil from dbo.perfiles order by id desc
END
GO
