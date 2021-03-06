USE [master]
GO
/****** Object:  Database [PlataformasDeDesarrollo]    Script Date: 26/10/2021 06:06:23 ******/
CREATE DATABASE [PlataformasDeDesarrollo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlataformasDeDesarrollo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PlataformasDeDesarrollo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PlataformasDeDesarrollo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PlataformasDeDesarrollo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlataformasDeDesarrollo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET RECOVERY FULL 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET  MULTI_USER 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PlataformasDeDesarrollo', N'ON'
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET QUERY_STORE = OFF
GO
USE [PlataformasDeDesarrollo]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 26/10/2021 06:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro](
	[idCarro] [smallint] IDENTITY(1,1) NOT NULL,
	[idUsuario] [smallint] NOT NULL,
 CONSTRAINT [PK_Carro] PRIMARY KEY CLUSTERED 
(
	[idCarro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carro_producto]    Script Date: 26/10/2021 06:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carro_producto](
	[idCarroProducto] [smallint] IDENTITY(1,1) NOT NULL,
	[idCarro] [smallint] NOT NULL,
	[idProducto] [smallint] NOT NULL,
	[cantidad] [tinyint] NOT NULL,
 CONSTRAINT [PK_carro_producto] PRIMARY KEY CLUSTERED 
(
	[idCarroProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 26/10/2021 06:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 26/10/2021 06:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[idCompra] [smallint] IDENTITY(1,1) NOT NULL,
	[idUsuario] [smallint] NOT NULL,
	[total] [int] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compra_producto]    Script Date: 26/10/2021 06:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra_producto](
	[idCompraProducto] [smallint] IDENTITY(1,1) NOT NULL,
	[idCompra] [smallint] NOT NULL,
	[idProducto] [smallint] NOT NULL,
	[cantidad] [tinyint] NOT NULL,
 CONSTRAINT [PK_compra_producto] PRIMARY KEY CLUSTERED 
(
	[idCompraProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 26/10/2021 06:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [smallint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio] [decimal](8, 2) NOT NULL,
	[cantidad] [int] NOT NULL,
	[idCategoria] [smallint] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 26/10/2021 06:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [smallint] IDENTITY(1,1) NOT NULL,
	[dni] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[cuitCuil] [int] NOT NULL,
	[rol] [tinyint] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carro] ON 

INSERT [dbo].[Carro] ([idCarro], [idUsuario]) VALUES (1, 1)
INSERT [dbo].[Carro] ([idCarro], [idUsuario]) VALUES (2, 2)
INSERT [dbo].[Carro] ([idCarro], [idUsuario]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[Carro] OFF
GO
SET IDENTITY_INSERT [dbo].[carro_producto] ON 

INSERT [dbo].[carro_producto] ([idCarroProducto], [idCarro], [idProducto], [cantidad]) VALUES (25, 2, 47, 2)
SET IDENTITY_INSERT [dbo].[carro_producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (1, N'Comida')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (2, N'Bebida')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (3, N'Ropa')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (4, N'Articulos de limpieza')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (5, N'Electrodomesticos')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (6, N'Informatica')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (7, N'Herramientas')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (8, N'Electronica')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (9, N'Mascotas')
INSERT [dbo].[Categoria] ([idCategoria], [nombre]) VALUES (10, N'Libreria')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Compra] ON 

INSERT [dbo].[Compra] ([idCompra], [idUsuario], [total]) VALUES (6, 2, 723)
SET IDENTITY_INSERT [dbo].[Compra] OFF
GO
SET IDENTITY_INSERT [dbo].[compra_producto] ON 

INSERT [dbo].[compra_producto] ([idCompraProducto], [idCompra], [idProducto], [cantidad]) VALUES (5, 6, 20, 3)
SET IDENTITY_INSERT [dbo].[compra_producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (1, N'Gaseosa', CAST(125.00 AS Decimal(8, 2)), 100, 2)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (2, N'Cerveza', CAST(120.00 AS Decimal(8, 2)), 50, 2)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (3, N'Agua', CAST(78.00 AS Decimal(8, 2)), 100, 2)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (4, N'Papas', CAST(250.00 AS Decimal(8, 2)), 100, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (5, N'Palitos', CAST(126.00 AS Decimal(8, 2)), 100, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (6, N'Chizitos', CAST(138.00 AS Decimal(8, 2)), 100, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (7, N'TV', CAST(80000.00 AS Decimal(8, 2)), 150, 8)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (8, N'PC', CAST(60000.00 AS Decimal(8, 2)), 30, 6)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (9, N'Pantalon Deportivo', CAST(6500.00 AS Decimal(8, 2)), 50, 3)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (10, N'Camiseta Deportiva', CAST(6500.00 AS Decimal(8, 2)), 50, 3)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (11, N'Lavandina', CAST(49.00 AS Decimal(8, 2)), 50, 4)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (12, N'Escoba', CAST(340.00 AS Decimal(8, 2)), 50, 4)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (13, N'Mouse', CAST(1500.00 AS Decimal(8, 2)), 20, 6)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (14, N'Teclado', CAST(3500.00 AS Decimal(8, 2)), 20, 6)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (15, N'Monitor', CAST(28000.00 AS Decimal(8, 2)), 20, 6)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (16, N'Notebook', CAST(95000.00 AS Decimal(8, 2)), 20, 6)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (17, N'Leche', CAST(95.00 AS Decimal(8, 2)), 100, 2)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (18, N'Energizante', CAST(108.00 AS Decimal(8, 2)), 100, 2)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (19, N'Mani', CAST(121.00 AS Decimal(8, 2)), 100, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (20, N'Nachos', CAST(241.00 AS Decimal(8, 2)), 100, 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (21, N'Campera', CAST(6000.00 AS Decimal(8, 2)), 50, 3)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (22, N'Sweater', CAST(3000.00 AS Decimal(8, 2)), 50, 3)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (23, N'Jean', CAST(2000.00 AS Decimal(8, 2)), 50, 3)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (24, N'Detergente', CAST(87.00 AS Decimal(8, 2)), 50, 4)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (25, N'Pala', CAST(300.00 AS Decimal(8, 2)), 50, 4)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (26, N'Secador', CAST(800.00 AS Decimal(8, 2)), 50, 4)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (27, N'Heladera', CAST(83000.00 AS Decimal(8, 2)), 20, 5)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (28, N'Lavarropa', CAST(78000.00 AS Decimal(8, 2)), 20, 5)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (29, N'Cocina', CAST(50000.00 AS Decimal(8, 2)), 20, 5)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (30, N'Microondas', CAST(25000.00 AS Decimal(8, 2)), 20, 5)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (31, N'Licuadora', CAST(6000.00 AS Decimal(8, 2)), 20, 5)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (32, N'Taladro', CAST(15000.00 AS Decimal(8, 2)), 150, 7)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (33, N'Amoladora', CAST(7000.00 AS Decimal(8, 2)), 150, 7)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (34, N'Soldadora', CAST(20000.00 AS Decimal(8, 2)), 150, 7)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (35, N'Sierra', CAST(8000.00 AS Decimal(8, 2)), 150, 7)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (36, N'Hidrolavadora', CAST(7000.00 AS Decimal(8, 2)), 150, 7)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (37, N'Parlantes', CAST(10000.00 AS Decimal(8, 2)), 150, 8)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (38, N'Auriculares', CAST(4500.00 AS Decimal(8, 2)), 150, 8)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (39, N'Celular', CAST(50000.00 AS Decimal(8, 2)), 150, 8)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (40, N'Proyector', CAST(45000.00 AS Decimal(8, 2)), 150, 8)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (41, N'Alimento para Perros', CAST(282.00 AS Decimal(8, 2)), 200, 9)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (42, N'Alimento para Gatos', CAST(144.00 AS Decimal(8, 2)), 200, 9)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (43, N'Cuchas', CAST(3000.00 AS Decimal(8, 2)), 200, 9)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (44, N'Correas', CAST(1200.00 AS Decimal(8, 2)), 200, 9)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (45, N'Juguetes', CAST(600.00 AS Decimal(8, 2)), 200, 9)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (46, N'Cuaderno', CAST(250.00 AS Decimal(8, 2)), 200, 10)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (47, N'Marcadores', CAST(1200.00 AS Decimal(8, 2)), 200, 10)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (48, N'Calculadora', CAST(1500.00 AS Decimal(8, 2)), 200, 10)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (49, N'Resma', CAST(700.00 AS Decimal(8, 2)), 200, 10)
INSERT [dbo].[Producto] ([idProducto], [nombre], [precio], [cantidad], [idCategoria]) VALUES (50, N'Tablero dibujo', CAST(3000.00 AS Decimal(8, 2)), 200, 10)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [dni], [nombre], [apellido], [mail], [password], [cuitCuil], [rol]) VALUES (1, 123456, N'Admin', N'Admin', N'admin@gmail.com', N'123456', 34865218, 1)
INSERT [dbo].[Usuario] ([idUsuario], [dni], [nombre], [apellido], [mail], [password], [cuitCuil], [rol]) VALUES (2, 654321, N'Pepito', N'Lopez', N'pepitolopez@gmail.com', N'654321', 25689475, 2)
INSERT [dbo].[Usuario] ([idUsuario], [dni], [nombre], [apellido], [mail], [password], [cuitCuil], [rol]) VALUES (3, 32154869, N'José', N'Perez', N'joseperez@hotmail.com', N'123456', 20321548, 3)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD  CONSTRAINT [FK_Carro_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Carro] CHECK CONSTRAINT [FK_Carro_Usuario]
GO
ALTER TABLE [dbo].[carro_producto]  WITH CHECK ADD  CONSTRAINT [FK_carro_producto_Carro1] FOREIGN KEY([idCarro])
REFERENCES [dbo].[Carro] ([idCarro])
GO
ALTER TABLE [dbo].[carro_producto] CHECK CONSTRAINT [FK_carro_producto_Carro1]
GO
ALTER TABLE [dbo].[carro_producto]  WITH CHECK ADD  CONSTRAINT [FK_carro_producto_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[carro_producto] CHECK CONSTRAINT [FK_carro_producto_Producto]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Usuario]
GO
ALTER TABLE [dbo].[compra_producto]  WITH CHECK ADD  CONSTRAINT [FK_compra_producto_Compra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[Compra] ([idCompra])
GO
ALTER TABLE [dbo].[compra_producto] CHECK CONSTRAINT [FK_compra_producto_Compra]
GO
ALTER TABLE [dbo].[compra_producto]  WITH CHECK ADD  CONSTRAINT [FK_compra_producto_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[compra_producto] CHECK CONSTRAINT [FK_compra_producto_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
USE [master]
GO
ALTER DATABASE [PlataformasDeDesarrollo] SET  READ_WRITE 
GO
