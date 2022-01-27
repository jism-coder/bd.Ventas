USE [Ventas]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 27/01/2022 10:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[PK_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Mesa] [nvarchar](50) NULL,
	[Silla] [nvarchar](50) NULL,
	[Sala] [nvarchar](50) NULL,
	[Horno] [nvarchar](50) NULL,
	[Estufa] [nvarchar](50) NULL,
	[Precio] [nchar](10) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[PK_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Total]    Script Date: 27/01/2022 10:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Total](
	[PK_Total] [int] IDENTITY(1,1) NOT NULL,
	[PK_Usuario] [int] NULL,
	[PK_Producto] [int] NULL,
	[PK_Ventas] [int] NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_Total] PRIMARY KEY CLUSTERED 
(
	[PK_Total] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/01/2022 10:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[PK_Usuarios] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido_Paterno] [nvarchar](50) NULL,
	[Apellido_Materno] [nvarchar](50) NULL,
	[Direccion] [nvarchar](200) NULL,
	[Telefono] [numeric](18, 0) NULL,
	[RFC] [nvarchar](11) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[PK_Usuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 27/01/2022 10:40:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[PK_Ventas] [int] IDENTITY(1,1) NOT NULL,
	[Efectivo] [numeric](18, 0) NULL,
	[Tarjeta] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[PK_Ventas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Total]  WITH CHECK ADD  CONSTRAINT [FK_Total_Total] FOREIGN KEY([PK_Total])
REFERENCES [dbo].[Total] ([PK_Total])
GO
ALTER TABLE [dbo].[Total] CHECK CONSTRAINT [FK_Total_Total]
GO
