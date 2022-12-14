USE [BD3K7G03_2022]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 15/11/2022 15:05:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[codActor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codActor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActorxPelicula]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActorxPelicula](
	[codActor] [int] NOT NULL,
	[pelicula] [int] NOT NULL,
	[rol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codActor] ASC,
	[pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsientoxSala]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsientoxSala](
	[sala] [int] NOT NULL,
	[numeroFila] [int] NOT NULL,
	[letraColumna] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sala] ASC,
	[numeroFila] ASC,
	[letraColumna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[idBanco] [int] IDENTITY(1,1) NOT NULL,
	[nombreBanco] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificacion](
	[codCalificacion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](120) NOT NULL,
	[abreviatura] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codCalificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[dni] [int] NOT NULL,
	[tipoDocumento] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[fechaNacimiento] [date] NULL,
	[email] [varchar](60) NULL,
	[telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[dni] ASC,
	[tipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComposicionDeCombo]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComposicionDeCombo](
	[idProductoCombo] [int] NOT NULL,
	[idProductoSimple] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProductoCombo] ASC,
	[idProductoSimple] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleTicketCombo]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleTicketCombo](
	[orden] [int] NOT NULL,
	[nroTicket] [int] NOT NULL,
	[nroCombo] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orden] ASC,
	[nroTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleTicketEntrada]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleTicketEntrada](
	[orden] [int] NOT NULL,
	[nroTicket] [int] NOT NULL,
	[nroEntrada] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orden] ASC,
	[nroTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distribuidora]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distribuidora](
	[idDistribuidora] [int] IDENTITY(1,1) NOT NULL,
	[nombreDistribuidora] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDistribuidora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[dni] [int] NOT NULL,
	[tipoDocumento] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[email] [varchar](60) NULL,
	[telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[dni] ASC,
	[tipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrada](
	[nroEntrada] [int] IDENTITY(1,1) NOT NULL,
	[fechaHoraVenta] [datetime] NULL,
	[fechaHoraFuncion] [datetime] NULL,
	[sala] [int] NOT NULL,
	[numeroFila] [int] NOT NULL,
	[letraColumna] [char](1) NOT NULL,
	[tarifa] [int] NOT NULL,
	[dniEmpleado] [int] NOT NULL,
	[tipoDocEmpleado] [int] NOT NULL,
	[precio_unitario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nroEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formato]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formato](
	[codFormato] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codFormato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcion]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcion](
	[fechaHora] [datetime] NOT NULL,
	[sala] [int] NOT NULL,
	[pelicula] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[fechaInicio] [date] NOT NULL,
	[fechaFin] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fechaHora] ASC,
	[sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[codGenero] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](120) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[codIdioma] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedioPago]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedioPago](
	[codMedioPago] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](120) NULL,
	[tarjeta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codMedioPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origen]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origen](
	[idOrigen] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[codPelicula] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[leyenda] [varchar](50) NULL,
	[duracion] [varchar](50) NOT NULL,
	[sinposis] [varchar](250) NOT NULL,
	[origen] [int] NOT NULL,
	[calificacion] [int] NOT NULL,
	[formato] [int] NOT NULL,
	[genero] [int] NOT NULL,
	[distribuidora] [int] NOT NULL,
	[idioma] [int] NOT NULL,
	[añoEstreno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](120) NOT NULL,
	[tipoProducto] [int] NULL,
	[precio] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramacionSemanal]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramacionSemanal](
	[fechaInicio] [date] NOT NULL,
	[fechaFin] [date] NOT NULL,
	[nroSemana] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fechaInicio] ASC,
	[fechaFin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promocion]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promocion](
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](120) NOT NULL,
	[valor] [money] NOT NULL,
	[fechaInicio] [date] NOT NULL,
	[fechaFin] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[nombreRol] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sala](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[numero] [int] NOT NULL,
	[capacidadButacas] [int] NOT NULL,
	[es3d] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifa](
	[idTarifa] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](120) NOT NULL,
	[valor] [money] NOT NULL,
	[codFormato] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[codTarjeta] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](120) NULL,
	[banco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[nroTicket] [int] IDENTITY(1,1) NOT NULL,
	[fechaHoraVenta] [datetime] NOT NULL,
	[medioPago] [int] NOT NULL,
	[dniEmpleado] [int] NOT NULL,
	[tipoDocEmpleado] [int] NOT NULL,
	[promocion] [money] NOT NULL,
	[npromocion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[nroTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[idTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[idTipoProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipoProd] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 15/11/2022 15:05:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[dni] [int] NOT NULL,
	[tipoDocumento] [int] NOT NULL,
	[fechaAlta] [date] NULL,
	[contraseña] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (2, N'Angelina', N'Jolie')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (3, N'Jim', N'Carrey')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (6, N'Mauro', N'Vegetta')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (9, N'Brad', N'Pitt')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (10, N'Leonardo', N'DiCaprio')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (11, N'Johnny', N'Depp')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (12, N'Will', N'Smith')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (13, N'Tom', N'Cruise')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (14, N'Meryl', N'Streep')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (15, N'Nicole', N'Kidman')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (16, N'Scarlett', N'Johansson')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (17, N'Jennifer', N'Lawrence')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (18, N'Jennifer', N'Aniston')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (19, N'Julia', N'Roberts')
INSERT [dbo].[Actor] ([codActor], [nombre], [apellido]) VALUES (20, N'Emma', N'Stone')
SET IDENTITY_INSERT [dbo].[Actor] OFF
GO
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 8, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 9, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (1, 10, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 8, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 9, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (2, 10, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 8, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 9, N'B')
GO
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (3, 10, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 8, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 9, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (4, 10, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 8, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 9, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (5, 10, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 8, N'C')
GO
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 9, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (6, 10, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 8, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 9, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (7, 10, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 1, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 1, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 1, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 1, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 2, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 2, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 2, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 2, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 3, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 3, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 3, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 3, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 4, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 4, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 4, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 4, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 5, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 5, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 5, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 5, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 6, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 6, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 6, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 6, N'D')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 7, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 7, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 7, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 8, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 8, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 8, N'C')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 9, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 9, N'B')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 10, N'A')
INSERT [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna]) VALUES (8, 10, N'B')
GO
SET IDENTITY_INSERT [dbo].[Banco] ON 

INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (1, N'BANCO DE GALICIA Y BUENOS AIRES S.A.U.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (2, N'BANCO DE LA NACION ARGENTINA')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (3, N'BANCO DE LA PROVINCIA DE BUENOS AIRES')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (4, N'CITIBANK N.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (5, N'BANCO BBVA ARGENTINA S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (6, N'BANCO DE LA PROVINCIA DE CORDOBA S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (7, N'BANCO SUPERVIELLE S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (8, N'BANCO DE LA CIUDAD DE BUENOS AIRES')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (9, N'BANCO PATAGONIA S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (10, N'BANCO HIPOTECARIO S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (11, N'BANCO SANTANDER RIO S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (12, N'HSBC BANK ARGENTINA S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (13, N'BANCO MACRO S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (14, N'BANCO ITAU ARGENTINA S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (15, N'NARANJA DIGITAL COMPAÑÍA FINANCIERA S.A.')
INSERT [dbo].[Banco] ([idBanco], [nombreBanco]) VALUES (16, N'Sin Banco')
SET IDENTITY_INSERT [dbo].[Banco] OFF
GO
SET IDENTITY_INSERT [dbo].[Calificacion] ON 

INSERT [dbo].[Calificacion] ([codCalificacion], [descripcion], [abreviatura]) VALUES (1, N'Apta para Todo Público', N'ATP')
INSERT [dbo].[Calificacion] ([codCalificacion], [descripcion], [abreviatura]) VALUES (2, N'Para Mayores de 13 años', N'PM13')
INSERT [dbo].[Calificacion] ([codCalificacion], [descripcion], [abreviatura]) VALUES (3, N'Para Mayores de 16 años', N'PM16')
INSERT [dbo].[Calificacion] ([codCalificacion], [descripcion], [abreviatura]) VALUES (4, N'Para Mayores de 18 años', N'PM18')
SET IDENTITY_INSERT [dbo].[Calificacion] OFF
GO
INSERT [dbo].[Cliente] ([dni], [tipoDocumento], [nombre], [apellido], [fechaNacimiento], [email], [telefono]) VALUES (25466165, 1, N'Luciana', N'Mbappé', CAST(N'1975-04-02' AS Date), N'lulu@gmail.com', N'56164948946')
INSERT [dbo].[Cliente] ([dni], [tipoDocumento], [nombre], [apellido], [fechaNacimiento], [email], [telefono]) VALUES (35661616, 1, N'Susana', N'Romero', CAST(N'1998-05-03' AS Date), N'susi@gmail.com', N'35164987994')
INSERT [dbo].[Cliente] ([dni], [tipoDocumento], [nombre], [apellido], [fechaNacimiento], [email], [telefono]) VALUES (36549498, 1, N'Sergio', N'Aguero', CAST(N'1968-05-02' AS Date), N'sergi@gmail.com', N'11649879846')
INSERT [dbo].[Cliente] ([dni], [tipoDocumento], [nombre], [apellido], [fechaNacimiento], [email], [telefono]) VALUES (41649849, 1, N'Martin', N'Sastreneta', CAST(N'2001-02-05' AS Date), N'tincho2000@gmail.com', N'35149894916')
INSERT [dbo].[Cliente] ([dni], [tipoDocumento], [nombre], [apellido], [fechaNacimiento], [email], [telefono]) VALUES (41726345, 1, N'Pedro', N'Stark', CAST(N'2000-02-20' AS Date), N'pedro@gmail.com', N'23412341234')
GO
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (27, 2, 1)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (27, 4, 1)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (27, 5, 3)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (27, 6, 4)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (44, 4, 2)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (49, 11, 3)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (49, 24, 1)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (50, 24, 3)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (50, 25, 2)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (1048, 1, 2)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (1048, 2, 3)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (1048, 4, 4)
INSERT [dbo].[ComposicionDeCombo] ([idProductoCombo], [idProductoSimple], [cantidad]) VALUES (1048, 5, 5)
GO
INSERT [dbo].[DetalleTicketCombo] ([orden], [nroTicket], [nroCombo], [cantidad]) VALUES (1, 2065, 27, 2)
INSERT [dbo].[DetalleTicketCombo] ([orden], [nroTicket], [nroCombo], [cantidad]) VALUES (1, 2067, 49, 6)
INSERT [dbo].[DetalleTicketCombo] ([orden], [nroTicket], [nroCombo], [cantidad]) VALUES (1, 2069, 1048, 1)
INSERT [dbo].[DetalleTicketCombo] ([orden], [nroTicket], [nroCombo], [cantidad]) VALUES (1, 2070, 1048, 1)
INSERT [dbo].[DetalleTicketCombo] ([orden], [nroTicket], [nroCombo], [cantidad]) VALUES (2, 2065, 44, 2)
INSERT [dbo].[DetalleTicketCombo] ([orden], [nroTicket], [nroCombo], [cantidad]) VALUES (2, 2067, 50, 5)
GO
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 1059, 1131)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 1060, 1135)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 1061, 1138)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 2061, 2140)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 2062, 2145)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 2063, 2152)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 2064, 2157)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 2066, 2163)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 2068, 2170)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (1, 2071, 2176)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 1059, 1132)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 1060, 1136)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 1061, 1139)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 2061, 2141)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 2062, 2146)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 2063, 2153)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 2064, 2158)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 2066, 2164)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (2, 2068, 2171)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 1059, 1133)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 1060, 1137)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 1061, 1140)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 2061, 2142)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 2062, 2147)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 2063, 2154)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 2064, 2159)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 2066, 2165)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (3, 2068, 2172)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 1059, 1134)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 1061, 1141)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 2061, 2143)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 2062, 2148)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 2063, 2155)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 2064, 2160)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 2066, 2166)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (4, 2068, 2173)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (5, 1061, 1142)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (5, 2061, 2144)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (5, 2062, 2149)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (5, 2063, 2156)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (5, 2064, 2161)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (5, 2066, 2167)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (5, 2068, 2174)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (6, 2062, 2150)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (6, 2064, 2162)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (6, 2066, 2168)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (6, 2068, 2175)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (7, 2062, 2151)
INSERT [dbo].[DetalleTicketEntrada] ([orden], [nroTicket], [nroEntrada]) VALUES (7, 2066, 2169)
GO
SET IDENTITY_INSERT [dbo].[Distribuidora] ON 

INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (1, N'Sony')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (2, N'Walt Disney')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (3, N'Paramount Int’l')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (4, N'Warner Bros')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (5, N'DeAPlaneta')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (6, N'eOne – Entertainment One Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (7, N'Filmax')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (8, N'European Dreams Factory')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (9, N'A Contracorriente')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (10, N'Alfa Pictures')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (11, N'Avalon Distribución')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (12, N'Syldavia')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (13, N'Bteam Pictures')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (14, N'Wanda')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (15, N'Numax')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (16, N'Festival Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (17, N'Vertice')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (18, N'Universal')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (19, N'Super 8')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (20, N'Barton')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (21, N'Independientes')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (22, N'Bosco Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (23, N'Begin Again Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (24, N'Filmin')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (25, N'Piramide Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (26, N'Mediapro')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (27, N'Fox')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (28, N'Alta Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (29, N'Minimal Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (30, N'Splendor Films')
INSERT [dbo].[Distribuidora] ([idDistribuidora], [nombreDistribuidora]) VALUES (31, N'Visioners')
SET IDENTITY_INSERT [dbo].[Distribuidora] OFF
GO
INSERT [dbo].[Empleado] ([dni], [tipoDocumento], [nombre], [apellido], [email], [telefono]) VALUES (20000, 1, N'Lukaas', N'Decia', N'lukadecia@gmail.com', N'12343434343')
INSERT [dbo].[Empleado] ([dni], [tipoDocumento], [nombre], [apellido], [email], [telefono]) VALUES (30000, 1, N'Marcelo', N'Cuello', N'marcelocuello@gmail.com', NULL)
INSERT [dbo].[Empleado] ([dni], [tipoDocumento], [nombre], [apellido], [email], [telefono]) VALUES (50000, 1, N'Braian', N'Nogueira', N'braiannogueira@gmail.com', NULL)
INSERT [dbo].[Empleado] ([dni], [tipoDocumento], [nombre], [apellido], [email], [telefono]) VALUES (42660371, 1, N'Gonzalo', N'Miranda', N'gonzamirandab2000@gmail.com', N'03518726378')
INSERT [dbo].[Empleado] ([dni], [tipoDocumento], [nombre], [apellido], [email], [telefono]) VALUES (42859400, 1, N'Valentina', N'Anzulovich', N'valen@gmail.com', NULL)
INSERT [dbo].[Empleado] ([dni], [tipoDocumento], [nombre], [apellido], [email], [telefono]) VALUES (42859401, 1, N'Valentina', N'Pepa', N'valen@gmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[Entrada] ON 

INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (1131, CAST(N'2022-06-12T19:25:35.037' AS DateTime), CAST(N'2022-02-27T22:22:00.000' AS DateTime), 6, 5, N'C', 11, 42660371, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (1132, CAST(N'2022-06-12T19:25:35.037' AS DateTime), CAST(N'2022-02-27T22:22:00.000' AS DateTime), 6, 5, N'B', 11, 42660371, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (1133, CAST(N'2022-06-12T19:25:35.037' AS DateTime), CAST(N'2022-02-27T22:22:00.000' AS DateTime), 6, 6, N'B', 12, 42660371, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (1134, CAST(N'2022-06-12T19:25:35.037' AS DateTime), CAST(N'2022-02-27T22:22:00.000' AS DateTime), 6, 4, N'C', 12, 42660371, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (1135, CAST(N'2022-06-15T15:05:54.567' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 8, N'B', 10, 42660371, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (1136, CAST(N'2022-06-15T15:05:54.567' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 7, N'B', 10, 42660371, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (1137, CAST(N'2022-06-15T15:05:54.567' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 6, N'B', 11, 42660371, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2140, CAST(N'2022-06-21T23:00:12.627' AS DateTime), CAST(N'2022-05-31T17:08:00.000' AS DateTime), 3, 6, N'B', 7, 42660371, 1, 740)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2141, CAST(N'2022-06-21T23:00:12.627' AS DateTime), CAST(N'2022-05-31T17:08:00.000' AS DateTime), 3, 5, N'C', 7, 42660371, 1, 740)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2142, CAST(N'2022-06-21T23:00:12.627' AS DateTime), CAST(N'2022-05-31T17:08:00.000' AS DateTime), 3, 7, N'B', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2143, CAST(N'2022-06-21T23:00:12.627' AS DateTime), CAST(N'2022-05-31T17:08:00.000' AS DateTime), 3, 6, N'C', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2144, CAST(N'2022-06-21T23:00:12.627' AS DateTime), CAST(N'2022-05-31T17:08:00.000' AS DateTime), 3, 8, N'B', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2145, CAST(N'2022-06-22T00:24:08.850' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 1, N'D', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2146, CAST(N'2022-06-22T00:24:08.850' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 2, N'D', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2147, CAST(N'2022-06-22T00:24:08.850' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 3, N'D', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2148, CAST(N'2022-06-22T00:24:08.850' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 4, N'D', 7, 42660371, 1, 740)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2149, CAST(N'2022-06-22T00:24:08.850' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 5, N'D', 7, 42660371, 1, 740)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2150, CAST(N'2022-06-22T00:24:08.850' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 6, N'D', 7, 42660371, 1, 740)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2151, CAST(N'2022-06-22T00:24:08.850' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 8, N'C', 7, 42660371, 1, 740)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2152, CAST(N'2022-06-22T00:24:37.483' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 5, N'B', 9, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2153, CAST(N'2022-06-22T00:24:37.483' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 4, N'C', 9, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2154, CAST(N'2022-06-22T00:24:37.483' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 6, N'B', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2155, CAST(N'2022-06-22T00:24:37.483' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 5, N'C', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2156, CAST(N'2022-06-22T00:24:37.483' AS DateTime), CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 7, N'B', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2157, CAST(N'2022-06-22T00:25:01.520' AS DateTime), CAST(N'2022-06-01T14:00:00.000' AS DateTime), 1, 3, N'B', 9, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2158, CAST(N'2022-06-22T00:25:01.520' AS DateTime), CAST(N'2022-06-01T14:00:00.000' AS DateTime), 1, 4, N'B', 9, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2159, CAST(N'2022-06-22T00:25:01.520' AS DateTime), CAST(N'2022-06-01T14:00:00.000' AS DateTime), 1, 5, N'B', 9, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2160, CAST(N'2022-06-22T00:25:01.520' AS DateTime), CAST(N'2022-06-01T14:00:00.000' AS DateTime), 1, 6, N'B', 9, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2161, CAST(N'2022-06-22T00:25:01.520' AS DateTime), CAST(N'2022-06-01T14:00:00.000' AS DateTime), 1, 7, N'B', 9, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2162, CAST(N'2022-06-22T00:25:01.520' AS DateTime), CAST(N'2022-06-01T14:00:00.000' AS DateTime), 1, 8, N'B', 8, 42660371, 1, 590)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2163, CAST(N'2022-06-22T03:37:13.287' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 5, N'B', 12, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2164, CAST(N'2022-06-22T03:37:13.287' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 4, N'B', 12, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2165, CAST(N'2022-06-22T03:37:13.287' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 5, N'A', 12, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2166, CAST(N'2022-06-22T03:37:13.287' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 6, N'A', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2167, CAST(N'2022-06-22T03:37:13.287' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 7, N'A', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2168, CAST(N'2022-06-22T03:37:13.287' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 8, N'A', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2169, CAST(N'2022-06-22T03:37:13.287' AS DateTime), CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 9, N'A', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2170, CAST(N'2022-06-22T14:30:37.347' AS DateTime), CAST(N'2022-06-01T11:00:00.000' AS DateTime), 5, 6, N'B', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2171, CAST(N'2022-06-22T14:30:37.347' AS DateTime), CAST(N'2022-06-01T11:00:00.000' AS DateTime), 5, 6, N'A', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2172, CAST(N'2022-06-22T14:30:37.347' AS DateTime), CAST(N'2022-06-01T11:00:00.000' AS DateTime), 5, 5, N'A', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2173, CAST(N'2022-06-22T14:30:37.347' AS DateTime), CAST(N'2022-06-01T11:00:00.000' AS DateTime), 5, 5, N'B', 11, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2174, CAST(N'2022-06-22T14:30:37.347' AS DateTime), CAST(N'2022-06-01T11:00:00.000' AS DateTime), 5, 4, N'A', 12, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2175, CAST(N'2022-06-22T14:30:37.347' AS DateTime), CAST(N'2022-06-01T11:00:00.000' AS DateTime), 5, 4, N'B', 12, 20000, 1, 780)
INSERT [dbo].[Entrada] ([nroEntrada], [fechaHoraVenta], [fechaHoraFuncion], [sala], [numeroFila], [letraColumna], [tarifa], [dniEmpleado], [tipoDocEmpleado], [precio_unitario]) VALUES (2176, CAST(N'2022-06-24T20:34:16.760' AS DateTime), CAST(N'2022-02-27T22:22:00.000' AS DateTime), 6, 6, N'C', 10, 30000, 1, 780)
SET IDENTITY_INSERT [dbo].[Entrada] OFF
GO
INSERT [dbo].[Estado] ([nombre], [descripcion]) VALUES (N'En Espera', N'Se demoró el inicio de la funcion')
INSERT [dbo].[Estado] ([nombre], [descripcion]) VALUES (N'Finalizada', N'Terminó la funcion')
INSERT [dbo].[Estado] ([nombre], [descripcion]) VALUES (N'Iniciada', N'Ya comenzó la funcion')
GO
SET IDENTITY_INSERT [dbo].[Formato] ON 

INSERT [dbo].[Formato] ([codFormato], [descripcion]) VALUES (1, N'2D')
INSERT [dbo].[Formato] ([codFormato], [descripcion]) VALUES (2, N'3D')
SET IDENTITY_INSERT [dbo].[Formato] OFF
GO
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-02-27T22:22:00.000' AS DateTime), 6, 10, N'Finalizada', CAST(N'2022-03-13' AS Date), CAST(N'2022-03-20' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-05-28T12:09:00.000' AS DateTime), 5, 9, N'Finalizada', CAST(N'2022-03-13' AS Date), CAST(N'2022-03-20' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-05-31T00:26:00.000' AS DateTime), 1, 10, N'Finalizada', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-05-31T00:46:00.000' AS DateTime), 2, 10, N'Finalizada', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-05-31T17:08:00.000' AS DateTime), 3, 6, N'Finalizada', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-05-31T17:21:00.000' AS DateTime), 4, 6, N'Finalizada', CAST(N'2022-03-05' AS Date), CAST(N'2022-03-12' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-05-31T22:34:00.000' AS DateTime), 1, 6, N'Finalizada', CAST(N'2022-03-05' AS Date), CAST(N'2022-03-12' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T10:00:00.000' AS DateTime), 2, 13, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T10:00:00.000' AS DateTime), 4, 10, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T10:00:00.000' AS DateTime), 7, 6, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T10:30:00.000' AS DateTime), 1, 14, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T11:00:00.000' AS DateTime), 5, 9, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T12:00:00.000' AS DateTime), 1, 14, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T13:00:00.000' AS DateTime), 2, 13, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T14:00:00.000' AS DateTime), 1, 14, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T14:00:00.000' AS DateTime), 8, 6, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T15:00:00.000' AS DateTime), 2, 13, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T16:00:00.000' AS DateTime), 1, 14, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T16:00:00.000' AS DateTime), 4, 10, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T16:00:00.000' AS DateTime), 7, 6, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T16:30:00.000' AS DateTime), 5, 9, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T18:00:00.000' AS DateTime), 3, 11, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T19:45:00.000' AS DateTime), 4, 10, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T20:00:00.000' AS DateTime), 1, 14, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T20:00:00.000' AS DateTime), 3, 11, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T20:45:00.000' AS DateTime), 5, 9, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T21:30:00.000' AS DateTime), 4, 10, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T22:00:00.000' AS DateTime), 1, 14, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T22:15:00.000' AS DateTime), 8, 6, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-01T23:30:00.000' AS DateTime), 3, 11, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Funcion] ([fechaHora], [sala], [pelicula], [estado], [fechaInicio], [fechaFin]) VALUES (CAST(N'2022-06-20T22:00:00.000' AS DateTime), 2, 13, N'En Espera', CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (1, N'Acción')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (2, N'Aventuras')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (3, N'Ciencia Ficción')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (4, N'Comedia')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (5, N'Documental')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (6, N'Drama')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (7, N'Fantasía')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (8, N'Musical')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (9, N'Romance')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (10, N'Suspenso')
INSERT [dbo].[Genero] ([codGenero], [descripcion]) VALUES (11, N'Terror')
SET IDENTITY_INSERT [dbo].[Genero] OFF
GO
SET IDENTITY_INSERT [dbo].[Idioma] ON 

INSERT [dbo].[Idioma] ([codIdioma], [descripcion]) VALUES (1, N'Castellano')
INSERT [dbo].[Idioma] ([codIdioma], [descripcion]) VALUES (2, N'Subtitulado')
SET IDENTITY_INSERT [dbo].[Idioma] OFF
GO
SET IDENTITY_INSERT [dbo].[MedioPago] ON 

INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (7, N'Tarjeta', N'', 5)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (9, N'Contado', N'Pagas en el momento', 16)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (11, N'Tarjeta', N'', 4)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (12, N'Tarjeta', N'', 6)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (13, N'Tarjeta', N'', 7)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (14, N'Tarjeta', N'', 11)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (15, N'Tarjeta', N'', 11)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (16, N'Tarjeta', N'', 12)
INSERT [dbo].[MedioPago] ([codMedioPago], [nombre], [descripcion], [tarjeta]) VALUES (17, N'Tarjeta', N'', 18)
SET IDENTITY_INSERT [dbo].[MedioPago] OFF
GO
SET IDENTITY_INSERT [dbo].[Origen] ON 

INSERT [dbo].[Origen] ([idOrigen], [nombre]) VALUES (1, N'Estados Unidos')
INSERT [dbo].[Origen] ([idOrigen], [nombre]) VALUES (2, N'Argentina')
INSERT [dbo].[Origen] ([idOrigen], [nombre]) VALUES (3, N'Latino América')
INSERT [dbo].[Origen] ([idOrigen], [nombre]) VALUES (4, N'Asia')
INSERT [dbo].[Origen] ([idOrigen], [nombre]) VALUES (5, N'Europa')
SET IDENTITY_INSERT [dbo].[Origen] OFF
GO
SET IDENTITY_INSERT [dbo].[Pelicula] ON 

INSERT [dbo].[Pelicula] ([codPelicula], [titulo], [leyenda], [duracion], [sinposis], [origen], [calificacion], [formato], [genero], [distribuidora], [idioma], [añoEstreno]) VALUES (6, N'Animales Fantasticos', N'pelicula de magos', N'142', N'tercera entrega de Animales Fantasticos', 4, 2, 1, 2, 7, 1, 2002)
INSERT [dbo].[Pelicula] ([codPelicula], [titulo], [leyenda], [duracion], [sinposis], [origen], [calificacion], [formato], [genero], [distribuidora], [idioma], [añoEstreno]) VALUES (9, N'Harry Potter', N'magiaaa', N'125', N'magiaa', 1, 1, 2, 2, 5, 2, 2003)
INSERT [dbo].[Pelicula] ([codPelicula], [titulo], [leyenda], [duracion], [sinposis], [origen], [calificacion], [formato], [genero], [distribuidora], [idioma], [añoEstreno]) VALUES (10, N'Harry Potter 2', N'magia', N'120', N'magia', 1, 1, 2, 2, 4, 2, 2005)
INSERT [dbo].[Pelicula] ([codPelicula], [titulo], [leyenda], [duracion], [sinposis], [origen], [calificacion], [formato], [genero], [distribuidora], [idioma], [añoEstreno]) VALUES (11, N'El Conjuro', N'La Monja', N'100', N'mucho miedo', 1, 2, 1, 11, 25, 1, 2012)
INSERT [dbo].[Pelicula] ([codPelicula], [titulo], [leyenda], [duracion], [sinposis], [origen], [calificacion], [formato], [genero], [distribuidora], [idioma], [añoEstreno]) VALUES (13, N'Volver al futuro', N'película épica', N'100', N'Un jóver vuelve al pasado para salvar su vida', 1, 1, 1, 7, 27, 1, 1982)
INSERT [dbo].[Pelicula] ([codPelicula], [titulo], [leyenda], [duracion], [sinposis], [origen], [calificacion], [formato], [genero], [distribuidora], [idioma], [añoEstreno]) VALUES (14, N'Rápido y Furiosos', N'Tokio', N'160', N'carreras de autos', 1, 1, 1, 1, 1, 2, 2002)
SET IDENTITY_INSERT [dbo].[Pelicula] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (1, N'Pringles Original', N'Papas fritas - 67 gr.', 2, 109.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (2, N'Chocolinas', N'Galletas chocolate - 250 gr.', 2, 190.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (4, N'Mini Oreos', N'Galletas chocolate - 50 gr.', 2, 100.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (5, N'Cheetos', N'Snack salado - 151 gr.', 2, 250.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (6, N'Doritos', N'Snack salado - 150 gr.', 2, 250.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (7, N'Lays', N'Snack salado - 151 gr.', 2, 250.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (8, N'3D Original', N'Snack salado - 151 gr.', 2, 250.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (9, N'Coca Cola Original', N'500 ml.', 3, 400.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (10, N'Coca Cola Light', N'500 ml.', 3, 400.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (11, N'Fanta', N'500 ml.', 3, 400.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (12, N'Sprite', N'500 ml.', 3, 400.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (13, N'Agua Mineral', N'500 ml.', 3, 400.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (14, N'Gomitas', N'50 gr.', 4, 50.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (15, N'Chocolate', N'50 gr.', 4, 50.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (16, N'Caramelos', N'50 gr.', 4, 50.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (20, N'Nachos con cheddar', N'', 5, 800.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (22, N'Pochoclo grande', N'Balde Grande', 5, 800.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (23, N'Pochoclo mediano', N'Balde Mediano', 5, 600.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (24, N'Pochoclo pequeño', N'Balde Pequeño', 5, 450.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (25, N'Nueve de Oro', N'Snack Salado - 150 gr.', 2, 250.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (27, N'Combo Pequeño', N'Este combo incluye 2 pochoclos medianos y 1 gaseosa ligth', 1, 1000.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (44, N'Combo Luis', N'Este combo tiene los mejores productos', 1, 199.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (45, N'Galletas', N'paquete pequeño', 2, 250.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (47, N'Nacho', N'estos nachos vienen sin queso', 2, 200.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (49, N'Fanta Loca', N'Este combo esta pensado para que puedas compartir tus pochoclos mientras tomas una fanta', 1, 1300.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (50, N'Combo Pancho', N'Combo de Nueve de Oro con Chocolate', 1, 10000.0000)
INSERT [dbo].[Producto] ([idProducto], [nombre], [descripcion], [tipoProducto], [precio]) VALUES (1048, N'Combo Sin Compra', N'Este combo no lo va a comprar nadie solo lo mostramos ', 1, 1000.0000)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
INSERT [dbo].[ProgramacionSemanal] ([fechaInicio], [fechaFin], [nroSemana]) VALUES (CAST(N'2022-03-05' AS Date), CAST(N'2022-03-12' AS Date), 2)
INSERT [dbo].[ProgramacionSemanal] ([fechaInicio], [fechaFin], [nroSemana]) VALUES (CAST(N'2022-03-13' AS Date), CAST(N'2022-03-20' AS Date), 3)
INSERT [dbo].[ProgramacionSemanal] ([fechaInicio], [fechaFin], [nroSemana]) VALUES (CAST(N'2022-03-21' AS Date), CAST(N'2022-03-28' AS Date), 4)
INSERT [dbo].[ProgramacionSemanal] ([fechaInicio], [fechaFin], [nroSemana]) VALUES (CAST(N'2022-05-29' AS Date), CAST(N'2022-06-04' AS Date), 5)
GO
INSERT [dbo].[Promocion] ([nombre], [descripcion], [valor], [fechaInicio], [fechaFin]) VALUES (N'Promo', N'promo', 2.0000, CAST(N'2022-06-01' AS Date), CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Promocion] ([nombre], [descripcion], [valor], [fechaInicio], [fechaFin]) VALUES (N'Promo Jubilados', N'Descuento del 70% sobre tarifa jubilados 2D', 413.0000, CAST(N'2022-05-31' AS Date), CAST(N'2022-06-07' AS Date))
INSERT [dbo].[Promocion] ([nombre], [descripcion], [valor], [fechaInicio], [fechaFin]) VALUES (N'Promo Kids', N'Descuento del 60% sobre tarifa menores 2D', 354.0000, CAST(N'2022-05-31' AS Date), CAST(N'2022-07-07' AS Date))
INSERT [dbo].[Promocion] ([nombre], [descripcion], [valor], [fechaInicio], [fechaFin]) VALUES (N'Promo Lunes a Jueves', N'Descuento 50% sobre valor tarifa general 2D', 370.0000, CAST(N'2022-05-31' AS Date), CAST(N'2022-12-01' AS Date))
INSERT [dbo].[Promocion] ([nombre], [descripcion], [valor], [fechaInicio], [fechaFin]) VALUES (N'Promo semana del cine', N'Promo aniversario CineMax', 1000.0000, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-17' AS Date))
INSERT [dbo].[Promocion] ([nombre], [descripcion], [valor], [fechaInicio], [fechaFin]) VALUES (N'Sin Promoción', N'', 0.0000, CAST(N'2022-05-31' AS Date), CAST(N'2022-12-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([idRol], [nombreRol]) VALUES (1, N'Protagonista')
INSERT [dbo].[Rol] ([idRol], [nombreRol]) VALUES (2, N'Secundario')
INSERT [dbo].[Rol] ([idRol], [nombreRol]) VALUES (3, N'De Reparto')
INSERT [dbo].[Rol] ([idRol], [nombreRol]) VALUES (4, N'Director')
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Sala] ON 

INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (1, 1, 300, 0)
INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (2, 2, 250, 0)
INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (3, 3, 200, 0)
INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (4, 4, 200, 0)
INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (5, 5, 150, 0)
INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (6, 6, 300, 1)
INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (7, 7, 200, 1)
INSERT [dbo].[Sala] ([codigo], [numero], [capacidadButacas], [es3d]) VALUES (8, 8, 150, 1)
SET IDENTITY_INSERT [dbo].[Sala] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarifa] ON 

INSERT [dbo].[Tarifa] ([idTarifa], [descripcion], [valor], [codFormato]) VALUES (7, N'General', 740.0000, 1)
INSERT [dbo].[Tarifa] ([idTarifa], [descripcion], [valor], [codFormato]) VALUES (8, N'Menor', 590.0000, 1)
INSERT [dbo].[Tarifa] ([idTarifa], [descripcion], [valor], [codFormato]) VALUES (9, N'Jubilado', 590.0000, 1)
INSERT [dbo].[Tarifa] ([idTarifa], [descripcion], [valor], [codFormato]) VALUES (10, N'General', 780.0000, 2)
INSERT [dbo].[Tarifa] ([idTarifa], [descripcion], [valor], [codFormato]) VALUES (11, N'Menor', 780.0000, 2)
INSERT [dbo].[Tarifa] ([idTarifa], [descripcion], [valor], [codFormato]) VALUES (12, N'Jubilado', 780.0000, 2)
SET IDENTITY_INSERT [dbo].[Tarifa] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarjeta] ON 

INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (4, N'MASTERCARD DEBITO', NULL, 5)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (5, N'AMERICAN EXPRESS', NULL, 4)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (6, N'TARJETA NARANJA', NULL, 15)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (7, N'NATIVA', NULL, 2)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (8, N'ITALCRED', NULL, 14)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (9, N'MAESTRO', NULL, 7)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (10, N'VISA CREDITO', NULL, 8)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (11, N'VISA DEBITO', NULL, 9)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (12, N'MASTERCARD CREDITO', NULL, 10)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (13, N'MASTERCARD DEBITO', NULL, 11)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (14, N'VISA CREDITO', NULL, 12)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (15, N'VISA DEBITO', NULL, 13)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (16, N'Sin Tarjeta', N'Sin Tarjeta', 16)
INSERT [dbo].[Tarjeta] ([codTarjeta], [nombre], [descripcion], [banco]) VALUES (18, N'Tarketa Black', N'Esta tarjeta es la mejor que hay', 4)
SET IDENTITY_INSERT [dbo].[Tarjeta] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1039, CAST(N'2022-06-12T18:24:49.540' AS DateTime), 7, 20000, 1, 0.0000, N'')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1050, CAST(N'2022-06-12T18:40:56.963' AS DateTime), 9, 20000, 1, 100.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1051, CAST(N'2022-06-12T18:41:51.053' AS DateTime), 7, 42660371, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1054, CAST(N'2022-06-12T19:06:57.520' AS DateTime), 7, 42660371, 1, 0.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1055, CAST(N'2022-06-12T19:12:31.683' AS DateTime), 7, 42660371, 1, 0.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1056, CAST(N'2022-06-12T19:14:14.033' AS DateTime), 7, 42660371, 1, 0.0000, N'Promo Jubilados')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1057, CAST(N'2022-06-12T19:16:37.543' AS DateTime), 7, 42660371, 1, 0.0000, N'Promo Kids')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1058, CAST(N'2022-06-12T19:18:20.573' AS DateTime), 7, 42660371, 1, 0.0000, N'Sin Promoción')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1059, CAST(N'2022-06-12T19:25:35.037' AS DateTime), 7, 42660371, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (1060, CAST(N'2022-06-15T15:05:54.567' AS DateTime), 7, 42660371, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2060, CAST(N'2022-06-21T22:58:01.970' AS DateTime), 9, 42660371, 1, 370.0000, N'Promo Lunes a Jueves')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2061, CAST(N'2022-06-21T23:00:12.627' AS DateTime), 9, 42660371, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2062, CAST(N'2022-06-22T00:24:08.850' AS DateTime), 9, 42660371, 1, 0.0000, N'Sin Promoción')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2063, CAST(N'2022-06-22T00:24:37.483' AS DateTime), 11, 42660371, 1, 354.0000, N'Promo Kids')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2064, CAST(N'2022-06-22T00:25:01.520' AS DateTime), 9, 42660371, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2065, CAST(N'2022-06-22T00:57:07.897' AS DateTime), 9, 42660371, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2066, CAST(N'2022-06-22T03:37:13.287' AS DateTime), 9, 20000, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2067, CAST(N'2022-06-22T03:45:03.183' AS DateTime), 7, 42660371, 1, 354.0000, N'Promo Kids')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2068, CAST(N'2022-06-22T14:30:37.347' AS DateTime), 12, 20000, 1, 413.0000, N'Promo Jubilados')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2069, CAST(N'2022-06-24T20:28:33.677' AS DateTime), 9, 30000, 1, 2.0000, N'Promo')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2070, CAST(N'2022-06-24T20:29:21.307' AS DateTime), 9, 30000, 1, 370.0000, N'Promo Lunes a Jueves')
INSERT [dbo].[Ticket] ([nroTicket], [fechaHoraVenta], [medioPago], [dniEmpleado], [tipoDocEmpleado], [promocion], [npromocion]) VALUES (2071, CAST(N'2022-06-24T20:34:16.760' AS DateTime), 13, 30000, 1, 413.0000, N'Promo Jubilados')
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON 

INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (1, N'DNI')
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre]) VALUES (2, N'Pasaporte')
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProducto] ON 

INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProd]) VALUES (1, N'Combo')
INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProd]) VALUES (2, N'Snack')
INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProd]) VALUES (3, N'Bebida')
INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProd]) VALUES (4, N'Golosina')
INSERT [dbo].[TipoProducto] ([idTipoProducto], [nombreTipoProd]) VALUES (5, N'Comida')
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [dni], [tipoDocumento], [fechaAlta], [contraseña]) VALUES (3, N'Luka', 20000, 1, CAST(N'2022-05-08' AS Date), N'decia')
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [dni], [tipoDocumento], [fechaAlta], [contraseña]) VALUES (4, N'Marcelo', 30000, 1, CAST(N'2022-05-08' AS Date), N'cuello')
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [dni], [tipoDocumento], [fechaAlta], [contraseña]) VALUES (5, N'Gonzalo', 42660371, 1, CAST(N'2022-05-08' AS Date), N'miranda')
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [dni], [tipoDocumento], [fechaAlta], [contraseña]) VALUES (6, N'Braian', 50000, 1, CAST(N'2022-05-08' AS Date), N'nogueira')
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [dni], [tipoDocumento], [fechaAlta], [contraseña]) VALUES (9, N'Valentina', 42859400, 1, CAST(N'2022-05-08' AS Date), N'anzu')
INSERT [dbo].[Usuario] ([idUsuario], [nombreUsuario], [dni], [tipoDocumento], [fechaAlta], [contraseña]) VALUES (10, N'Valentina', 42859401, 1, CAST(N'2022-05-08' AS Date), N'anzu')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
/****** Object:  Index [UQ__Programa__D408FD9F4854F7F4]    Script Date: 15/11/2022 15:06:03 ******/
ALTER TABLE [dbo].[ProgramacionSemanal] ADD UNIQUE NONCLUSTERED 
(
	[nroSemana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Sala__FC77F2113D125695]    Script Date: 15/11/2022 15:06:03 ******/
ALTER TABLE [dbo].[Sala] ADD UNIQUE NONCLUSTERED 
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActorxPelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_ActorxPelicula] FOREIGN KEY([pelicula])
REFERENCES [dbo].[Pelicula] ([codPelicula])
GO
ALTER TABLE [dbo].[ActorxPelicula] CHECK CONSTRAINT [FK_Pelicula_ActorxPelicula]
GO
ALTER TABLE [dbo].[ActorxPelicula]  WITH CHECK ADD  CONSTRAINT [FK_Rol_ActorxPelicula] FOREIGN KEY([rol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[ActorxPelicula] CHECK CONSTRAINT [FK_Rol_ActorxPelicula]
GO
ALTER TABLE [dbo].[AsientoxSala]  WITH CHECK ADD  CONSTRAINT [FK_Sala] FOREIGN KEY([sala])
REFERENCES [dbo].[Sala] ([codigo])
GO
ALTER TABLE [dbo].[AsientoxSala] CHECK CONSTRAINT [FK_Sala]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_TipoDocumento] FOREIGN KEY([tipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_TipoDocumento]
GO
ALTER TABLE [dbo].[ComposicionDeCombo]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Comp_Combo] FOREIGN KEY([idProductoCombo])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[ComposicionDeCombo] CHECK CONSTRAINT [FK_Producto_Comp_Combo]
GO
ALTER TABLE [dbo].[ComposicionDeCombo]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Comp_Simple] FOREIGN KEY([idProductoSimple])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[ComposicionDeCombo] CHECK CONSTRAINT [FK_Producto_Comp_Simple]
GO
ALTER TABLE [dbo].[DetalleTicketCombo]  WITH CHECK ADD  CONSTRAINT [FK_Combo_Detalle] FOREIGN KEY([nroCombo])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[DetalleTicketCombo] CHECK CONSTRAINT [FK_Combo_Detalle]
GO
ALTER TABLE [dbo].[DetalleTicketCombo]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Detalle] FOREIGN KEY([nroTicket])
REFERENCES [dbo].[Ticket] ([nroTicket])
GO
ALTER TABLE [dbo].[DetalleTicketCombo] CHECK CONSTRAINT [FK_Ticket_Detalle]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Documento_Empleado] FOREIGN KEY([tipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Tipo_Documento_Empleado]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_AsientoxSala_Entrada] FOREIGN KEY([sala], [numeroFila], [letraColumna])
REFERENCES [dbo].[AsientoxSala] ([sala], [numeroFila], [letraColumna])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_AsientoxSala_Entrada]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Entrada] FOREIGN KEY([dniEmpleado], [tipoDocEmpleado])
REFERENCES [dbo].[Empleado] ([dni], [tipoDocumento])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_Empleado_Entrada]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_Funcion_Entrada] FOREIGN KEY([fechaHoraFuncion], [sala])
REFERENCES [dbo].[Funcion] ([fechaHora], [sala])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_Funcion_Entrada]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_Tarifa_Entrada] FOREIGN KEY([tarifa])
REFERENCES [dbo].[Tarifa] ([idTarifa])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_Tarifa_Entrada]
GO
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Estado_Funcion] FOREIGN KEY([estado])
REFERENCES [dbo].[Estado] ([nombre])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Estado_Funcion]
GO
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Funcion] FOREIGN KEY([pelicula])
REFERENCES [dbo].[Pelicula] ([codPelicula])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Pelicula_Funcion]
GO
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_ProgramacionSemanal_Funcion] FOREIGN KEY([fechaInicio], [fechaFin])
REFERENCES [dbo].[ProgramacionSemanal] ([fechaInicio], [fechaFin])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_ProgramacionSemanal_Funcion]
GO
ALTER TABLE [dbo].[Funcion]  WITH CHECK ADD  CONSTRAINT [FK_Sala_Funcion] FOREIGN KEY([sala])
REFERENCES [dbo].[Sala] ([codigo])
GO
ALTER TABLE [dbo].[Funcion] CHECK CONSTRAINT [FK_Sala_Funcion]
GO
ALTER TABLE [dbo].[MedioPago]  WITH CHECK ADD  CONSTRAINT [FK_Tarjeta] FOREIGN KEY([tarjeta])
REFERENCES [dbo].[Tarjeta] ([codTarjeta])
GO
ALTER TABLE [dbo].[MedioPago] CHECK CONSTRAINT [FK_Tarjeta]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Pelicula] FOREIGN KEY([calificacion])
REFERENCES [dbo].[Calificacion] ([codCalificacion])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Calificacion_Pelicula]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Distribuidora_Pelicula] FOREIGN KEY([distribuidora])
REFERENCES [dbo].[Distribuidora] ([idDistribuidora])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Distribuidora_Pelicula]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Formato_Pelicula] FOREIGN KEY([formato])
REFERENCES [dbo].[Formato] ([codFormato])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Formato_Pelicula]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Genero_Pelicula] FOREIGN KEY([genero])
REFERENCES [dbo].[Genero] ([codGenero])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Genero_Pelicula]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Idioma_Pelicula] FOREIGN KEY([idioma])
REFERENCES [dbo].[Idioma] ([codIdioma])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Idioma_Pelicula]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Origen_Pelicula] FOREIGN KEY([origen])
REFERENCES [dbo].[Origen] ([idOrigen])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Origen_Pelicula]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Producto] FOREIGN KEY([tipoProducto])
REFERENCES [dbo].[TipoProducto] ([idTipoProducto])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Tipo_Producto]
GO
ALTER TABLE [dbo].[Tarifa]  WITH CHECK ADD FOREIGN KEY([codFormato])
REFERENCES [dbo].[Formato] ([codFormato])
GO
ALTER TABLE [dbo].[Tarjeta]  WITH CHECK ADD  CONSTRAINT [FK_Banco] FOREIGN KEY([banco])
REFERENCES [dbo].[Banco] ([idBanco])
GO
ALTER TABLE [dbo].[Tarjeta] CHECK CONSTRAINT [FK_Banco]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Ticket] FOREIGN KEY([dniEmpleado], [tipoDocEmpleado])
REFERENCES [dbo].[Empleado] ([dni], [tipoDocumento])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Empleado_Ticket]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Medio_Pago_Ticket] FOREIGN KEY([medioPago])
REFERENCES [dbo].[MedioPago] ([codMedioPago])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Medio_Pago_Ticket]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Empleado] FOREIGN KEY([dni], [tipoDocumento])
REFERENCES [dbo].[Empleado] ([dni], [tipoDocumento])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Empleado]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarActor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarActor]
	@nombre varchar(50),
	@apellido varchar(50),
	@codActor int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Actor SET nombre = @nombre, apellido = @apellido WHERE codActor = @codActor
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCliente]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarCliente]
	@dni int,
	@tipoDocumento int,
	@nombre varchar(50),
	@apellido varchar(50),
	@fechaNacimiento date,
	@email varchar(60),
	@telefono varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Cliente SET nombre=@nombre, apellido=@apellido, fechaNacimiento=@fechaNacimiento, 
    email=@email, telefono=@telefono where dni = @dni and tipoDocumento=@tipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEmpleado]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarEmpleado]
	@dni int,
	@tipoDocumento int,
	@nombre varchar(50),
	@apellido varchar(50),
	@email varchar(60),
	@telefono varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE Empleado SET nombre=@nombre, apellido=@apellido, 
    email=@email, telefono=@telefono where dni = @dni and tipoDocumento=@tipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarFuncion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarFuncion] 
	@fechaHora DateTime,
	@sala int,
	@pelicula int,
	@estado varchar(20),
	@fechaInicio DateTime,
	@fechaFin DateTime,
	@fechaHoraNueva DateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Funcion set sala=@sala, pelicula=@pelicula, estado=@estado, 
    fechaInicio=@fechaInicio, fechaFin=@fechaFin, fechaHora=@fechaHoraNueva where fechaHora=@fechaHora
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarMedioPago]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarMedioPago]
	@nombre varchar(50),
	@descripcion varchar(120),
	@tarjeta int,
	@codMedioPago int
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE MedioPago set nombre=@nombre, descripcion=@descripcion,
    tarjeta=@tarjeta where codMedioPago=@codMedioPago
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPelicula]
	@titulo varchar(50),
	@leyenda varchar(50),
	@duracion varchar(50),
	@sinopsis varchar(250),
	@origen int,
	@calificacion int,
	@formato int,
	@genero int,
	@distribuidora int,
	@idioma int,
	@añoEstreno int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Pelicula SET titulo = @titulo, leyenda = @leyenda, duracion = @duracion, sinposis = @sinopsis, 
	añoEstreno = @añoEstreno, origen = @origen, calificacion = @calificacion, formato = @formato, genero = @genero, 
	distribuidora = @distribuidora, idioma = @idioma WHERE titulo LIKE @titulo
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProducto]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarProducto]
	@nombre varchar(50), 
	@descripcion varchar(120), 
	@tipoProducto int, 
	@precio money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE Producto SET nombre = @nombre, descripcion = @descripcion, tipoProducto = @tipoProducto, precio = @precio WHERE nombre LIKE @nombre
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPromocion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPromocion]
@nombre varchar(50), 
@descripcion varchar(120), 
@valor money, 
@fechaInicio date, 
@fechaFin date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE Promocion SET descripcion=@descripcion, valor=@valor, 
    fechaInicio=@fechaInicio, fechaFin=@fechaFin where nombre = @nombre
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarTarjeta]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarTarjeta]
	@nombre varchar(50),
	@descripcion varchar(120),
	@banco int,
	@codTarjeta int
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	UPDATE Tarjeta set nombre=@nombre, descripcion=@descripcion, 
    banco=@banco where codTarjeta=@codTarjeta
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarActor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarActor]
	@codActor int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete Actor where codActor = @codActor
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarCliente]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarCliente]
	@dni int,
	@tipoDocumento int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM Cliente WHERE dni = @dni and tipoDocumento = @tipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarEmpleado]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarEmpleado]
	@dni int,
	@tipoDocumento int
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DELETE FROM Empleado WHERE dni = @dni and tipoDocumento = @tipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarFuncion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarFuncion] 
	@fechaHora DateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM Funcion where fechaHora=@fechaHora
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarMedioPago]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarMedioPago]
	@codMedioPago int
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DELETE FROM MedioPago where codMedioPago=@codMedioPago
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarPelicula]
	@codPelicula int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DELETE from Pelicula where codPelicula = @codPelicula
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarProducto]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarProducto]
	@idProducto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DELETE FROM Producto WHERE idProducto = @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarProductoCombo]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarProductoCombo]
	@idProducto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DELETE FROM ComposicionDeCombo WHERE idProductoSimple = @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarPromocion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarPromocion]
@nombre varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DELETE FROM Promocion WHERE nombre = @nombre
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarTarjeta]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarTarjeta]
	@codTarjeta int
	
AS
BEGIN
	SET NOCOUNT ON;
	delete from Tarjeta where codTarjeta = @codTarjeta 
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarUsuario]
	@dni int,
	@tipoDocumento int
AS
BEGIN
	SET NOCOUNT ON;
	delete from Usuario where dni = @dni and  tipoDocumento = @tipoDocumento 
END
GO
/****** Object:  StoredProcedure [dbo].[EstaEnCombo]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EstaEnCombo]
	@idProducto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT Producto.idProducto from Producto where idProducto = @idProducto 
    and idProducto in (select idProductoSimple from ComposicionDeCombo)
END
GO
/****** Object:  StoredProcedure [dbo].[GetActor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetActor]
	@codActor int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Actor WHERE codActor LIKE @codActor
END
GO
/****** Object:  StoredProcedure [dbo].[GetAsientosOcupadosFuncion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAsientosOcupadosFuncion]
	@fechaHora DateTime,
	@sala int
AS
BEGIN
	select numeroFila, letraColumna from Entrada where fechaHoraFuncion = @fechaHora and sala = @sala
END
GO
/****** Object:  StoredProcedure [dbo].[GetClientePorApellido]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClientePorApellido]
	@letra varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

    select * from Cliente where apellido like @letra + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[GetClientePorFechaAntes]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClientePorFechaAntes] 
	-- Add the parameters for the stored procedure here
	@desde Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Cliente where fechaNacimiento < @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetClientePorFechaDesp]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClientePorFechaDesp] 
	-- Add the parameters for the stored procedure here
	@desde Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Cliente where fechaNacimiento > @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetClientePorFechaEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetClientePorFechaEntre] 
	-- Add the parameters for the stored procedure here
	@desde Date,
	@hasta Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Cliente where fechaNacimiento >= @desde and fechaNacimiento < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosActor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosActor]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Actor
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCalificaciones]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCalificaciones]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select * from Calificacion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCombos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCombos]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select p.nombre,p.idProducto,p.descripcion ,p.precio, SUM(cs.cantidad) as 'cantidadItems' from Producto p inner join 
	ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo 
    group by p.nombre,p.idProducto,p.descripcion ,p.precio,cs.idProductoCombo
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCombosCantidadEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCombosCantidadEntre]
	@desde money,
	@hasta money
AS
BEGIN
	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select p.nombre,p.idProducto,p.descripcion ,p.precio, SUM(cs.cantidad) as 'cantidadItems' from Producto p inner join 
	ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo     
	group by p.nombre,p.idProducto,p.descripcion ,p.precio,cs.idProductoCombo
	having SUM(cs.cantidad) >= @desde and SUM(cs.cantidad) < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCombosCantidadMayor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCombosCantidadMayor]
	@cantidad money
AS
BEGIN
	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select p.nombre,p.idProducto,p.descripcion ,p.precio, SUM(cs.cantidad) as 'cantidadItems' from Producto p inner join 
	ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo     
	group by p.nombre,p.idProducto,p.descripcion ,p.precio,cs.idProductoCombo
	having SUM(cs.cantidad) > @cantidad
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCombosCantidadMenor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCombosCantidadMenor]
	@cantidad money
AS
BEGIN
	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select p.nombre,p.idProducto,p.descripcion ,p.precio, SUM(cs.cantidad) as 'cantidadItems' from Producto p inner join 
	ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo     
	group by p.nombre,p.idProducto,p.descripcion ,p.precio,cs.idProductoCombo
	having SUM(cs.cantidad) < @cantidad
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCombosPrecioEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCombosPrecioEntre]
	@desde money,
	@hasta money
AS
BEGIN
	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select p.nombre,p.idProducto,p.descripcion ,p.precio, SUM(cs.cantidad) as 'cantidadItems' from Producto p inner join 
	ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo
	where p.precio < @hasta and p.precio >= @desde
    group by p.nombre,p.idProducto,p.descripcion ,p.precio,cs.idProductoCombo
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCombosPrecioMayor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCombosPrecioMayor]
	@precio money
AS
BEGIN
	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select p.nombre,p.idProducto,p.descripcion ,p.precio, SUM(cs.cantidad) as 'cantidadItems' from Producto p inner join 
	ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo 
    where p.precio > @precio
	group by p.nombre,p.idProducto,p.descripcion ,p.precio,cs.idProductoCombo
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosCombosPrecioMenor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosCombosPrecioMenor]
	@precio money
AS
BEGIN
	
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select p.nombre,p.idProducto,p.descripcion ,p.precio, SUM(cs.cantidad) as 'cantidadItems' from Producto p inner join 
	ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo 
    where p.precio < @precio
	group by p.nombre,p.idProducto,p.descripcion ,p.precio,cs.idProductoCombo
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosDistribuidoras]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosDistribuidoras]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Distribuidora
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosEstados]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosEstados]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM Estado
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosFormatos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosFormatos]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Formato
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosFuncion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosFuncion]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select f.fechaHora, f.pelicula, p.titulo, f.sala, f.estado, f.fechaInicio, f.fechaFin, ps.nroSemana 
	from Funcion f 
	inner join Pelicula p on f.pelicula = p.codPelicula
	inner join ProgramacionSemanal ps on f.fechaInicio = ps.fechaInicio and f.fechaFin = ps.fechaFin
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosFuncionEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosFuncionEntre] 
	-- Add the parameters for the stored procedure here
	@desde Date,
	@hasta Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select f.fechaHora, f.pelicula, p.titulo, f.sala, f.estado, f.fechaInicio, f.fechaFin, ps.nroSemana 
	from Funcion f 
	inner join Pelicula p on f.pelicula = p.codPelicula
	inner join ProgramacionSemanal ps on f.fechaInicio = ps.fechaInicio and f.fechaFin = ps.fechaFin
	where f.fechaHora >= @desde and f.fechaHora < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosFuncionPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosFuncionPelicula] 
	-- Add the parameters for the stored procedure here
	@pelicula int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select f.fechaHora, f.pelicula, p.titulo, f.sala, f.estado, f.fechaInicio, f.fechaFin, ps.nroSemana 
	from Funcion f 
	inner join Pelicula p on f.pelicula = p.codPelicula
	inner join ProgramacionSemanal ps on f.fechaInicio = ps.fechaInicio and f.fechaFin = ps.fechaFin
	where f.pelicula = @pelicula
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosFuncionSala]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosFuncionSala] 
	-- Add the parameters for the stored procedure here
	@sala int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select f.fechaHora, f.pelicula, p.titulo, f.sala, f.estado, f.fechaInicio, f.fechaFin, ps.nroSemana 
	from Funcion f 
	inner join Pelicula p on f.pelicula = p.codPelicula
	inner join ProgramacionSemanal ps on f.fechaInicio = ps.fechaInicio and f.fechaFin = ps.fechaFin
	where f.sala = @sala
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosGeneros]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosGeneros]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Genero
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosIdiomas]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosIdiomas]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Idioma
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosOrigenes]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosOrigenes]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Origen
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosPeliculas]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosPeliculas]

AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Pelicula
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosProductos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosProductos]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT Producto.idProducto, Producto.nombre, Producto.descripcion, TipoProducto.nombreTipoProd, Producto.precio 
    FROM Producto JOIN TipoProducto ON Producto.tipoProducto = TipoProducto.idTipoProducto 
    where Producto.tipoProducto <> 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosProgramacionSemanal]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosProgramacionSemanal]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM ProgramacionSemanal
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosPromociones]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosPromociones]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM Promocion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteCombo]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteCombo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select SUM(cs.cantidad) as 'cantidad',p.nombre as 'nombre' 
	from Producto p
	INNER JOIN TipoProducto tp on p.tipoProducto = tp.idTipoProducto
	INNER JOIN ComposicionDeCombo cs on p.idProducto = cs.idProductoCombo 
	where p.tipoProducto = 1
	GROUP BY p.idProducto, p.nombre
	order by 1 DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteDescuento]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteDescuento]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select SUM(Entrada.precio_unitario) - Ticket.promocion as 'PrecioFinal',Ticket.promocion as'Descuento', Pelicula.titulo as 'titulo'
	from DetalleTicketEntrada 
	INNER JOIN Ticket on DetalleTicketEntrada.nroTicket = Ticket.nroTicket
	INNER JOIN Entrada on DetalleTicketEntrada.nroEntrada = Entrada.nroEntrada
	inner join Funcion on Entrada.fechaHoraFuncion = Funcion.fechaHora and Entrada.sala = Funcion.sala 
	INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
	group by Ticket.nroTicket, Ticket.promocion, Pelicula.titulo
	order by Descuento
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteDescuentoEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteDescuentoEntre]
	@fechaDesde date,
	@fechaHasta date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select SUM(Entrada.precio_unitario) - Ticket.promocion as 'PrecioFinal',Ticket.promocion as'Descuento', Pelicula.titulo as 'titulo'
	from DetalleTicketEntrada 
	INNER JOIN Ticket on DetalleTicketEntrada.nroTicket = Ticket.nroTicket
	INNER JOIN Entrada on DetalleTicketEntrada.nroEntrada = Entrada.nroEntrada
	inner join Funcion on Entrada.fechaHoraFuncion = Funcion.fechaHora and Entrada.sala = Funcion.sala 
	INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
	where Ticket.fechaHoraVenta > @fechaDesde and Ticket.fechaHoraVenta <= @fechaHasta
	group by Ticket.nroTicket, Ticket.promocion, Pelicula.titulo
	order by Descuento
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEmpleadoTipoDoc]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEmpleadoTipoDoc]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Count(TipoDocumento.idTipoDocumento) as 'cantidad', TipoDocumento.nombre as 'nombre'
	from Empleado
	INNER JOIN TipoDocumento on Empleado.tipoDocumento = TipoDocumento.idTipoDocumento
	group by TipoDocumento.idTipoDocumento,TipoDocumento.nombre
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEmpleadoVenta]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEmpleadoVenta]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select COUNT(Entrada.dniEmpleado) as 'cantidad', (Empleado.apellido + ' ' + Empleado.nombre) as 'nombre'
	from Entrada
	inner join Empleado on Entrada.dniEmpleado = Empleado.dni and Entrada.tipoDocEmpleado = Empleado.tipoDocumento
	group by dniEmpleado, Empleado.apellido,Empleado.nombre
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEmpleadoVentaEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEmpleadoVentaEntre]
	@fechaDesde date,
	@fechaHasta date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select COUNT(Entrada.dniEmpleado) as 'cantidad', (Empleado.apellido + ' ' + Empleado.nombre) as 'nombre'
	from Entrada
	inner join Empleado on Entrada.dniEmpleado = Empleado.dni and Entrada.tipoDocEmpleado = Empleado.tipoDocumento
	where Entrada.fechaHoraVenta > @fechaDesde and Entrada.fechaHoraVenta <= @fechahasta
	group by dniEmpleado, Empleado.apellido,Empleado.nombre
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEntradaEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEntradaEntre]
	@fechaDesde Date,
	@fechaHasta Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Pelicula.codPelicula) as 'cantidad', Pelicula.titulo as 'nombre' from Entrada
	INNER JOIN Funcion on Entrada.fechaHoraFuncion = Funcion.fechaHora and Entrada.sala = Funcion.sala
	INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
	where Entrada.fechaHoraVenta > @fechaDesde and Entrada.fechaHoraVenta <= @fechahasta
	GROUP BY Pelicula.codPelicula, Pelicula.titulo
	order by 1 DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEntradaMedioPago]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEntradaMedioPago]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(MedioPago.codMedioPago) as 'cantidad', MedioPago.nombre as 'nombre'
	from Ticket
	INNER JOIN MedioPago on Ticket.medioPago = MedioPago.codMedioPago
	INNER JOIN DetalleTicketEntrada on Ticket.nroTicket = DetalleTicketEntrada.nroTicket
	GROUP BY MedioPago.codMedioPago, MedioPago.nombre
	order by 1 DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEntradaPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEntradaPelicula]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Pelicula.codPelicula) as 'cantidad', Pelicula.titulo as 'nombre' from Entrada
	INNER JOIN Funcion on Entrada.fechaHoraFuncion = Funcion.fechaHora and Entrada.sala = Funcion.sala
	INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
	GROUP BY Pelicula.codPelicula, Pelicula.titulo
	order by 1 DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEntradaSala]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEntradaSala]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(sala) as 'cantidad', sala as 'nombre' from Entrada
group by sala
order by COUNT(sala) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteEntradaTarifa]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteEntradaTarifa]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Entrada.tarifa) as 'cantidad', Tarifa.descripcion as 'nombre'
	from Entrada
	inner join Tarifa on Entrada.tarifa = Tarifa.idTarifa
	GROUP BY Entrada.tarifa, Tarifa.descripcion
	order by 1 desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteFuncion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteFuncion]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(Genero.codGenero) as 'cantidad', Genero.descripcion as 'nombre'
	from Funcion 
	INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
	INNER JOIN Genero on Pelicula.genero = Genero.codGenero
	GROUP BY Genero.codGenero, Genero.descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteFuncionHoraAntes]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteFuncionHoraAntes]
	@fechaHora Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(Genero.codGenero) as 'cantidad', Genero.descripcion as 'nombre'
from Funcion 
INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
INNER JOIN Genero on Pelicula.genero = Genero.codGenero
where fechaHora < @fechaHora
GROUP BY Genero.codGenero, Genero.descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteFuncionHoraDespues]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteFuncionHoraDespues]
	@fechaHora Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(Genero.codGenero) as 'cantidad', Genero.descripcion as 'nombre'
from Funcion 
INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
INNER JOIN Genero on Pelicula.genero = Genero.codGenero
where fechaHora > @fechaHora
GROUP BY Genero.codGenero, Genero.descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteFuncionHoraEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteFuncionHoraEntre]
	@fechaHoraDesde Date,
	@fechaHoraHasta Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(Genero.codGenero) as 'cantidad', Genero.descripcion as 'nombre'
from Funcion 
INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
INNER JOIN Genero on Pelicula.genero = Genero.codGenero
where fechaHora > @fechaHoraDesde and fechaHora <= @fechaHoraHasta
GROUP BY Genero.codGenero, Genero.descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteFuncionPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteFuncionPelicula]
	@codPelicula int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(Funcion.sala) as 'cantidad', Funcion.sala as 'nombre'
	from Funcion 
	INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
	where Pelicula.codPelicula = @codPelicula
	GROUP BY Funcion.sala, Funcion.sala
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteFuncionSala]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteFuncionSala]
	@sala int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(Genero.codGenero) as 'cantidad', Genero.descripcion as 'nombre'
from Funcion 
INNER JOIN Pelicula on Funcion.pelicula = Pelicula.codPelicula
INNER JOIN Genero on Pelicula.genero = Genero.codGenero
where Funcion.sala = @sala
GROUP BY Genero.codGenero, Genero.descripcion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReportePeliculaCalificacion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReportePeliculaCalificacion]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Calificacion.codCalificacion) as 'cantidad', Calificacion.abreviatura as 'nombre'
	from Pelicula 
	INNER JOIN Calificacion on Pelicula.calificacion = Calificacion.codCalificacion
	group by Calificacion.codCalificacion, Calificacion.abreviatura
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReportePeliculaDistribuidora]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReportePeliculaDistribuidora]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Distribuidora.idDistribuidora) as 'cantidad', Distribuidora.nombreDistribuidora as 'nombre'
	from Pelicula 
	INNER JOIN Distribuidora on Pelicula.distribuidora = Distribuidora.idDistribuidora
	group by Distribuidora.idDistribuidora, Distribuidora.nombreDistribuidora
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReportePeliculaEstreno]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReportePeliculaEstreno]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Pelicula.añoEstreno) as 'cantidad', Pelicula.añoEstreno as 'nombre'
	from Pelicula
	GROUP BY Pelicula.añoEstreno, Pelicula.añoEstreno
	order by COUNT(Pelicula.añoEstreno) DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReportePeliculaOrigen]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReportePeliculaOrigen]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Origen.idOrigen) as 'cantidad', Origen.nombre as 'nombre'
	from Pelicula 
	INNER JOIN Origen on Pelicula.genero = Origen.idOrigen
	group by Origen.idOrigen, origen.nombre
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReportePromocion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReportePromocion]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Promocion.nombre) as 'cantidad', promocion.nombre as 'nombre'
	FROM Ticket
	INNER JOIN Promocion on Ticket.npromocion = Promocion.nombre
	group by Promocion.nombre,promocion.nombre
	order by 1 desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReportePromocionEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReportePromocionEntre]
	@fechaDesde date,
	@fechaHasta date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select COUNT(Promocion.nombre) as 'cantidad', promocion.nombre as 'nombre'
	FROM Ticket
	INNER JOIN Promocion on Ticket.npromocion = Promocion.nombre
	where Ticket.fechaHoraVenta > @fechaDesde and Ticket.fechaHoraVenta <= @fechaHasta
	group by Promocion.nombre,promocion.nombre
	order by 1 desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteVentaCombo]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteVentaCombo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select SUM(dt.cantidad) as 'cantidad',p.nombre as 'nombre' 
	from Producto p
	INNER JOIN TipoProducto tp on p.tipoProducto = tp.idTipoProducto
	INNER JOIN DetalleTicketCombo dt on p.idProducto = dt.nroCombo
	where p.tipoProducto = 1
	GROUP BY p.idProducto, p.nombre
	order by 1 DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosReporteVentaComboEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosReporteVentaComboEntre]
	@fechaDesde date,
	@fechahasta date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select SUM(dt.cantidad) as 'cantidad',p.nombre as 'nombre' 
	from Producto p
	INNER JOIN TipoProducto tp on p.tipoProducto = tp.idTipoProducto
	INNER JOIN DetalleTicketCombo dt on p.idProducto = dt.nroCombo
	INNER JOIN Ticket t on dt.nroTicket = t.nroTicket
	where p.tipoProducto = 1 and t.fechaHoraVenta > @fechaDesde and t.fechaHoraVenta <= @fechaHasta
	GROUP BY p.idProducto, p.nombre
	order by 1 DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosSalas]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosSalas]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM Sala
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosTarifas]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosTarifas]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT Tarifa.descripcion, Tarifa.valor, Formato.descripcion as 'descri' FROM Tarifa 
	INNER JOIN Formato ON Tarifa.codFormato = Formato.codFormato
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosTarifasFormato]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosTarifasFormato]
	@codFormato int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.idTarifa AS 'idTarifa',t.descripcion AS 'descripcion',f.descripcion AS 'formato',t.valor AS 'valor' 
	FROM Tarifa AS t JOIN Formato AS f ON(t.codFormato=f.codFormato) 
	WHERE t.codFormato = @codFormato
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosTiposDocumentos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosTiposDocumentos]

AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM TipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[GetDatosUsuarios]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDatosUsuarios]

AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select u.nombreUsuario, u.dni,t.nombre as 'tipoDoc', u.fechaAlta 
    from Usuario u INNER JOIN TipoDocumento t on u.tipoDocumento = t.idTipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[GetDescripcionFormatos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDescripcionFormatos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT descripcion FROM Formato
END
GO
/****** Object:  StoredProcedure [dbo].[GetDescripcionGeneros]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetDescripcionGeneros]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT descripcion from Genero
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetalleClientes]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetalleClientes]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select c.tipoDocumento as 'tipoDocumento', t.nombre as 'tipoDoc', c.dni, c.nombre, c.apellido, 
c.fechaNacimiento, c.email, c.telefono
from Cliente c
inner join TipoDocumento t on c.tipoDocumento = t.idTipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetalleEmpleados]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetalleEmpleados]

AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TipoDocumento.nombre as 'tipoDocumento',dni,TipoDocumento.idTipoDocumento as 'idTipoDocumento',Empleado.nombre, apellido, email, telefono  FROM Empleado 
    INNER JOIN TipoDocumento ON Empleado.tipoDocumento = TipoDocumento.idTipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetalleMediosPagos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetalleMediosPagos]
	
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT MedioPago.codMedioPago as 'Codigo', MedioPago.nombre as 'Nombre', 
    MedioPago.descripcion as 'Descripcion', MedioPago.tarjeta as 'Tarjeta', Tarjeta.nombre as 'Nombre Tarjeta' 
    FROM MedioPago INNER JOIN Tarjeta ON MedioPago.Tarjeta = Tarjeta.codTarjeta
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculas]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculas]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.codPelicula,p.titulo AS 'ptitulo',p.leyenda AS 'pleyenda',p.duracion,p.sinposis AS 'sinopsis',p.añoEstreno,o.nombre, c.abreviatura, f.descripcion AS 'fdescripcion', g.descripcion AS 'gdescripcion', d.nombreDistribuidora, i.descripcion AS 'idescripcion' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporte]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporte]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporteCalificacion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporteCalificacion]
	@calificacion int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
	where c.codCalificacion = @calificacion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporteDistribuidora]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporteDistribuidora]
	@distribuidora int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
	where d.idDistribuidora = @distribuidora
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporteFormato]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporteFormato]
	@formato int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
	where f.codFormato = @formato
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporteGenero]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporteGenero]
	@genero int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
	where g.codGenero = @genero
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporteIdioma]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporteIdioma]
	@idioma int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
	where i.codIdioma = @idioma
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporteOrigen]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporteOrigen]
	@origen int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
	where o.idOrigen = @origen
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePeliculasReporteTitulo]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePeliculasReporteTitulo]
	@titulo varchar(40)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.titulo AS 'titulo',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre as 'origen', c.abreviatura as 'calificacion', f.descripcion AS 'formato', g.descripcion AS 'genero', 
	d.nombreDistribuidora as 'distribuidora', i.descripcion AS 'idioma' 
	FROM Pelicula AS p 
    JOIN Origen AS o ON(o.idOrigen= p.origen) 
    JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
    JOIN Formato AS f ON(f.codFormato = p.formato) 
    JOIN Genero AS g ON(g.codGenero = p.genero) 
    JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
    JOIN Idioma AS i ON(i.codIdioma = p.idioma)
	where p.titulo LIKE @titulo + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetallePromocion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetallePromocion]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nombre, descripcion, valor FROM Promocion
END
GO
/****** Object:  StoredProcedure [dbo].[GetDetalleTarjeta]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetalleTarjeta]

AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT Tarjeta.codTarjeta as 'Codigo', Tarjeta.nombre as 'Nombre', 
    Tarjeta.descripcion as 'Descripcion', Banco.nombreBanco as 'NombreBanco' 
    FROM Tarjeta INNER JOIN Banco ON Tarjeta.Banco = Banco.idBanco
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmpleadoPorApellido]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmpleadoPorApellido]
	@letra varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

    select * from Empleado where apellido like @letra + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmpleadoPorNombre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmpleadoPorNombre]
	@letra varchar(20)
AS
BEGIN
	SET NOCOUNT ON;

    select * from Empleado where nombre like @letra + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[GetEntradasFromTicket]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetEntradasFromTicket]
	@nroTicket int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select d.orden,e.numeroFila, e.letraColumna, t.descripcion, e.precio_unitario as 'Precio' from Entrada e
	inner join DetalleTicketEntrada d on e.nroEntrada = d.nroEntrada and d.nroTicket = @nroTicket
	INNER JOIN Tarifa t ON e.tarifa = t.idTarifa 
	order by orden
END
GO
/****** Object:  StoredProcedure [dbo].[GetEntradasReporte]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEntradasReporte] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select fechaHoraVenta, fechaHoraFuncion, sala, tarifa.descripcion,precio_unitario 
	from Entrada
	inner join Tarifa on Entrada.tarifa = Tarifa.idTarifa
END
GO
/****** Object:  StoredProcedure [dbo].[GetEntradasReporteFechaEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEntradasReporteFechaEntre] 
	-- Add the parameters for the stored procedure here
	@desde Date,
	@hasta Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select fechaHoraVenta, fechaHoraFuncion, sala, tarifa.descripcion,precio_unitario 
	from Entrada
	inner join Tarifa on Entrada.tarifa = Tarifa.idTarifa
	where fechaHoraVenta >= @desde and fechaHoraVenta < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetEntradasReportePrecioEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEntradasReportePrecioEntre] 
	-- Add the parameters for the stored procedure here
	@desde money,
	@hasta money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select fechaHoraVenta, fechaHoraFuncion, sala, tarifa.descripcion,precio_unitario 
	from Entrada
	inner join Tarifa on Entrada.tarifa = Tarifa.idTarifa
	where Entrada.precio_unitario >= @desde and precio_unitario < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetEntradasReportePrecioMayor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEntradasReportePrecioMayor] 
	-- Add the parameters for the stored procedure here
	@desde money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select fechaHoraVenta, fechaHoraFuncion, sala, tarifa.descripcion,precio_unitario 
	from Entrada
	inner join Tarifa on Entrada.tarifa = Tarifa.idTarifa
	where Entrada.precio_unitario > @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetEntradasReportePrecioMenor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEntradasReportePrecioMenor] 
	-- Add the parameters for the stored procedure here
	@desde money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select fechaHoraVenta, fechaHoraFuncion, sala, tarifa.descripcion,precio_unitario 
	from Entrada
	inner join Tarifa on Entrada.tarifa = Tarifa.idTarifa
	where Entrada.precio_unitario < @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetFormatoPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFormatoPelicula]
	@codPelicula int	
AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Pelicula.formato from Pelicula where codPelicula = @codPelicula
END
GO
/****** Object:  StoredProcedure [dbo].[GetFuncionesDisponibles]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFuncionesDisponibles]
	@codPelicula int
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select fechaHora, sala, estado from Funcion where pelicula = @codPelicula and fechaInicio <= GETDATE() and fechaFin >= GETDATE() 
END
GO
/****** Object:  StoredProcedure [dbo].[GetInfoCombos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetInfoCombos] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select nombre, idProducto, precio from Producto where tipoProducto = 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreBancos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreBancos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nombreBanco from Banco 
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreCalificacion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreCalificacion]
	-- Add the parameters for the stored procedure here
	@codCalificacion int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select abreviatura from Calificacion where codCalificacion = @codCalificacion
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreDistribuidora]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreDistribuidora]
	-- Add the parameters for the stored procedure here
	@idDistribuidora int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select nombreDistribuidora from Distribuidora where idDistribuidora = @idDistribuidora
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreDistribuidoras]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreDistribuidoras]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nombreDistribuidora FROM Distribuidora
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreFormato]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreFormato]
	-- Add the parameters for the stored procedure here
	@codFormato int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select descripcion from Formato where codFormato = @codFormato
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreGenero]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreGenero]
	-- Add the parameters for the stored procedure here
	@codGenero int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select descripcion from Genero where codGenero = @codGenero
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreIdioma]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreIdioma]
	-- Add the parameters for the stored procedure here
	@codIdioma int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select descripcion from Idioma where codIdioma = @codIdioma
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreOrigen]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreOrigen]
	@idOrigen int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select nombre from Origen where idOrigen = @idOrigen
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreOrigenes]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetNombreOrigenes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nombre from Origen
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreRoles]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreRoles]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nombreRol FROM Rol
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreTipoProductos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreTipoProductos]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT nombreTipoProd FROM TipoProducto
END
GO
/****** Object:  StoredProcedure [dbo].[GetNombreTiposDocumentos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNombreTiposDocumentos]

AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT nombre FROM TipoDocumento
END
GO
/****** Object:  StoredProcedure [dbo].[GetNumeroTicket]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNumeroTicket] 
	@fechaHora DateTime,
	@medioPago int,
	@dniEmpleado int,
	@tipoDocEmpleado int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select nroTicket from Ticket where fechaHoraVenta = @fechaHora and medioPago = @medioPago and dniEmpleado = @dniEmpleado and tipoDocEmpleado = @tipoDocEmpleado
END
GO
/****** Object:  StoredProcedure [dbo].[GetPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPelicula]
	@codPelicula int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Pelicula WHERE codPelicula LIKE @codPelicula
END
GO
/****** Object:  StoredProcedure [dbo].[GetPeliculasDisponibles]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPeliculasDisponibles]
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT DISTINCT p.codPelicula,p.formato,p.titulo AS 'ptitulo',p.leyenda AS 'pleyenda',p.duracion,p.sinposis AS 'sinopsis',
	p.añoEstreno,o.nombre, c.abreviatura, f.descripcion AS 'fdescripcion', g.descripcion AS 'gdescripcion', 
	d.nombreDistribuidora, i.descripcion AS 'idescripcion'
	FROM Pelicula AS p 
	JOIN Origen AS o ON(o.idOrigen= p.origen) 
	JOIN Calificacion AS c ON(c.codCalificacion = p.calificacion) 
	JOIN Formato AS f ON(f.codFormato = p.formato) 
	JOIN Genero AS g ON(g.codGenero = p.genero) 
	JOIN Distribuidora AS d ON(d.idDistribuidora = p.distribuidora) 
	JOIN Idioma AS i ON(i.codIdioma = p.idioma) 
	INNER JOIN Funcion fu ON (p.codPelicula = fu.pelicula)
	where fu.fechaInicio <= GETDATE() and fu.fechaFin >= GETDATE() 
END
GO
/****** Object:  StoredProcedure [dbo].[GetProducto]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProducto]
	@idProducto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM Producto WHERE idProducto LIKE @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductoPorTipoProducto]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductoPorTipoProducto] 
	-- Add the parameters for the stored procedure here
	@tipoProd int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Producto.nombre, Producto.descripcion, Producto.precio, TipoProducto.nombreTipoProd as 'prod' from Producto 
	INNER JOIN TipoProducto ON Producto.tipoProducto = TipoProducto.idTipoProducto
	where tipoProducto = @tipoProd
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosPorNombre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosPorNombre]
	@nombre varchar(40)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Producto.nombre, Producto.descripcion, Producto.precio, TipoProducto.nombreTipoProd as 'prod' from Producto 
	INNER JOIN TipoProducto ON Producto.tipoProducto = TipoProducto.idTipoProducto
	where nombre Like @nombre + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosPorPrecioEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosPorPrecioEntre]
	@desde money,
	@hasta money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Producto.nombre, Producto.descripcion, Producto.precio, TipoProducto.nombreTipoProd as 'prod' from Producto 
	INNER JOIN TipoProducto ON Producto.tipoProducto = TipoProducto.idTipoProducto
	where precio >= @desde and precio < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosPorPrecioMayorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosPorPrecioMayorQue]
	@desde money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Producto.nombre, Producto.descripcion, Producto.precio, TipoProducto.nombreTipoProd as 'prod' from Producto 
	INNER JOIN TipoProducto ON Producto.tipoProducto = TipoProducto.idTipoProducto
	where precio > @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosPorPrecioMenorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosPorPrecioMenorQue]
	@desde money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select Producto.nombre, Producto.descripcion, Producto.precio, TipoProducto.nombreTipoProd as 'prod' from Producto 
	INNER JOIN TipoProducto ON Producto.tipoProducto = TipoProducto.idTipoProducto
	where precio < @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosTipoCantidad]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosTipoCantidad]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(tipoProducto) as 'cantidad', tipoProducto.nombreTipoProd as 'nombre' from Producto
	INNER JOIN TipoProducto on Producto.tipoProducto = TipoProducto.idTipoProducto
	group by tipoProducto, nombreTipoProd
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosTipoCantidadPrecioEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosTipoCantidadPrecioEntre]
	@desde money,
	@hasta money
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(tipoProducto) as 'cantidad', tipoProducto.nombreTipoProd as 'nombre' from Producto
	INNER JOIN TipoProducto on Producto.tipoProducto = TipoProducto.idTipoProducto
	where Producto.precio > @desde and Producto.precio <= @hasta
	group by tipoProducto, nombreTipoProd
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosTipoCantidadPrecioMayorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosTipoCantidadPrecioMayorQue]
	@precio money
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(tipoProducto) as 'cantidad', tipoProducto.nombreTipoProd as 'nombre' from Producto
	INNER JOIN TipoProducto on Producto.tipoProducto = TipoProducto.idTipoProducto
	where Producto.precio > @precio
	group by tipoProducto, nombreTipoProd
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductosTipoCantidadPrecioMenorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductosTipoCantidadPrecioMenorQue]
	@precio money
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select count(tipoProducto) as 'cantidad', tipoProducto.nombreTipoProd as 'nombre' from Producto
	INNER JOIN TipoProducto on Producto.tipoProducto = TipoProducto.idTipoProducto
	where Producto.precio < @precio
	group by tipoProducto, nombreTipoProd
END
GO
/****** Object:  StoredProcedure [dbo].[GetPromocionNombre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPromocionNombre]
	@nombre varchar(49)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Promocion where nombre LIKE @nombre + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[GetPromocionPrecioEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPromocionPrecioEntre]
	@desde money,
	@hasta money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Promocion where valor >= @desde and valor < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetPromocionPrecioMayorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPromocionPrecioMayorQue]
	@valor money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Promocion where valor > @valor
END
GO
/****** Object:  StoredProcedure [dbo].[GetPromocionPrecioMenorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPromocionPrecioMenorQue]
	@valor money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Promocion where valor < @valor
END
GO
/****** Object:  StoredProcedure [dbo].[GetPromocionVigencia]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPromocionVigencia]
	@desde Date,
	@hasta Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Promocion where fechaInicio <= @desde and fechaFin >= @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetSalaFromTicket]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetSalaFromTicket]
	@nroTicket int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	select top 1 e.sala from Entrada e 
	inner join DetalleTicketEntrada d on e.nroEntrada = d.nroEntrada and d.nroTicket = @nroTicket
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarifasPorFormato]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarifasPorFormato]
	@formato int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.idTarifa AS 'idTarifa',t.descripcion AS 'descripcion',f.descripcion AS 'formato',t.valor AS 'valor' 
	FROM Tarifa AS t JOIN Formato AS f ON(t.codFormato=f.codFormato) 
	where f.codFormato = @formato
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarifasPorNombre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarifasPorNombre] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.idTarifa AS 'idTarifa',t.descripcion AS 'descripcion',f.descripcion AS 'formato',t.valor AS 'valor' 
	FROM Tarifa AS t JOIN Formato AS f ON(t.codFormato=f.codFormato) 
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarifasPorPrecioEntre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarifasPorPrecioEntre] 
	-- Add the parameters for the stored procedure here
	@desde money,
	@hasta money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Tarifa where valor >= @desde and valor < @hasta
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarifasPorPrecioMayorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarifasPorPrecioMayorQue] 
	-- Add the parameters for the stored procedure here
	@desde money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Tarifa where valor > @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarifasPorPrecioMenorQue]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarifasPorPrecioMenorQue] 
	-- Add the parameters for the stored procedure here
	@desde money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Tarifa where valor < @desde
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarjetaReporte]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarjetaReporte]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select t.nombre as 'tarjeta', b.nombreBanco as 'banco' from Tarjeta t inner join Banco b on t.banco = b.idBanco
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarjetaReporteBanco]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarjetaReporteBanco]
@banco int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select t.nombre as 'tarjeta', b.nombreBanco as 'banco' from Tarjeta t inner join Banco b on t.banco = b.idBanco
	where t.banco = @banco
END
GO
/****** Object:  StoredProcedure [dbo].[GetTarjetaReporteNombre]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarjetaReporteNombre]
@nombre varchar(40)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select t.nombre as 'tarjeta', b.nombreBanco as 'banco' from Tarjeta t inner join Banco b on t.banco = b.idBanco
	where t.nombre LIKE @nombre + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[GetTicketsFromEntradas]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[GetTicketsFromEntradas]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
select t.nroTicket, t.fechaHoraVenta,m.codMedioPago ,m.nombre ,SUM(en.precio_unitario) as 'Precio', e.apellido, 
e.nombre as 'enombre' ,t.npromocion as 'promo',t.promocion as 'preciopromo'
	FROM Ticket t 
	INNER JOIN MedioPago m ON t.medioPago = m.codMedioPago
	INNER JOIN Empleado e ON t.dniEmpleado = e.dni and t.tipoDocEmpleado = e.tipoDocumento
	INNER JOIN DetalleTicketEntrada dte on t.nroTicket = dte.nroTicket
	INNER JOIN Entrada en on dte.nroEntrada = en.nroEntrada	
	where t.nroTicket in (select nroTicket from DetalleTicketEntrada)
	group by t.nroTicket, t.fechaHoraVenta,m.codMedioPago ,m.nombre , en.precio_unitario, e.apellido, e.nombre, t.npromocion,t.promocion
END
GO
/****** Object:  StoredProcedure [dbo].[GetTiposProductosNoCombo]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTiposProductosNoCombo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM TipoProducto where TipoProducto.idTipoProducto <> 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetTodosDatosProductos]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTodosDatosProductos]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Producto.nombre, Producto.descripcion, Producto.precio, TipoProducto.nombreTipoProd as 'prod' 
    FROM Producto JOIN TipoProducto ON Producto.tipoProducto = TipoProducto.idTipoProducto 
END
GO
/****** Object:  StoredProcedure [dbo].[InsertActor]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertActor]
	@nombre varchar(50),
	@apellido varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Actor (nombre, apellido) VALUES (@nombre, @apellido)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarUltimoMomento]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarUltimoMomento] 
	@fechaHora DateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	insert into Entrada (fechaHoraVenta, fechaHoraFuncion, sala, numeroFila, letraColumna, tarifa, promocion) values
	(GETDATE(), @fechaHora, 1,1,'A',7,1)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertCliente]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertCliente]
	@dni int,
	@tipoDocumento int,
	@nombre varchar(50),
	@apellido varchar(50),
	@fechaNacimiento date,
	@email varchar(60),
	@telefono varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Cliente (dni, tipoDocumento, nombre, apellido, fechaNacimiento, email, telefono)
    VALUES (@dni,@tipoDocumento,@nombre, @apellido, @fechaNacimiento, @email, @telefono)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDetalleTicketCombo]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDetalleTicketCombo] 
	@orden int,
	@nroTicket int,
	@nroCombo int,
	@cantidad int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO DetalleTicketCombo (orden, nroTicket, nroCombo, cantidad) VALUES
	(@orden, @nroTicket, @nroCombo, @cantidad)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDetalleTicketEntrada]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDetalleTicketEntrada]
	@orden int,
	@nroTicket int,
	@nroEntrada int
AS
BEGIN	
	SET NOCOUNT ON;
    
	INSERT INTO DetalleTicketEntrada(orden, nroTicket, nroEntrada) VALUES (@orden,@nroTicket,@nroEntrada)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertEmpleado]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertEmpleado]
	@dni int,
	@tipoDocumento int,
	@nombre varchar(50),
	@apellido varchar(50),
	@email varchar(60),
	@telefono varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO Empleado (dni, tipoDocumento, nombre, apellido, email, telefono) 
    VALUES (@dni,@tipoDocumento,@nombre, @apellido, @email, @telefono)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertEntrada]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertEntrada]
	@fechaHoraVenta DateTime,
	@fechaHoraFuncion DateTime,
	@sala int,
	@numeroFila int,
	@letraColumna char,
	@tarifa int,	
	@dniEmpleado int,
	@tipoDocEmpleado int,
	@precioUnitario float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Entrada (fechaHoraVenta, fechaHoraFuncion, sala, numeroFila, letraColumna, tarifa, dniEmpleado, tipoDocEmpleado,precio_unitario)
	VALUES (@fechaHoraVenta, @fechaHoraFuncion, @sala,@numeroFila,@letraColumna,@tarifa, @dniEmpleado, @tipoDocEmpleado, @precioUnitario) 
END
GO
/****** Object:  StoredProcedure [dbo].[InsertFuncion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertFuncion] 
	@fechaHora DateTime,
	@sala int,
	@pelicula int,
	@estado varchar(20),
	@fechaInicio DateTime,
	@fechaFin DateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Funcion (fechaHora, sala, pelicula, estado, fechaInicio, fechaFin) 
    VALUES (@fechaHora, @sala, @pelicula, @estado, @fechaInicio, @fechaFin)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPelicula]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPelicula]
	@titulo varchar(50),
	@leyenda varchar(50),
	@duracion varchar(50),
	@sinopsis varchar(250),
	@origen int,
	@calificacion int,
	@formato int,
	@genero int,
	@distribuidora int,
	@idioma int,
	@añoEstreno int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Pelicula (titulo, leyenda, duracion, sinposis, añoEstreno, 
    origen, calificacion, formato, genero, distribuidora, idioma) VALUES 
    (@titulo, @leyenda, @duracion, @sinopsis, @añoEstreno, @origen, @calificacion, @formato, @genero, @distribuidora, @idioma)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertProducto]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertProducto]
	@nombre varchar(50), 
	@descripcion varchar(120), 
	@tipoProducto int, 
	@precio money
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO Producto (nombre, descripcion, tipoProducto, precio) VALUES (@nombre, @descripcion, @tipoProducto, @precio)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPromocion]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPromocion]
@nombre varchar(50), 
@descripcion varchar(120), 
@valor money, 
@fechaInicio date, 
@fechaFin date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO Promocion (nombre,descripcion,valor, fechaInicio, fechaFin)
    VALUES (@nombre, @descripcion, @valor, @fechaInicio, @fechaFin)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertTarjeta]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTarjeta]
	@nombre varchar(50),
	@descripcion varchar(120),
	@banco int
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO Tarjeta (nombre,descripcion,banco)
    VALUES (@nombre, @descripcion, @banco)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertTicket]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTicket] 
	@fechaHora DateTime,
	@medioPago int,
	@dniEmpleado int,
	@tipoDocEmpleado int,
	@promocion money,
	@npromocion varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Ticket (fechaHoraVenta, medioPago, dniEmpleado, tipoDocEmpleado, promocion, npromocion) VALUES 
	(@fechaHora, @medioPago, @dniEmpleado, @tipoDocEmpleado, @promocion, @npromocion)
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerUltimoNroEntrada]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerUltimoNroEntrada]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select max(nroEntrada) as 'nroEntrada' from Entrada
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerUltimoNroTicket]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerUltimoNroTicket] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT MAX(nroTicket) as 'nroTicket' from Ticket
END
GO
/****** Object:  StoredProcedure [dbo].[RegistrarMedioPago]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegistrarMedioPago]
	@nombre varchar(50),
	@descripcion varchar(120),
	@tarjeta int
AS
BEGIN
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	INSERT INTO MedioPago (nombre,descripcion,tarjeta) 
    VALUES (@nombre, @descripcion, @tarjeta)
END
GO
/****** Object:  StoredProcedure [dbo].[ValidarUsuario]    Script Date: 15/11/2022 15:06:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidarUsuario] 
	@nombreUsuario varchar(50),
	@contraseña varchar(40)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Usuario WHERE nombreUsuario like @nombreUsuario and contraseña like @contraseña
END
GO
