USE [SistemaAdministracionDatosCargaAcademica]
GO
/****** Object:  StoredProcedure [dbo].[UpdateSede]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[UpdateSede]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[UpdatePlanEstudio]
GO
/****** Object:  StoredProcedure [dbo].[UpdateJornadaLaboral]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[UpdateJornadaLaboral]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCurso]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[UpdateCurso]
GO
/****** Object:  StoredProcedure [dbo].[GetSedes]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[GetSedes]
GO
/****** Object:  StoredProcedure [dbo].[GetPlanesEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[GetPlanesEstudio]
GO
/****** Object:  StoredProcedure [dbo].[GetJornadasLaborales]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[GetJornadasLaborales]
GO
/****** Object:  StoredProcedure [dbo].[GetCursos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[GetCursos]
GO
/****** Object:  StoredProcedure [dbo].[DeleteJornadaLaboral]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[DeleteJornadaLaboral]
GO
/****** Object:  StoredProcedure [dbo].[CreateSede]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[CreateSede]
GO
/****** Object:  StoredProcedure [dbo].[CreatePlanEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[CreatePlanEstudio]
GO
/****** Object:  StoredProcedure [dbo].[CreateJornadaLaboral]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[CreateJornadaLaboral]
GO
/****** Object:  StoredProcedure [dbo].[CreateCurso]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP PROCEDURE [dbo].[CreateCurso]
GO
ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_Usuarios_TiposUsuarios]
GO
ALTER TABLE [dbo].[Usuarios] DROP CONSTRAINT [FK_Usuarios_Escuelas]
GO
ALTER TABLE [dbo].[TrabajosFinalesGraduacion] DROP CONSTRAINT [FK_TrabajosFinalesGraduacion_Escuelas]
GO
ALTER TABLE [dbo].[TiposEventos] DROP CONSTRAINT [FK_TiposEventos_Severidad]
GO
ALTER TABLE [dbo].[Profesores] DROP CONSTRAINT [FK_Profesores_Escuelas]
GO
ALTER TABLE [dbo].[PlanesEstudio] DROP CONSTRAINT [FK_PlanesEstudio_Escuelas]
GO
ALTER TABLE [dbo].[OfertasAcademicas] DROP CONSTRAINT [FK_OfertasAcademicas_Sedes]
GO
ALTER TABLE [dbo].[OfertasAcademicas] DROP CONSTRAINT [FK_OfertasAcademicas_PlanesEstudio]
GO
ALTER TABLE [dbo].[OfertasAcademicas] DROP CONSTRAINT [FK_OfertasAcademicas_Escuelas]
GO
ALTER TABLE [dbo].[LaboresInvestigacion] DROP CONSTRAINT [FK_LaboresInvestigacion_Escuelas]
GO
ALTER TABLE [dbo].[LaboresEspeciales] DROP CONSTRAINT [FK_LaboresEspeciales_Escuelas]
GO
ALTER TABLE [dbo].[LaboresAdministrativas] DROP CONSTRAINT [FK_LaboresAdministrativas_Escuelas]
GO
ALTER TABLE [dbo].[JornadasLaborales] DROP CONSTRAINT [FK_JornadasLaborales_Escuelas]
GO
ALTER TABLE [dbo].[FranjasHorarias] DROP CONSTRAINT [FK_FranjasHorarias_PlanesEstudio]
GO
ALTER TABLE [dbo].[Eventos] DROP CONSTRAINT [FK_Eventos_TiposEventos]
GO
ALTER TABLE [dbo].[Eventos] DROP CONSTRAINT [FK_Eventos_ApplicationModifier]
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica] DROP CONSTRAINT [FK_CursosXOfertaAcademica_OfertasAcademicas]
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica] DROP CONSTRAINT [FK_CursosXOfertaAcademica_Cursos]
GO
ALTER TABLE [dbo].[Cursos] DROP CONSTRAINT [FK_Cursos_Sedes]
GO
ALTER TABLE [dbo].[Cursos] DROP CONSTRAINT [FK_Cursos_PlanesEstudio]
GO
ALTER TABLE [dbo].[ContactosXProfesor] DROP CONSTRAINT [FK_ContactosXProfesor_Profesores]
GO
ALTER TABLE [dbo].[TrabajosFinalesGraduacion] DROP CONSTRAINT [DF_TrabajosFinalesGraduacion_Activo]
GO
ALTER TABLE [dbo].[Profesores] DROP CONSTRAINT [DF_Profesores_Activo]
GO
ALTER TABLE [dbo].[LaboresInvestigacion] DROP CONSTRAINT [DF_LaboresInvestigacion_Activo]
GO
ALTER TABLE [dbo].[LaboresEspeciales] DROP CONSTRAINT [DF_LaboresEspeciales_Activo]
GO
ALTER TABLE [dbo].[LaboresAdministrativas] DROP CONSTRAINT [DF_LaboresAdministrativas_Activo]
GO
ALTER TABLE [dbo].[FranjasHorarias] DROP CONSTRAINT [DF_FranjasHorarias_Activo]
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica] DROP CONSTRAINT [DF_CursosXOfertaAcademica_Activo]
GO
ALTER TABLE [dbo].[ContactosXProfesor] DROP CONSTRAINT [DF_ContactosXProfesor_Activo]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[Usuarios]
GO
/****** Object:  Table [dbo].[TrabajosFinalesGraduacion]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[TrabajosFinalesGraduacion]
GO
/****** Object:  Table [dbo].[TiposUsuarios]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[TiposUsuarios]
GO
/****** Object:  Table [dbo].[TiposEventos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[TiposEventos]
GO
/****** Object:  Table [dbo].[Severidad]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[Severidad]
GO
/****** Object:  Table [dbo].[Sedes]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[Sedes]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[Profesores]
GO
/****** Object:  Table [dbo].[PlanesEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[PlanesEstudio]
GO
/****** Object:  Table [dbo].[OfertasAcademicas]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[OfertasAcademicas]
GO
/****** Object:  Table [dbo].[LaboresInvestigacion]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[LaboresInvestigacion]
GO
/****** Object:  Table [dbo].[LaboresEspeciales]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[LaboresEspeciales]
GO
/****** Object:  Table [dbo].[LaboresAdministrativas]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[LaboresAdministrativas]
GO
/****** Object:  Table [dbo].[JornadasLaborales]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[JornadasLaborales]
GO
/****** Object:  Table [dbo].[FranjasHorarias]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[FranjasHorarias]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[Eventos]
GO
/****** Object:  Table [dbo].[Escuelas]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[Escuelas]
GO
/****** Object:  Table [dbo].[CursosXOfertaAcademica]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[CursosXOfertaAcademica]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[Cursos]
GO
/****** Object:  Table [dbo].[ContactosXProfesor]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[ContactosXProfesor]
GO
/****** Object:  Table [dbo].[ApplicationModifier]    Script Date: 17/12/2015 03:47:21 p.m. ******/
DROP TABLE [dbo].[ApplicationModifier]
GO
/****** Object:  Table [dbo].[ApplicationModifier]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationModifier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationModifier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactosXProfesor]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactosXProfesor](
	[idProfesor] [int] NOT NULL,
	[TipoContacto] [varchar](25) NOT NULL,
	[Valor] [varchar](25) NOT NULL,
	[Activo] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cursos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPlanEstudio] [int] NOT NULL,
	[idSede] [int] NOT NULL,
	[Codigo] [varchar](25) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[NumCreditos] [tinyint] NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursosXOfertaAcademica]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursosXOfertaAcademica](
	[idCurso] [int] NOT NULL,
	[idOfertaAcademica] [int] NOT NULL,
	[CantidadGrupos] [tinyint] NOT NULL,
	[Activo] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Escuelas]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Escuelas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Escuelas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Eventos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTipoEvento] [int] NOT NULL,
	[idApplicationModifier] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Descripcion] [varchar](400) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[IP] [varchar](46) NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FranjasHorarias]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FranjasHorarias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPlanEstudio] [int] NOT NULL,
	[Dias] [varchar](25) NOT NULL,
	[HoraInicio] [time](0) NOT NULL,
	[HoraFin] [time](0) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_FranjasHorarias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JornadasLaborales]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JornadasLaborales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Porcentaje] [tinyint] NOT NULL,
	[Activo] [bit] NOT NULL CONSTRAINT [DF_JornadasLaborales_Activo]  DEFAULT ((1)),
 CONSTRAINT [PK_JornadasLaborales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LaboresAdministrativas]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LaboresAdministrativas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Descripcion] [varchar](400) NOT NULL,
	[Comentario] [varchar](400) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_LaboresAdministrativas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LaboresEspeciales]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LaboresEspeciales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Descripcion] [varchar](400) NOT NULL,
	[Comentario] [varchar](400) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_LaboresEspeciales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LaboresInvestigacion]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LaboresInvestigacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Descripcion] [varchar](400) NOT NULL,
	[Comentario] [varchar](400) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_LaboresInvestigacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OfertasAcademicas]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfertasAcademicas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[idPlanEstudio] [int] NOT NULL,
	[idSede] [int] NOT NULL,
	[Semestre] [tinyint] NOT NULL,
	[Año] [smallint] NOT NULL,
	[FechaLimite] [date] NOT NULL,
 CONSTRAINT [PK_OfertasAcademicas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlanesEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanesEstudio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Codigo] [varchar](25) NOT NULL,
	[Nombre] [varchar](400) NOT NULL,
 CONSTRAINT [PK_PlanesEstudio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CodigoPlanEstudio_Unico] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Cedula] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido1] [varchar](25) NOT NULL,
	[Apellido2] [varchar](25) NULL,
	[GradoAcademico] [varchar](50) NOT NULL,
	[UniversidadGrado] [varchar](100) NULL,
	[UniversidadPosgrado] [varchar](100) NULL,
	[TipoNombramiento] [varchar](25) NOT NULL,
	[AñoContratacion] [smallint] NOT NULL,
	[CorreoInstitucional] [varchar](50) NOT NULL,
	[AsisteConsejoEscuela] [bit] NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Cedula_Unica] UNIQUE NONCLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CorreoInstitucional_Unico] UNIQUE NONCLUSTERED 
(
	[CorreoInstitucional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sedes]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sedes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Sedes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CodigoSede_Unico] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Severidad]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Severidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Severidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposEventos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposEventos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSeveridad] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TiposEventos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposUsuarios]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposUsuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposUsuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrabajosFinalesGraduacion]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrabajosFinalesGraduacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Descripcion] [varchar](400) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TrabajosFinalesGraduacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTipoUsuario] [int] NOT NULL,
	[idEscuela] [int] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ContactosXProfesor] ADD  CONSTRAINT [DF_ContactosXProfesor_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica] ADD  CONSTRAINT [DF_CursosXOfertaAcademica_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[FranjasHorarias] ADD  CONSTRAINT [DF_FranjasHorarias_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[LaboresAdministrativas] ADD  CONSTRAINT [DF_LaboresAdministrativas_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[LaboresEspeciales] ADD  CONSTRAINT [DF_LaboresEspeciales_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[LaboresInvestigacion] ADD  CONSTRAINT [DF_LaboresInvestigacion_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Profesores] ADD  CONSTRAINT [DF_Profesores_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[TrabajosFinalesGraduacion] ADD  CONSTRAINT [DF_TrabajosFinalesGraduacion_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ContactosXProfesor]  WITH CHECK ADD  CONSTRAINT [FK_ContactosXProfesor_Profesores] FOREIGN KEY([idProfesor])
REFERENCES [dbo].[Profesores] ([id])
GO
ALTER TABLE [dbo].[ContactosXProfesor] CHECK CONSTRAINT [FK_ContactosXProfesor_Profesores]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_PlanesEstudio] FOREIGN KEY([idPlanEstudio])
REFERENCES [dbo].[PlanesEstudio] ([id])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_PlanesEstudio]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_Sedes] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sedes] ([id])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_Sedes]
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica]  WITH CHECK ADD  CONSTRAINT [FK_CursosXOfertaAcademica_Cursos] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Cursos] ([id])
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica] CHECK CONSTRAINT [FK_CursosXOfertaAcademica_Cursos]
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica]  WITH CHECK ADD  CONSTRAINT [FK_CursosXOfertaAcademica_OfertasAcademicas] FOREIGN KEY([idOfertaAcademica])
REFERENCES [dbo].[OfertasAcademicas] ([id])
GO
ALTER TABLE [dbo].[CursosXOfertaAcademica] CHECK CONSTRAINT [FK_CursosXOfertaAcademica_OfertasAcademicas]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_ApplicationModifier] FOREIGN KEY([idApplicationModifier])
REFERENCES [dbo].[ApplicationModifier] ([id])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_ApplicationModifier]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_TiposEventos] FOREIGN KEY([idTipoEvento])
REFERENCES [dbo].[TiposEventos] ([id])
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_TiposEventos]
GO
ALTER TABLE [dbo].[FranjasHorarias]  WITH CHECK ADD  CONSTRAINT [FK_FranjasHorarias_PlanesEstudio] FOREIGN KEY([idPlanEstudio])
REFERENCES [dbo].[PlanesEstudio] ([id])
GO
ALTER TABLE [dbo].[FranjasHorarias] CHECK CONSTRAINT [FK_FranjasHorarias_PlanesEstudio]
GO
ALTER TABLE [dbo].[JornadasLaborales]  WITH CHECK ADD  CONSTRAINT [FK_JornadasLaborales_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[JornadasLaborales] CHECK CONSTRAINT [FK_JornadasLaborales_Escuelas]
GO
ALTER TABLE [dbo].[LaboresAdministrativas]  WITH CHECK ADD  CONSTRAINT [FK_LaboresAdministrativas_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[LaboresAdministrativas] CHECK CONSTRAINT [FK_LaboresAdministrativas_Escuelas]
GO
ALTER TABLE [dbo].[LaboresEspeciales]  WITH CHECK ADD  CONSTRAINT [FK_LaboresEspeciales_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[LaboresEspeciales] CHECK CONSTRAINT [FK_LaboresEspeciales_Escuelas]
GO
ALTER TABLE [dbo].[LaboresInvestigacion]  WITH CHECK ADD  CONSTRAINT [FK_LaboresInvestigacion_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[LaboresInvestigacion] CHECK CONSTRAINT [FK_LaboresInvestigacion_Escuelas]
GO
ALTER TABLE [dbo].[OfertasAcademicas]  WITH CHECK ADD  CONSTRAINT [FK_OfertasAcademicas_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[OfertasAcademicas] CHECK CONSTRAINT [FK_OfertasAcademicas_Escuelas]
GO
ALTER TABLE [dbo].[OfertasAcademicas]  WITH CHECK ADD  CONSTRAINT [FK_OfertasAcademicas_PlanesEstudio] FOREIGN KEY([idPlanEstudio])
REFERENCES [dbo].[PlanesEstudio] ([id])
GO
ALTER TABLE [dbo].[OfertasAcademicas] CHECK CONSTRAINT [FK_OfertasAcademicas_PlanesEstudio]
GO
ALTER TABLE [dbo].[OfertasAcademicas]  WITH CHECK ADD  CONSTRAINT [FK_OfertasAcademicas_Sedes] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sedes] ([id])
GO
ALTER TABLE [dbo].[OfertasAcademicas] CHECK CONSTRAINT [FK_OfertasAcademicas_Sedes]
GO
ALTER TABLE [dbo].[PlanesEstudio]  WITH CHECK ADD  CONSTRAINT [FK_PlanesEstudio_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[PlanesEstudio] CHECK CONSTRAINT [FK_PlanesEstudio_Escuelas]
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD  CONSTRAINT [FK_Profesores_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[Profesores] CHECK CONSTRAINT [FK_Profesores_Escuelas]
GO
ALTER TABLE [dbo].[TiposEventos]  WITH CHECK ADD  CONSTRAINT [FK_TiposEventos_Severidad] FOREIGN KEY([idSeveridad])
REFERENCES [dbo].[Severidad] ([id])
GO
ALTER TABLE [dbo].[TiposEventos] CHECK CONSTRAINT [FK_TiposEventos_Severidad]
GO
ALTER TABLE [dbo].[TrabajosFinalesGraduacion]  WITH CHECK ADD  CONSTRAINT [FK_TrabajosFinalesGraduacion_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[TrabajosFinalesGraduacion] CHECK CONSTRAINT [FK_TrabajosFinalesGraduacion_Escuelas]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Escuelas] FOREIGN KEY([idEscuela])
REFERENCES [dbo].[Escuelas] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Escuelas]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_TiposUsuarios] FOREIGN KEY([idTipoUsuario])
REFERENCES [dbo].[TiposUsuarios] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_TiposUsuarios]
GO
/****** Object:  StoredProcedure [dbo].[CreateCurso]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CreateCurso]
(
@CodigoCurso VARCHAR(MAX),
@NombreCurso VARCHAR(MAX),
@CodigoPlan VARCHAR(MAX),
@NumCreditos TINYINT,
@CodigoSede CHAR(2),
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idPlan AS INT;
DECLARE @idSede AS INT;
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idPlan = (SELECT id FROM PlanesEstudio WHERE PlanesEstudio.Codigo = @CodigoPlan);

SET @idSede = (SELECT id FROM Sedes WHERE Sedes.Codigo = @CodigoSede);

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'nuevo registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error insertando registro');

BEGIN TRY

BEGIN TRANSACTION CrearCurso

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario crea un nuevo curso', @EmailUsuario, @IPUsuario);

INSERT INTO Cursos(Codigo, Nombre, idPlanEstudio, NumCreditos, idSede) 
VALUES (@CodigoCurso, @NombreCurso, @idPlan, @NumCreditos, @idSede);

COMMIT TRANSACTION CrearCurso

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION CrearCurso;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END 
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[CreateJornadaLaboral]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CreateJornadaLaboral]
(
@Porcentaje TINYINT,
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idEscuela AS INT;
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idEscuela = (SELECT idEscuela FROM Usuarios WHERE Usuario = @EmailUsuario);

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'nuevo registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error insertando registro');

BEGIN TRY

BEGIN TRANSACTION CrearJornadaLaboral

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario crea una nueva jornada laboral', @EmailUsuario, @IPUsuario);

INSERT INTO JornadasLaborales(Porcentaje, idEscuela) 
VALUES (@Porcentaje, @idEscuela);

COMMIT TRANSACTION CrearJornadaLaboral

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION CrearJornadaLaboral;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END 
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[CreatePlanEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CreatePlanEstudio]
(
@Codigo VARCHAR(MAX),
@Nombre VARCHAR(MAX),
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idEscuela AS INT;
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idEscuela = (SELECT idEscuela FROM Usuarios WHERE Usuario = @EmailUsuario);

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'nuevo registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error insertando registro');

BEGIN TRY

BEGIN TRANSACTION CrearPlanEstudio

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario crea un nuevo plan de estudio', @EmailUsuario, @IPUsuario);

INSERT INTO PlanesEstudio (Codigo, Nombre, idEscuela) 
VALUES (@Codigo, @Nombre, @idEscuela);

COMMIT TRANSACTION CrearPlanEstudio

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION CrearPlanEstudio;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END 
END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[CreateSede]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CreateSede]
(
@Codigo VARCHAR(MAX),
@Nombre VARCHAR(MAX),
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'nuevo registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error insertando registro');

BEGIN TRY

BEGIN TRANSACTION CrearSede

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario crea una nueva sede', @EmailUsuario, @IPUsuario);

INSERT INTO Sedes (Codigo, Nombre) 
VALUES (@Codigo, @Nombre);

COMMIT TRANSACTION CrearSede

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION CrearSede;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END 
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteJornadaLaboral]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[DeleteJornadaLaboral]
(
@id INT,
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idEscuela AS INT;
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idEscuela = (SELECT idEscuela FROM Usuarios WHERE Usuario = @EmailUsuario);

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'dar de baja un registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error dando de baja un registro');

BEGIN TRY

BEGIN TRANSACTION BajaJornadaLaboral

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario da de baja una jornada laboral', @EmailUsuario, @IPUsuario);


UPDATE JornadasLaborales
SET Activo = 0
WHERE id = @id;


COMMIT TRANSACTION BajaJornadaLaboral

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION BajaJornadaLaboral;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[GetCursos]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GetCursos]

AS
BEGIN
SELECT Cursos.id, Cursos.Codigo, Cursos.Nombre, PlanesEstudio.Codigo AS 'Plan', Cursos.NumCreditos, Sedes.Nombre AS 'Sede' FROM Cursos, PlanesEstudio, Sedes
WHERE PlanesEstudio.id = Cursos.idPlanEstudio AND Sedes.id = Cursos.idSede;
END
GO
/****** Object:  StoredProcedure [dbo].[GetJornadasLaborales]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GetJornadasLaborales]

AS
BEGIN
SELECT id, Porcentaje FROM JornadasLaborales
WHERE Activo = 1;
END

GO
/****** Object:  StoredProcedure [dbo].[GetPlanesEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GetPlanesEstudio]

AS
BEGIN
SELECT Codigo, Nombre FROM PlanesEstudio;
END

GO
/****** Object:  StoredProcedure [dbo].[GetSedes]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GetSedes]

AS
BEGIN
SELECT Codigo, Nombre FROM Sedes;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCurso]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[UpdateCurso]
(
@idCurso VARCHAR(MAX),
@CodigoCurso VARCHAR(MAX) = NULL,
@NombreCurso VARCHAR(MAX) = NULL,
@CodigoPlan VARCHAR(MAX) = NULL,
@NumCreditos TINYINT = NULL,
@CodigoSede CHAR(2) = NULL,
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idPlan AS INT;
DECLARE @idSede AS INT;
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idPlan = (SELECT id FROM PlanesEstudio WHERE PlanesEstudio.Codigo = @CodigoPlan);

SET @idSede = (SELECT id FROM Sedes WHERE Sedes.Codigo = @CodigoSede);

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'modificacion de registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error actualizando registro');

BEGIN TRY

BEGIN TRANSACTION ModificarCurso

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario modifica un curso', @EmailUsuario, @IPUsuario);

UPDATE Cursos
    SET Cursos.Codigo = ISNULL(@CodigoCurso,Cursos.Codigo),
        Cursos.Nombre = ISNULL(@NombreCurso,Cursos.Nombre),
		Cursos.idPlanEstudio = ISNULL(@idPlan,Cursos.idPlanEstudio),
        Cursos.NumCreditos = ISNULL(@NumCreditos, Cursos.NumCreditos),
		Cursos.idSede=ISNULL(@idSede, Cursos.idSede)
	WHERE Cursos.id = @idCurso;

COMMIT TRANSACTION ModificarCurso

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ModificarCurso;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateJornadaLaboral]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[UpdateJornadaLaboral]
(
@id INT,
@Porcentaje TINYINT,
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idEscuela AS INT;
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idEscuela = (SELECT idEscuela FROM Usuarios WHERE Usuario = @EmailUsuario);

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'modificacion de registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error actualizando registro');

BEGIN TRY

BEGIN TRANSACTION ModificarJornadaLaboral

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario modifica una jornada laboral', @EmailUsuario, @IPUsuario);

IF (@Porcentaje IS NOT NULL)
BEGIN

UPDATE JornadasLaborales
SET Porcentaje = @Porcentaje
WHERE id = @id;

END

COMMIT TRANSACTION ModificarJornadaLaboral

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ModificarJornadaLaboral;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePlanEstudio]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[UpdatePlanEstudio]
(
@CodigoOriginal VARCHAR(MAX),
@Codigo VARCHAR(MAX) = NULL,
@Nombre VARCHAR(MAX) = NULL,
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idEscuela AS INT;
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idEscuela = (SELECT idEscuela FROM Usuarios WHERE Usuario = @EmailUsuario);

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'modificacion de registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error actualizando registro');

BEGIN TRY

BEGIN TRANSACTION ModificarPlanEstudio

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario modifica un plan de estudio', @EmailUsuario, @IPUsuario);

IF (@Codigo IS NULL)
BEGIN

UPDATE PlanesEstudio
SET Nombre = @Nombre
WHERE Codigo = @CodigoOriginal;

END

ELSE IF (@Nombre IS NULL)
BEGIN

UPDATE PlanesEstudio
SET Codigo = @Codigo
WHERE Codigo = @CodigoOriginal;

END

ELSE
BEGIN

UPDATE PlanesEstudio
SET Codigo = @Codigo,
	Nombre = @Nombre
WHERE Codigo = @CodigoOriginal;

END

COMMIT TRANSACTION ModificarPlanEstudio

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ModificarPlanEstudio;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSede]    Script Date: 17/12/2015 03:47:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[UpdateSede]
(
@CodigoOriginal VARCHAR(MAX),
@Codigo VARCHAR(MAX) = NULL,
@Nombre VARCHAR(MAX) = NULL,
@EmailUsuario VARCHAR(MAX),
@IPUsuario VARCHAR(MAX) = NULL
)
AS
BEGIN
DECLARE @idApplicationModifier AS INT;
DECLARE @idTipoEvento AS INT;
DECLARE @idTipoError AS INT;

SET @idApplicationModifier = (SELECT id FROM ApplicationModifier WHERE Nombre = 'SitioWebInstitucion');

SET @idTipoEvento = (SELECT id FROM TiposEventos WHERE Nombre = 'modificacion de registro');

SET @idTipoError = (SELECT id FROM TiposEventos WHERE Nombre = 'error actualizando registro');

BEGIN TRY

BEGIN TRANSACTION ModificarSede

INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
VALUES (@idTipoEvento, @idApplicationModifier, GETDATE(), 'El usuario modifica una sede', @EmailUsuario, @IPUsuario);

IF (@Codigo IS NULL)
BEGIN

UPDATE Sedes
SET Nombre = @Nombre
WHERE Codigo = @CodigoOriginal;

END

ELSE IF (@Nombre IS NULL)
BEGIN

UPDATE Sedes
SET Codigo = @Codigo
WHERE Codigo = @CodigoOriginal;

END

ELSE
BEGIN

UPDATE Sedes
SET Codigo = @Codigo,
	Nombre = @Nombre
WHERE Codigo = @CodigoOriginal;

END

COMMIT TRANSACTION ModificarSede

END TRY

BEGIN CATCH 
  IF (@@TRANCOUNT > 0)
   BEGIN
      ROLLBACK TRANSACTION ModificarSede;
	  INSERT INTO Eventos (idTipoEvento, idApplicationModifier, Fecha, Descripcion, Usuario, IP)
	  VALUES (@idTipoError, @idApplicationModifier, GETDATE(), ERROR_MESSAGE() + ' Error Procedure:' + ERROR_PROCEDURE(), @EmailUsuario, @IPUsuario);
	  THROW;
   END
END CATCH

END
GO
