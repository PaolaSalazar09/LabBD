USE [LBD_Biblioteca]
GO
ALTER TABLE [dbo].[Trabajador] DROP CONSTRAINT [MayorT]
GO
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [EdadAdolescentes]
GO
ALTER TABLE [dbo].[UsExterno] DROP CONSTRAINT [Re_usexterno_dom]
GO
ALTER TABLE [dbo].[Trabajador] DROP CONSTRAINT [Re_tra_dom]
GO
ALTER TABLE [dbo].[TipoUsuario] DROP CONSTRAINT [Re_tipus_usexterno]
GO
ALTER TABLE [dbo].[TipoUsuario] DROP CONSTRAINT [Re_tipus_alumno]
GO
ALTER TABLE [dbo].[Libro] DROP CONSTRAINT [Re_libro_genero]
GO
ALTER TABLE [dbo].[Carrera] DROP CONSTRAINT [Re_carrera_alum]
GO
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [Re_alumn_carrera]
GO
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [Re_alum_dom]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [Re_almacen_prest]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [Re_almacen_libro]
GO
ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [DF_Alumno_vFacultad]
GO
/****** Object:  Table [dbo].[UsExterno]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[UsExterno]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Trabajador]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[TipoUsuario]
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Prestamo]
GO
/****** Object:  Table [dbo].[OrdenRegreso]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[OrdenRegreso]
GO
/****** Object:  Table [dbo].[OrdenCompra]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[OrdenCompra]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Libro]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Genero]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Domicilio]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Alumno]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP TABLE [dbo].[Almacen]
GO
USE [master]
GO
/****** Object:  Database [LBD_Biblioteca]    Script Date: 11/4/2019 11:13:48 PM ******/
DROP DATABASE [LBD_Biblioteca]
GO
/****** Object:  Database [LBD_Biblioteca]    Script Date: 11/4/2019 11:13:48 PM ******/
CREATE DATABASE [LBD_Biblioteca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD_Biblioteca', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LBD_Biblioteca.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LBD_Biblioteca_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\LBD_Biblioteca_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LBD_Biblioteca] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD_Biblioteca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD_Biblioteca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LBD_Biblioteca] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LBD_Biblioteca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD_Biblioteca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD_Biblioteca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBD_Biblioteca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD_Biblioteca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LBD_Biblioteca] SET  MULTI_USER 
GO
ALTER DATABASE [LBD_Biblioteca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD_Biblioteca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD_Biblioteca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD_Biblioteca] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LBD_Biblioteca]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacen](
	[iIdAlmacen] [int] NOT NULL,
	[iIdLibro] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[vPasillo] [varchar](10) NOT NULL,
	[vEstante] [varchar](10) NOT NULL,
	[dFechadeRevision] [date] NOT NULL,
	[iIdOrdenPrestamo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdAlmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[iMatricula] [int] NOT NULL,
	[vNombre] [varchar](35) NOT NULL,
	[vApellidoPat] [varchar](35) NOT NULL,
	[vApellidoMat] [varchar](35) NOT NULL,
	[iIdCarrera] [int] NOT NULL,
	[iIdDomicilio] [int] NOT NULL,
	[dFechaNacimiento] [date] NOT NULL,
	[vNombreComp]  AS ((((([vNombre]+'')+[vApellidoPat])+'')+[vApellidoMat])+''),
	[vFacultad] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[iMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[iIdCarrera] [int] NOT NULL,
	[vNomCarrera] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Domicilio](
	[iIdDomicilio] [int] NOT NULL,
	[vCalle] [varchar](35) NOT NULL,
	[iNumero] [int] NOT NULL,
	[vColonia] [varchar](35) NOT NULL,
	[vCiudad] [varchar](35) NOT NULL,
	[vEstado] [varchar](35) NOT NULL,
	[iCodigoPostal] [int] NOT NULL,
	[vPais] [varchar](35) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdDomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[iIdGenero] [int] NOT NULL,
	[vTipo] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libro](
	[iIdLibro] [int] NOT NULL,
	[vNomLib] [varchar](50) NOT NULL,
	[vAutor] [varchar](60) NOT NULL,
	[vEditorial] [varchar](50) NOT NULL,
	[Genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdenCompra]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdenCompra](
	[iIdOrdenCompra] [int] NOT NULL,
	[vProveedor] [varchar](40) NOT NULL,
	[vEditorial] [varchar](40) NOT NULL,
	[iCantidad] [int] NOT NULL,
	[vNombreLibro] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdOrdenCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdenRegreso]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenRegreso](
	[iIdRegreso] [int] NOT NULL,
	[iIdPrestamo] [int] NOT NULL,
	[dFechaRegreso] [date] NOT NULL,
	[Regreso] [bit] NULL,
	[Cobro] [smallmoney] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdRegreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[iIdPrestamo] [int] NOT NULL,
	[iIdAlumno] [int] NOT NULL,
	[iIdTipoUsuario] [int] NOT NULL,
	[iIdAlmacen] [int] NOT NULL,
	[iIdTrabajador] [int] NOT NULL,
	[dFechaSalida] [date] NOT NULL,
	[dFechaEntrega] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[iIdTipoUsuario] [int] NOT NULL,
	[iUsuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trabajador](
	[iIdTrabajador] [int] NOT NULL,
	[vNombre] [varchar](35) NOT NULL,
	[vApellidoPat] [varchar](35) NOT NULL,
	[vApellidoMat] [varchar](35) NOT NULL,
	[iId] [int] NOT NULL,
	[dFechaingreso] [date] NOT NULL,
	[iTelefono] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsExterno]    Script Date: 11/4/2019 11:13:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsExterno](
	[iIdUsExtero] [int] NOT NULL,
	[vNombre] [varchar](35) NOT NULL,
	[vApellidoPat] [varchar](35) NOT NULL,
	[vApellidoMat] [varchar](35) NOT NULL,
	[vOcupacion] [varchar](50) NOT NULL,
	[iIdDomicilio] [int] NOT NULL,
	[vNombreComp]  AS ((((([vNombre]+'')+[vApellidoPat])+'')+[vApellidoMat])+''),
	[iTelefono] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdUsExtero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (1, N'PAOLA', N'SALAZAR', N'RODRIGUEZ', 1, 1, CAST(0xE4240B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (2, N'ANNY ABIGAIL', N'DE LA CRUZ', N'MARTINEZ', 6, 2, CAST(0x2F260B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (3, N'GERARDO', N'SALAZAR', N'MARROQUIN', 5, 3, CAST(0x69250B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (4, N'DANNA', N'RAMIREZ', N'PEREZ', 2, 4, CAST(0x2C200B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (6, N'BRAD', N'SALAZAR', N'LEAL', 6, 5, CAST(0xE4240B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (7, N'ANTONIO', N'CUETO', N'FLORES', 1, 6, CAST(0x97260B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (8, N'DIEGO ALEJANDRO', N'ALANIS', N'JEREZ', 5, 7, CAST(0x5E230B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (9, N'MARIANA', N'SANDOVAL', N'TAMEZ', 2, 8, CAST(0x5E230B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (10, N'LEONARDO', N'ALMAGUER', N'YEVERINO', 4, 9, CAST(0xBB260B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (11, N'ALEJANDRO', N'ALANIS', N'JEREZ', 5, 10, CAST(0x4F240B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (12, N'CESAR ADRIAN', N'ALMAGUER', N'CAVAZOS', 6, 11, CAST(0x76230B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (13, N'OMAR', N'LOPEZ', N'SIERRA', 1, 12, CAST(0x82220B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (14, N'YANETH', N'ALANIS', N'JEREZ', 5, 13, CAST(0x96260B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (16, N'IRAM', N'SILVA', N'VALDEZ', 4, 14, CAST(0x37270B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (17, N'EMMA', N'TAMEZ', N'JIMENEZ', 3, 15, CAST(0x98240B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (18, N'ALEXA', N'FLORES', N'DOMINGUEZ', 5, 16, CAST(0xE7210B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (19, N'MARIO', N'SAENZ', N'MARROQUIN', 2, 17, CAST(0xDD230B00 AS Date), N'FCFM      ')
INSERT [dbo].[Alumno] ([iMatricula], [vNombre], [vApellidoPat], [vApellidoMat], [iIdCarrera], [iIdDomicilio], [dFechaNacimiento], [vFacultad]) VALUES (20, N'KIMBERLY', N'NUNEZ', N'HINOJOSA', 3, 18, CAST(0xC4250B00 AS Date), N'FCFM      ')
INSERT [dbo].[Carrera] ([iIdCarrera], [vNomCarrera]) VALUES (1, N'LA')
INSERT [dbo].[Carrera] ([iIdCarrera], [vNomCarrera]) VALUES (2, N'LCC')
INSERT [dbo].[Carrera] ([iIdCarrera], [vNomCarrera]) VALUES (3, N'LF')
INSERT [dbo].[Carrera] ([iIdCarrera], [vNomCarrera]) VALUES (4, N'LM')
INSERT [dbo].[Carrera] ([iIdCarrera], [vNomCarrera]) VALUES (5, N'LMAD')
INSERT [dbo].[Carrera] ([iIdCarrera], [vNomCarrera]) VALUES (6, N'LSTI')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (1, N'FRANCISCO I. MADERO', 120, N'LAS PALOMAS', N'MONTERREY', N'NUEVO LEON', 65230, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (2, N'RODOLFO GARZA MADERO', 120, N'LA CIENEGUILLA', N'MONTERREY', N'NUEVO LEON', 67320, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (3, N'BENITO JUAREZ', 120, N'EL CERCADO', N'MONTERREY', N'NUEVO LEON', 67320, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (4, N'2 DE MAYO', 120, N'LAS HADAS', N'SANTIAGO', N'NUEVO LEON', 67320, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (5, N'GEORGE WASHINGTON', 120, N'INSURGENTES', N'MONTERREY', N'NUEVO LEON', 65222, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (6, N'FRANCISCO I. MADERO', 180, N'LAS JAROCHAS', N'MONTERREY', N'NUEVO LEON', 65240, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (7, N'CENTRO DE MONTERREY', 219, N'INDEPENDENCIA', N'MONTERREY', N'NUEVO LEON', 65125, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (8, N'GENERAL MARIANO ESCOBEDO', 121, N'REAL VALLARTA', N'MONTERREY', N'NUEVO LEON', 65230, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (9, N'MANUEL ALTAMIRANO', 80, N'NAVARRO OROZCO', N'MONTERREY', N'NUEVO LEON', 62201, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (10, N'BUENA VISTA', 24, N'LAS ALMERIA', N'ALLENDE', N'NUEVO LEON', 64102, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (11, N'MARIN', 230, N'LAS PALOMAS', N'GUADALUPE', N'NUEVO LEON', 65200, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (12, N'HEROES DEL 47', 90, N'VILLA DE SANTIAGO', N'SANTIAGO', N'NUEVO LEON', 67320, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (13, N'HASBURGO', 102, N'AMERICANA', N'MONTERREY', N'NUEVO LEON', 62334, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (14, N'IGNACIO ALLENDE', 114, N'ALDRETE', N'MONTERREY', N'NUEVO LEON', 64440, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (15, N'10 DE MAYO', 40, N'EL ALAMO', N'SANTIAGO', N'NUEVO LEON', 67326, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (16, N'EMILIANO ZAPATA', 210, N'LAS ACANTARILLAS', N'MONTERREY', N'NUEVO LEON', 65235, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (17, N'21 DE MARZO', 80, N'PIEDRAS NEGRAS', N'MONTEMORELOS', N'NUEVO LEON', 65332, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (18, N'20 DE MAYO', 15, N'LAS PALMERAS', N'MONTERREY', N'NUEVO LEON', 65222, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (19, N'BENITO JUAREZ', 125, N'CHURUBUSCO', N'SANTA CATARINA', N'NUEVO LEON', 64401, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (20, N'21 DE MARZO', 201, N'JARDINES', N'SANTIAGO', N'NUEVO LEON', 67320, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (21, N'MARIANO ESCOBEDO', 212, N'Los Rodriguez', N'Monterrey', N'Nuevo Leon', 64452, N'Mexico')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (22, N'ROBERTO MOLINA', 102, N'EL BARRIAL', N'MONTERREY', N'NUEVO LEON', 62105, N'MEXICO')
INSERT [dbo].[Domicilio] ([iIdDomicilio], [vCalle], [iNumero], [vColonia], [vCiudad], [vEstado], [iCodigoPostal], [vPais]) VALUES (23, N'RODOLFO GARZA MADERO', 103, N'LA CIENEGUILLA', N'SANTIAGO', N'NUEVO LEON', 67320, N'MEXICO')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (1, N'Arte')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (2, N'Ciencia')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (3, N'Ficcion')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (4, N'Filosofia')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (5, N'Historia')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (6, N'Novela')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (7, N'Poesia')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (8, N'Psicologia')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (9, N'Salud')
INSERT [dbo].[Genero] ([iIdGenero], [vTipo]) VALUES (10, N'Tecnica')
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (1, N'Sinsajo', N'Collins Suzanne', N'RBA/Libros', 3)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (2, N'El transito terreno', N'Plasencia Juan Luis', N'Larrosa Mas, S.L.', 4)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (3, N'Sistema Operativo', N'Bazillan Eric', N'GGG & G', 10)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (5, N'Las balas del bien', N'Levering Janet', N'GGG & G', 6)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (6, N'La mente y el sentir', N'Plasencia Juan Luis', N'Larrosa Mas, S.L.', 4)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (7, N'Ariquitectura y Arte', N'Richter, Helmut', N'Grisham Publishing', 1)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (8, N'Historia de Occidente', N'Dulac George', N'McCo y Hill', 5)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (9, N'100 anos de soledad', N'Garcia Marquez Gabriel', N'Delbolsillo', 6)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (10, N'Yo, Robot', N'Asimov Isaac', N'Edhasa', 2)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (11, N'Sentimiento Popular', N'Llorens Antonia', N'Larrosa Mas, S.L.', 7)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (12, N'Amigos o enemigos', N'Sanabria Carmelo', N'GGG & G', 6)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (13, N'Procesadores cuanticos', N'Bazilian, Eric', N'Grisham Publishing', 10)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (14, N'Canto de esparnza', N'Davolio Nnacy', N'McCoy Hill', 7)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (15, N'Ensayos postumos', N'Bertomeu Andres', N'Deloria Editores', 8)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (16, N'Los rendidos. Sobre el don de perdonar', N'Aguero Jose Carlos', N'IEP', 4)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (17, N'Memorias de Agripina', N'Grimal Pierre', N'Diario del PAIS', 5)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (18, N'Vida de Don Quijote y Sandio', N'De Unamuno Miguel', N'Espasa-Calpe', 6)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (19, N'Crepusculo', N'Meyer Stephenie', N'Little Brown and Company', 6)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (20, N'Bajo la misma estrella', N'Green John', N'Nube de Tinta', 6)
INSERT [dbo].[Libro] ([iIdLibro], [vNomLib], [vAutor], [vEditorial], [Genero]) VALUES (21, N'Geometria Analitica', N'Lehman Charles H.', N'IMUSA', 2)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (1, N'MIRANDA', N'PALOMARES', N'SALAZAR', 1, CAST(0xA01C0B00 AS Date), 8187023690)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (2, N'SOFIA', N'ROCHA', N'SALAZAR', 2, CAST(0x5A230B00 AS Date), 8188552221)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (3, N'MIGUEL ALEJANDRO', N'LEAL', N'LEAL', 3, CAST(0x361D0B00 AS Date), 8181106239)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (4, N'MIRANDA', N'MACIAS', N'PEREZ', 4, CAST(0xAF200B00 AS Date), 8187023690)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (5, N'ANDREA PAOLA', N'CABALLERO', N'SILVA', 5, CAST(0xCD160B00 AS Date), 8112562308)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (6, N'ANTONIO', N'TELLEZ', N'MEDRANO', 6, CAST(0x07230B00 AS Date), 8179571477)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (7, N'JAIRO OZIEL', N'SALAZAR', N'PENA', 7, CAST(0x98190B00 AS Date), 8184023156)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (8, N'VILMA', N'GUTIERREZ', N'GONZALEZ', 8, CAST(0x59210B00 AS Date), 8180901241)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (9, N'JORGE', N'MENDES', N'CUELLAR', 9, CAST(0x9F240B00 AS Date), 8112985631)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (10, N'JESUS MIGUEL', N'SANDOVAL', N'ZPATA', 10, CAST(0x1B1E0B00 AS Date), 1978565200)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (11, N'KIARA', N'LOPEZ', N'RODRIGUEZ', 11, CAST(0x90210B00 AS Date), 8187023690)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (12, N'JOSE ALFONSO', N'CABALLERO', N'GONZALEZ', 12, CAST(0xA01C0B00 AS Date), 8187023690)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (13, N'MARIA MAGDALENA', N'RODRIGUEZ', N'RODRIGUEZ', 13, CAST(0x62FA0A00 AS Date), 8187023690)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (14, N'NADYA', N'BOCANEGRA', N'ALANIS', 14, CAST(0xF60F0B00 AS Date), 8181365250)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (15, N'ANGEL', N'GABRIEL', N'GONZALEZ', 15, CAST(0x1B1A0B00 AS Date), 8169001238)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (16, N'ALAN FERNANDO', N'AGUILAR', N'LEAL', 16, CAST(0x81260B00 AS Date), 8184523697)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (17, N'FIDENCIO', N'JIMENEZ', N'RIVERA', 17, CAST(0x63220B00 AS Date), 128896342)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (18, N'PAMELA', N'ROMEO', N'VILLAREAL', 18, CAST(0x501D0B00 AS Date), 8182036985)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (19, N'GUILLERMO', N'SAENZ', N'TAMEZ', 19, CAST(0x86160B00 AS Date), 8125452630)
INSERT [dbo].[Trabajador] ([iIdTrabajador], [vNombre], [vApellidoPat], [vApellidoMat], [iId], [dFechaingreso], [iTelefono]) VALUES (20, N'RODRIGO', N'VALDEZ', N'RUIZ', 20, CAST(0x43240B00 AS Date), 8114523608)
INSERT [dbo].[UsExterno] ([iIdUsExtero], [vNombre], [vApellidoPat], [vApellidoMat], [vOcupacion], [iIdDomicilio], [iTelefono]) VALUES (1, N'ADDISON', N'ALANIS', N'RODRIGUEZ', N'VENDEDOR', 14, 8114253665)
INSERT [dbo].[UsExterno] ([iIdUsExtero], [vNombre], [vApellidoPat], [vApellidoMat], [vOcupacion], [iIdDomicilio], [iTelefono]) VALUES (2, N'MARCELA', N'REYNA', N'PEREZ', N'ESTUDIANTE', 22, 8112114115)
INSERT [dbo].[UsExterno] ([iIdUsExtero], [vNombre], [vApellidoPat], [vApellidoMat], [vOcupacion], [iIdDomicilio], [iTelefono]) VALUES (3, N'JIMENA', N'RUIZ', N'GONZALEZ', N'EMPLEADO', 1, 8182365984)
INSERT [dbo].[UsExterno] ([iIdUsExtero], [vNombre], [vApellidoPat], [vApellidoMat], [vOcupacion], [iIdDomicilio], [iTelefono]) VALUES (4, N'URIEL', N'GUITIERREZ', N'GUTIERREZ', N'VENDEDOR', 4, 8114253665)
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_vFacultad]  DEFAULT (N'(FCFM)') FOR [vFacultad]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [Re_almacen_libro] FOREIGN KEY([iIdLibro])
REFERENCES [dbo].[Libro] ([iIdLibro])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [Re_almacen_libro]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [Re_almacen_prest] FOREIGN KEY([iIdOrdenPrestamo])
REFERENCES [dbo].[Prestamo] ([iIdPrestamo])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [Re_almacen_prest]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [Re_alum_dom] FOREIGN KEY([iIdDomicilio])
REFERENCES [dbo].[Domicilio] ([iIdDomicilio])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [Re_alum_dom]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [Re_alumn_carrera] FOREIGN KEY([iIdCarrera])
REFERENCES [dbo].[Carrera] ([iIdCarrera])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [Re_alumn_carrera]
GO
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD  CONSTRAINT [Re_carrera_alum] FOREIGN KEY([iIdCarrera])
REFERENCES [dbo].[Carrera] ([iIdCarrera])
GO
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [Re_carrera_alum]
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD  CONSTRAINT [Re_libro_genero] FOREIGN KEY([Genero])
REFERENCES [dbo].[Genero] ([iIdGenero])
GO
ALTER TABLE [dbo].[Libro] CHECK CONSTRAINT [Re_libro_genero]
GO
ALTER TABLE [dbo].[TipoUsuario]  WITH CHECK ADD  CONSTRAINT [Re_tipus_alumno] FOREIGN KEY([iUsuario])
REFERENCES [dbo].[Alumno] ([iMatricula])
GO
ALTER TABLE [dbo].[TipoUsuario] CHECK CONSTRAINT [Re_tipus_alumno]
GO
ALTER TABLE [dbo].[TipoUsuario]  WITH CHECK ADD  CONSTRAINT [Re_tipus_usexterno] FOREIGN KEY([iUsuario])
REFERENCES [dbo].[UsExterno] ([iIdUsExtero])
GO
ALTER TABLE [dbo].[TipoUsuario] CHECK CONSTRAINT [Re_tipus_usexterno]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [Re_tra_dom] FOREIGN KEY([iId])
REFERENCES [dbo].[Domicilio] ([iIdDomicilio])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [Re_tra_dom]
GO
ALTER TABLE [dbo].[UsExterno]  WITH CHECK ADD  CONSTRAINT [Re_usexterno_dom] FOREIGN KEY([iIdDomicilio])
REFERENCES [dbo].[Domicilio] ([iIdDomicilio])
GO
ALTER TABLE [dbo].[UsExterno] CHECK CONSTRAINT [Re_usexterno_dom]
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [EdadAdolescentes] CHECK  ((datediff(year,[dFechaNacimiento],getdate())>(15)))
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [EdadAdolescentes]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [MayorT] CHECK  ((datediff(day,[dFechaingreso],getdate())>(55)))
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [MayorT]
GO
USE [master]
GO
ALTER DATABASE [LBD_Biblioteca] SET  READ_WRITE 
GO
