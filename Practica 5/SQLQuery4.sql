USE [Pract_Biblio]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 09/26/2019 16:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trabajador](
	[iIdTrabajador] [int] NOT NULL,
	[vNombre] [varchar](35) NOT NULL,
	[vApellidos] [varchar](100) NOT NULL,
	[dFechaingreso] [date] NOT NULL,
 CONSTRAINT [PK_Trabajador] PRIMARY KEY CLUSTERED 
(
	[iIdTrabajador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[Trabajador]([PK_Trabajador]) WITH STATS_STREAM = 0x010000000100000000000000000000003E9ED5E2000000004000000000000000000000000000000038030A003800000004000A00000000000000000008018019, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 09/26/2019 16:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libros](
	[iIdLibro] [int] NOT NULL,
	[vNombreLib] [varchar](50) NOT NULL,
	[vAutor] [varchar](60) NOT NULL,
	[vEditorial] [varchar](50) NOT NULL,
	[vGenero] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[iIdLibro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[Libros]([PK_Libros]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 09/26/2019 16:25:27 ******/
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
 CONSTRAINT [PK_Domicilio] PRIMARY KEY CLUSTERED 
(
	[iIdDomicilio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[Domicilio]([PK_Domicilio]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 09/26/2019 16:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[iIdCarrera] [int] NOT NULL,
	[vNomCarrera] [varchar](60) NOT NULL,
 CONSTRAINT [PK__Carrera__2D96C6993B75D760] PRIMARY KEY CLUSTERED 
(
	[iIdCarrera] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[Carrera]([PK__Carrera__2D96C6993B75D760]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 09/26/2019 16:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[iMatricula] [int] NOT NULL,
	[vNombre] [varchar](35) NOT NULL,
	[vApellido1] [varchar](50) NOT NULL,
	[vApellido2] [varchar](50) NOT NULL,
	[vFacultad] [varchar](70) NOT NULL,
	[iIdCarrera] [int] NOT NULL,
	[iIdDomicilio] [int] NOT NULL,
	[vNombreCompleto]  AS ((((([vNombre]+'')+[vApellido1])+'')+[vApellido2])+''),
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[iMatricula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[Alumno]([PK_Alumno]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 09/26/2019 16:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[iIdAlmacen] [int] NOT NULL,
	[iIdLibro] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[iIdAlmacen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
UPDATE STATISTICS [dbo].[Almacen]([PK_Almacen]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Usexterno]    Script Date: 09/26/2019 16:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usexterno](
	[iIdUsexterno] [int] NOT NULL,
	[vNombre] [varchar](35) NOT NULL,
	[vApellido1] [varchar](50) NOT NULL,
	[vApellido2] [varchar](50) NOT NULL,
	[vOcupacion] [varchar](50) NOT NULL,
	[iNumero] [int] NOT NULL,
	[iIdDomicilio] [int] NOT NULL,
	[vNombreCompleto]  AS ((((([vNombre]+'')+[vApellido1])+'')+[vApellido2])+''),
 CONSTRAINT [PK_Usexterno] PRIMARY KEY CLUSTERED 
(
	[iIdUsexterno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
UPDATE STATISTICS [dbo].[Usexterno]([PK_Usexterno]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 09/26/2019 16:25:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[iIdPrestamo] [int] NOT NULL,
	[iIdAlumno] [int] NOT NULL,
	[iIdLibro] [int] NOT NULL,
	[iIdTrabajador] [int] NOT NULL,
	[dFechSalida] [date] NOT NULL,
	[dFechEntrega] [date] NOT NULL,
 CONSTRAINT [PK_Prestamo] PRIMARY KEY CLUSTERED 
(
	[iIdPrestamo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
UPDATE STATISTICS [dbo].[Prestamo]([PK_Prestamo]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Default [Default_fac]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [Default_fac]  DEFAULT ('FCFM') FOR [vFacultad]
GO
/****** Object:  Check [Mayoruno]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [Mayoruno] CHECK  ((datediff(year,[dFechaingreso],getdate())>(1)))
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [Mayoruno]
GO
/****** Object:  ForeignKey [FK_Almacen_Libros]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_Libros] FOREIGN KEY([iIdLibro])
REFERENCES [dbo].[Libros] ([iIdLibro])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_Libros]
GO
/****** Object:  ForeignKey [FK_Alumno_Carrera]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Carrera] FOREIGN KEY([iIdCarrera])
REFERENCES [dbo].[Carrera] ([iIdCarrera])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Carrera]
GO
/****** Object:  ForeignKey [FK_Alumno_Domicilio]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Domicilio] FOREIGN KEY([iIdDomicilio])
REFERENCES [dbo].[Domicilio] ([iIdDomicilio])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Domicilio]
GO
/****** Object:  ForeignKey [FK_Prestamo_Alumno]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Alumno] FOREIGN KEY([iIdAlumno])
REFERENCES [dbo].[Alumno] ([iMatricula])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Alumno]
GO
/****** Object:  ForeignKey [FK_Prestamo_Libros]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Libros] FOREIGN KEY([iIdLibro])
REFERENCES [dbo].[Libros] ([iIdLibro])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Libros]
GO
/****** Object:  ForeignKey [FK_Prestamo_Trabajador]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Trabajador] FOREIGN KEY([iIdTrabajador])
REFERENCES [dbo].[Trabajador] ([iIdTrabajador])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Trabajador]
GO
/****** Object:  ForeignKey [FK_Prestamo_Usexterno]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Prestamo_Usexterno] FOREIGN KEY([iIdAlumno])
REFERENCES [dbo].[Usexterno] ([iIdUsexterno])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FK_Prestamo_Usexterno]
GO
/****** Object:  ForeignKey [FK_Usexterno_Domicilio]    Script Date: 09/26/2019 16:25:27 ******/
ALTER TABLE [dbo].[Usexterno]  WITH CHECK ADD  CONSTRAINT [FK_Usexterno_Domicilio] FOREIGN KEY([iIdDomicilio])
REFERENCES [dbo].[Domicilio] ([iIdDomicilio])
GO
ALTER TABLE [dbo].[Usexterno] CHECK CONSTRAINT [FK_Usexterno_Domicilio]
GO
