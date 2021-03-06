USE [master]
GO
/****** Object:  Database [SuperMercado1]    Script Date: 07/05/2019 11:35:57 a.m. ******/
CREATE DATABASE [SuperMercado1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SuperMercado1', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SuperMercado1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SuperMercado1_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SuperMercado1_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SuperMercado1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuperMercado1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuperMercado1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SuperMercado1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SuperMercado1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SuperMercado1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SuperMercado1] SET ARITHABORT OFF 
GO
ALTER DATABASE [SuperMercado1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SuperMercado1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SuperMercado1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SuperMercado1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SuperMercado1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SuperMercado1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SuperMercado1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SuperMercado1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SuperMercado1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SuperMercado1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SuperMercado1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SuperMercado1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SuperMercado1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SuperMercado1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SuperMercado1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SuperMercado1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SuperMercado1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SuperMercado1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SuperMercado1] SET  MULTI_USER 
GO
ALTER DATABASE [SuperMercado1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SuperMercado1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SuperMercado1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SuperMercado1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SuperMercado1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SuperMercado1]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[codBit] [int] IDENTITY(1,1) NOT NULL,
	[nombreIncidenteBit] [nvarchar](50) NULL,
	[fechaIncidenteBit] [date] NULL,
	[codUsu] [int] NOT NULL,
	[codEnti] [int] NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[codBit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bodega]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bodega](
	[codBodega] [int] IDENTITY(1,1) NOT NULL,
	[codSuc] [int] NULL,
	[descripBod] [nvarchar](75) NULL,
 CONSTRAINT [PK_Bodega] PRIMARY KEY CLUSTERED 
(
	[codBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Caja]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[codCaja] [int] IDENTITY(1,1) NOT NULL,
	[numReg] [int] NULL,
	[codCapH] [int] NULL,
	[codSuc] [int] NULL,
 CONSTRAINT [PK_Caja] PRIMARY KEY CLUSTERED 
(
	[codCaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CapHDet]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapHDet](
	[codCapHDet] [int] IDENTITY(1,1) NOT NULL,
	[codCapH] [int] NULL,
	[codSuc] [int] NULL,
 CONSTRAINT [PK_CapHDet] PRIMARY KEY CLUSTERED 
(
	[codCapHDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CapitalHumano]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapitalHumano](
	[codCapH] [int] IDENTITY(1,1) NOT NULL,
	[nomCapH] [nvarchar](75) NULL,
	[primerApeCapH] [nvarchar](25) NULL,
	[segApeCapH] [nvarchar](25) NULL,
	[duiCapH] [int] NULL,
	[nitCapH] [int] NULL,
	[numIsssCapH] [nvarchar](50) NULL,
	[numAfpCapH] [nvarchar](50) NULL,
	[sexoCapH] [nvarchar](5) NULL,
	[fechaNacCapH] [date] NULL,
	[direcCapH] [nvarchar](100) NULL,
	[cargoCapH] [nvarchar](50) NULL,
	[estadoCapH] [nvarchar](25) NULL,
 CONSTRAINT [PK_CapitalHumano] PRIMARY KEY CLUSTERED 
(
	[codCapH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[codCli] [int] IDENTITY(1,1) NOT NULL,
	[nomCli] [nvarchar](50) NULL,
	[apeCli] [nvarchar](50) NULL,
	[contactoCli] [int] NULL,
	[numTarCli] [int] NULL,
	[numDuiCli] [int] NULL,
	[numNitClli] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[codCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comprar]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprar](
	[codCompra] [int] IDENTITY(1,1) NOT NULL,
	[codDetProduct] [int] NULL,
	[cantidadProdComp] [nvarchar](100) NULL,
	[precioUniComp] [int] NULL,
	[precioTotalComp] [int] NULL,
	[fechaComp] [date] NULL,
	[codFactura] [int] NULL,
 CONSTRAINT [PK_Comprar] PRIMARY KEY CLUSTERED 
(
	[codCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactoCapH]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactoCapH](
	[codContCapH] [int] IDENTITY(1,1) NOT NULL,
	[contactCapH] [int] NULL,
	[codTipoCont] [int] NULL,
	[codCapH] [int] NULL,
 CONSTRAINT [PK_ContactoCapH] PRIMARY KEY CLUSTERED 
(
	[codContCapH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetalleProducto]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleProducto](
	[codDetProduct] [int] IDENTITY(1,1) NOT NULL,
	[codProduct] [int] NULL,
	[codProv] [int] NULL,
 CONSTRAINT [PK_DetalleProducto] PRIMARY KEY CLUSTERED 
(
	[codDetProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DirecCli]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirecCli](
	[codDireCli] [int] IDENTITY(1,1) NOT NULL,
	[direccionCli] [nvarchar](100) NULL,
	[codCli] [int] NULL,
	[estadoCli] [nvarchar](50) NULL,
 CONSTRAINT [PK_DirecCli] PRIMARY KEY CLUSTERED 
(
	[codDireCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocumentacionCapH]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentacionCapH](
	[codDocCapH] [int] IDENTITY(1,1) NOT NULL,
	[documentoCapH] [nvarchar](75) NULL,
	[codTipoDoc] [int] NULL,
	[codCapH] [int] NULL,
 CONSTRAINT [PK_DocumentacionCapH] PRIMARY KEY CLUSTERED 
(
	[codDocCapH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Entidades]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entidades](
	[codEnt] [int] IDENTITY(1,1) NOT NULL,
	[nombreEnti] [nvarchar](50) NULL,
 CONSTRAINT [PK_Entidades] PRIMARY KEY CLUSTERED 
(
	[codEnt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factura]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[codFactura] [int] IDENTITY(1,1) NOT NULL,
	[codPagoDet] [int] NULL,
	[codTipoFac] [int] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[codFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvDepart]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvDepart](
	[codInvDepa] [int] IDENTITY(1,1) NOT NULL,
	[depart] [nvarchar](75) NULL,
 CONSTRAINT [PK_InvDepart] PRIMARY KEY CLUSTERED 
(
	[codInvDepa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inventario]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario](
	[codInvent] [int] IDENTITY(1,1) NOT NULL,
	[codDetProduc] [int] NULL,
	[existActInv] [nvarchar](50) NULL,
	[existMinInv] [nvarchar](50) NULL,
	[existMaxInv] [nvarchar](50) NULL,
	[estadoProdInv] [nvarchar](50) NULL,
	[fechaInv] [date] NULL,
	[codBodega] [int] NULL,
	[codInvDepa] [int] NULL,
 CONSTRAINT [PK_inventario] PRIMARY KEY CLUSTERED 
(
	[codInvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Marca]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[codMarc] [int] IDENTITY(1,1) NOT NULL,
	[numMarc] [int] NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[codMarc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PagoDetalle]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoDetalle](
	[codPagoDet] [int] IDENTITY(1,1) NOT NULL,
	[pagoFac] [int] NULL,
 CONSTRAINT [PK_PagoDetalle] PRIMARY KEY CLUSTERED 
(
	[codPagoDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[codProduc] [int] IDENTITY(1,1) NOT NULL,
	[precioCostoProduc] [nvarchar](50) NULL,
	[precioVentaProduc] [int] NULL,
	[codUniMed] [int] NULL,
	[codMarc] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[codProduc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[codProv] [int] IDENTITY(1,1) NOT NULL,
	[nombreProv] [nvarchar](50) NULL,
	[direcProv] [nvarchar](75) NULL,
	[correoProv] [nvarchar](50) NULL,
	[telProv] [int] NULL,
	[estadoProv] [nvarchar](50) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[codProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[codRol] [int] IDENTITY(1,1) NOT NULL,
	[rol] [nvarchar](50) NULL,
	[descripRol] [nvarchar](100) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[codRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[codSuc] [int] IDENTITY(1,1) NOT NULL,
	[nombreSuc] [nvarchar](50) NULL,
	[direcSuc] [nvarchar](100) NULL,
	[contactoSuc] [int] NULL,
	[codSuperM] [int] NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[codSuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuperM]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperM](
	[codSuperM] [int] IDENTITY(1,1) NOT NULL,
	[nomSup] [nvarchar](100) NULL,
	[numIvaSup] [int] NULL,
	[numNitSup] [int] NULL,
 CONSTRAINT [PK_SuperM] PRIMARY KEY CLUSTERED 
(
	[codSuperM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoContacto]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContacto](
	[codTipoCont] [int] IDENTITY(1,1) NOT NULL,
	[tipoContact] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoContacto] PRIMARY KEY CLUSTERED 
(
	[codTipoCont] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[codTipoDoc] [int] NOT NULL,
	[tipoDoc] [nvarchar](25) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[codTipoDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoFactura]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFactura](
	[codTipoFac] [int] IDENTITY(1,1) NOT NULL,
	[tipoFac] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoFactura] PRIMARY KEY CLUSTERED 
(
	[codTipoFac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoVenta]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVenta](
	[codTipoVenta] [int] IDENTITY(1,1) NOT NULL,
	[tipoVenta] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoVenta] PRIMARY KEY CLUSTERED 
(
	[codTipoVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unidad Medida]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidad Medida](
	[codUniMed] [int] IDENTITY(1,1) NOT NULL,
	[nomUniMed] [nvarchar](50) NULL,
	[uniMed] [nvarchar](50) NULL,
 CONSTRAINT [PK_Unidad Medida] PRIMARY KEY CLUSTERED 
(
	[codUniMed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[codUsu] [int] IDENTITY(1,1) NOT NULL,
	[codRol] [int] NULL,
	[nomUsu] [nvarchar](75) NULL,
	[contraUsu] [nvarchar](50) NULL,
	[estadoUsu] [nvarchar](25) NULL,
	[codCapH] [int] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[codUsu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[codVenta] [int] IDENTITY(1,1) NOT NULL,
	[codTipoVenta] [int] NULL,
	[codCaja] [int] NULL,
	[codDetProduc] [int] NULL,
	[cantProdVent] [int] NULL,
	[precioUniVent] [int] NULL,
	[precioTotVent] [int] NULL,
	[codFactura] [int] NULL,
	[fechaHoraVent] [time](7) NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[codVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentaCliente]    Script Date: 07/05/2019 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaCliente](
	[codVentaCli] [int] IDENTITY(1,1) NOT NULL,
	[codVenta] [int] NULL,
	[codCliente] [int] NULL,
 CONSTRAINT [PK_VentaCliente] PRIMARY KEY CLUSTERED 
(
	[codVentaCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Entidades] FOREIGN KEY([codEnti])
REFERENCES [dbo].[Entidades] ([codEnt])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Entidades]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Usuarios] FOREIGN KEY([codUsu])
REFERENCES [dbo].[Usuarios] ([codUsu])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Usuarios]
GO
ALTER TABLE [dbo].[Bodega]  WITH CHECK ADD  CONSTRAINT [FK_Bodega_Sucursal] FOREIGN KEY([codSuc])
REFERENCES [dbo].[Sucursal] ([codSuc])
GO
ALTER TABLE [dbo].[Bodega] CHECK CONSTRAINT [FK_Bodega_Sucursal]
GO
ALTER TABLE [dbo].[Caja]  WITH CHECK ADD  CONSTRAINT [FK_Caja_CapitalHumano] FOREIGN KEY([codCapH])
REFERENCES [dbo].[CapitalHumano] ([codCapH])
GO
ALTER TABLE [dbo].[Caja] CHECK CONSTRAINT [FK_Caja_CapitalHumano]
GO
ALTER TABLE [dbo].[Caja]  WITH CHECK ADD  CONSTRAINT [FK_Caja_Sucursal] FOREIGN KEY([codSuc])
REFERENCES [dbo].[Sucursal] ([codSuc])
GO
ALTER TABLE [dbo].[Caja] CHECK CONSTRAINT [FK_Caja_Sucursal]
GO
ALTER TABLE [dbo].[CapHDet]  WITH CHECK ADD  CONSTRAINT [FK_CapHDet_CapitalHumano] FOREIGN KEY([codCapH])
REFERENCES [dbo].[CapitalHumano] ([codCapH])
GO
ALTER TABLE [dbo].[CapHDet] CHECK CONSTRAINT [FK_CapHDet_CapitalHumano]
GO
ALTER TABLE [dbo].[CapHDet]  WITH CHECK ADD  CONSTRAINT [FK_CapHDet_Sucursal] FOREIGN KEY([codSuc])
REFERENCES [dbo].[Sucursal] ([codSuc])
GO
ALTER TABLE [dbo].[CapHDet] CHECK CONSTRAINT [FK_CapHDet_Sucursal]
GO
ALTER TABLE [dbo].[Comprar]  WITH CHECK ADD  CONSTRAINT [FK_Comprar_Factura] FOREIGN KEY([codFactura])
REFERENCES [dbo].[Factura] ([codFactura])
GO
ALTER TABLE [dbo].[Comprar] CHECK CONSTRAINT [FK_Comprar_Factura]
GO
ALTER TABLE [dbo].[ContactoCapH]  WITH CHECK ADD  CONSTRAINT [FK_ContactoCapH_CapitalHumano] FOREIGN KEY([codCapH])
REFERENCES [dbo].[CapitalHumano] ([codCapH])
GO
ALTER TABLE [dbo].[ContactoCapH] CHECK CONSTRAINT [FK_ContactoCapH_CapitalHumano]
GO
ALTER TABLE [dbo].[ContactoCapH]  WITH CHECK ADD  CONSTRAINT [FK_ContactoCapH_TipoContacto] FOREIGN KEY([codTipoCont])
REFERENCES [dbo].[TipoContacto] ([codTipoCont])
GO
ALTER TABLE [dbo].[ContactoCapH] CHECK CONSTRAINT [FK_ContactoCapH_TipoContacto]
GO
ALTER TABLE [dbo].[DetalleProducto]  WITH CHECK ADD  CONSTRAINT [FK_DetalleProducto_Producto1] FOREIGN KEY([codProduct])
REFERENCES [dbo].[Producto] ([codProduc])
GO
ALTER TABLE [dbo].[DetalleProducto] CHECK CONSTRAINT [FK_DetalleProducto_Producto1]
GO
ALTER TABLE [dbo].[DetalleProducto]  WITH CHECK ADD  CONSTRAINT [FK_DetalleProducto_Proveedor] FOREIGN KEY([codProv])
REFERENCES [dbo].[Proveedor] ([codProv])
GO
ALTER TABLE [dbo].[DetalleProducto] CHECK CONSTRAINT [FK_DetalleProducto_Proveedor]
GO
ALTER TABLE [dbo].[DirecCli]  WITH CHECK ADD  CONSTRAINT [FK_DirecCli_Cliente] FOREIGN KEY([codCli])
REFERENCES [dbo].[Cliente] ([codCli])
GO
ALTER TABLE [dbo].[DirecCli] CHECK CONSTRAINT [FK_DirecCli_Cliente]
GO
ALTER TABLE [dbo].[DocumentacionCapH]  WITH CHECK ADD  CONSTRAINT [FK_DocumentacionCapH_CapitalHumano] FOREIGN KEY([codCapH])
REFERENCES [dbo].[CapitalHumano] ([codCapH])
GO
ALTER TABLE [dbo].[DocumentacionCapH] CHECK CONSTRAINT [FK_DocumentacionCapH_CapitalHumano]
GO
ALTER TABLE [dbo].[DocumentacionCapH]  WITH CHECK ADD  CONSTRAINT [FK_DocumentacionCapH_TipoDocumento] FOREIGN KEY([codTipoDoc])
REFERENCES [dbo].[TipoDocumento] ([codTipoDoc])
GO
ALTER TABLE [dbo].[DocumentacionCapH] CHECK CONSTRAINT [FK_DocumentacionCapH_TipoDocumento]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_PagoDetalle] FOREIGN KEY([codPagoDet])
REFERENCES [dbo].[PagoDetalle] ([codPagoDet])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_PagoDetalle]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_TipoFactura] FOREIGN KEY([codTipoFac])
REFERENCES [dbo].[TipoFactura] ([codTipoFac])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_TipoFactura]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_Bodega] FOREIGN KEY([codBodega])
REFERENCES [dbo].[Bodega] ([codBodega])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [FK_inventario_Bodega]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_DetalleProducto] FOREIGN KEY([codDetProduc])
REFERENCES [dbo].[DetalleProducto] ([codDetProduct])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [FK_inventario_DetalleProducto]
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [FK_inventario_InvDepart] FOREIGN KEY([codInvDepa])
REFERENCES [dbo].[InvDepart] ([codInvDepa])
GO
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [FK_inventario_InvDepart]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marca] FOREIGN KEY([codMarc])
REFERENCES [dbo].[Marca] ([codMarc])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marca]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Unidad Medida] FOREIGN KEY([codUniMed])
REFERENCES [dbo].[Unidad Medida] ([codUniMed])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Unidad Medida]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_SuperM] FOREIGN KEY([codSuperM])
REFERENCES [dbo].[SuperM] ([codSuperM])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_SuperM]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_CapitalHumano] FOREIGN KEY([codCapH])
REFERENCES [dbo].[CapitalHumano] ([codCapH])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_CapitalHumano]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Rol] FOREIGN KEY([codRol])
REFERENCES [dbo].[Rol] ([codRol])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Rol]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Caja] FOREIGN KEY([codCaja])
REFERENCES [dbo].[Caja] ([codCaja])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Caja]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_DetalleProducto] FOREIGN KEY([codDetProduc])
REFERENCES [dbo].[DetalleProducto] ([codDetProduct])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_DetalleProducto]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Factura] FOREIGN KEY([codFactura])
REFERENCES [dbo].[Factura] ([codFactura])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Factura]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_TipoVenta] FOREIGN KEY([codTipoVenta])
REFERENCES [dbo].[TipoVenta] ([codTipoVenta])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_TipoVenta]
GO
ALTER TABLE [dbo].[VentaCliente]  WITH CHECK ADD  CONSTRAINT [FK_VentaCliente_Cliente] FOREIGN KEY([codCliente])
REFERENCES [dbo].[Cliente] ([codCli])
GO
ALTER TABLE [dbo].[VentaCliente] CHECK CONSTRAINT [FK_VentaCliente_Cliente]
GO
ALTER TABLE [dbo].[VentaCliente]  WITH CHECK ADD  CONSTRAINT [FK_VentaCliente_Venta] FOREIGN KEY([codVenta])
REFERENCES [dbo].[Venta] ([codVenta])
GO
ALTER TABLE [dbo].[VentaCliente] CHECK CONSTRAINT [FK_VentaCliente_Venta]
GO
USE [master]
GO
ALTER DATABASE [SuperMercado1] SET  READ_WRITE 
GO



/*INSERCIÓN DE REGISTROS*/

insert into Supermercado values ('Super Selectos','Supermercado de grupo Calleja');
insert into Supermercado values ('Wallmart','Supermercado multinacional');
insert into Supermercado values ('Maxi Despensa',null);
insert into Supermercado values ('Despensa Familiar','Supermercado de precios accesibles');
insert into Supermercado values ('Despensa de Don Juan',null);
insert into Supermercado values ('Super M',null);
insert into Supermercado values ('Super A',null);
insert into Supermercado values ('Super B',null);
insert into Supermercado values ('Super C',null);
insert into Supermercado values ('Super D',null);

insert into Sucursal values ('A','San Salvador','2294-9063',1);
insert into Sucursal values ('B','San Miguel','2200-9263',1);
insert into Sucursal values ('C','San Salvador','2640-1089',2);
insert into Sucursal values ('D','Sonsonate','2294-9063',3);
insert into Sucursal values ('E','San Salvador','2200-7519',5);
insert into Sucursal values ('F','La Libertad','2294-0963',4);
insert into Sucursal values ('G','La Union','2294-8863',6);
insert into Sucursal values ('H','Morazán','2293-9063',1);
insert into Sucursal values ('I','San Salvador','2254-9073',2);
insert into Sucursal values ('J','San Miguel','2294-9743',8);
insert into Sucursal values ('K','San Salvador','2294-4063',3);

insert into Contrato values (1,'20-11-2010',1,2,3);
insert into Contrato values (3,'02-01-2017',6,1,2);
insert into Contrato values (2,'14-12-2011',2,6,1);
insert into Contrato values (5,'10-07-2012',1,4,7);
insert into Contrato values (6,'06-02-2013',3,2,8);
insert into Contrato values (7,'18-10-2016',4,3,5);
insert into Contrato values (4,'13-12-2015',4,9,4);
insert into Contrato values (8,'14-03-2001',9,10,2);
insert into Contrato values (10,'28-04-2015',6,6,1);
insert into Contrato values (9,'23-09-2018',5,9,3);

insert into HorarioCapH values ('23-03-2019 06:00');
insert into HorarioCapH values ('23-03-2019 07:00');
insert into HorarioCapH values ('23-03-2019 08:00');
insert into HorarioCapH values ('23-03-2019 09:00');
insert into HorarioCapH values ('23-03-2019 10:00');
insert into HorarioCapH values ('23-03-2019 11:00');
insert into HorarioCapH values ('23-03-2019 12:00');
insert into HorarioCapH values ('23-03-2019 01:00');
insert into HorarioCapH values ('23-03-2019 02:00');
insert into HorarioCapH values ('23-03-2019 03:00');

insert into Planilla values (1,1,1);
insert into Planilla values (2,2,2);
insert into Planilla values (3,3,3);
insert into Planilla values (4,4,4);
insert into Planilla values (5,5,5);
insert into Planilla values (6,6,6);
insert into Planilla values (7,7,7);
insert into Planilla values (8,8,8);
insert into Planilla values (9,9,9);
insert into Planilla values (10,10,10);

insert into Descuento values(06,'...');
insert into Descuento values(08,'...');
insert into Descuento values(15,'...');
insert into Descuento values(20,'...');
insert into Descuento values(10,'...');
insert into Descuento values(9,'...');
insert into Descuento values(30,'...');
insert into Descuento values(07,'...');
insert into Descuento values(11,'...');
insert into Descuento values(12,'...');

insert into Caja values(01,193-7,296,0614-110169-001-1,1);
insert into Caja values(02,193-7,296,0614-110169-001-1,2);
insert into Caja values(03,193-7,296,0614-110169-001-1,3);
insert into Caja values(04,193-7,296,0614-110169-001-1,4);
insert into Caja values(05,193-7,296,0614-110169-001-1,5);
insert into Caja values(06,193-7,296,0614-110169-001-1,6);
insert into Caja values(07,193-7,296,0614-110169-001-1,7);
insert into Caja values(08,193-7,296,0614-110169-001-1,8);
insert into Caja values(09,193-7,296,0614-110169-001-1,9);
insert into Caja values(10,193-7,296,0614-110169-001-1,10);

insert into DetalleCargoCapH values(1,1,300);
insert into DetalleCargoCapH values(2,2,500);
insert into DetalleCargoCapH values(3,3,600);
insert into DetalleCargoCapH values(4,4,550);
insert into DetalleCargoCapH values(5,5,390);
insert into DetalleCargoCapH values(6,6,300);
insert into DetalleCargoCapH values(7,7,400);
insert into DetalleCargoCapH values(8,8,500);
insert into DetalleCargoCapH values(9,9,450);
insert into DetalleCargoCapH values(10,10,700);

insert into Rol values('Coordinador','Coordinar grupos de trabajo');
insert into Rol values('Jefe Cajero','Controlar que las cajas funcionen de forma correcta');
insert into Rol values('Presidente de Comite','Encargado de liderar comite');
insert into Rol values('Tesorero','...');
insert into Rol values('Vocal','...');
insert into Rol values('Supervisor','...');
insert into Rol values('Asistente','...');
insert into Rol values('secretaria de comite','...');
insert into Rol values('vocal A','...');
insert into Rol values('Responsable de seccion A','Supervisar sección A');

insert into Cargo values('Supervisor de Personal','...');
insert into Cargo values('Cajero','Atender Caja');
insert into Cargo values('Ordenanza','Mantener limpias las instalaciones');
insert into Cargo values('Secretaria','Asistir en cuestiones de administración');
insert into Cargo values('Administración','Gestión de la empresa');
insert into Cargo values('Contador','Atender Contabilidad');
insert into Cargo values('Auxiliar Contable','Atender cuestiones de contabilidad');
insert into Cargo values('Repartidor','Entregar pedidos');
insert into Cargo values('Bodega','Atender bodega');
insert into Cargo values('Técnico','Asistencia en cuestiones de tecnología y equipo');

insert into CapitalHumano values('Alejandra','Castillo','Rivera','021458796-3','32547894125','125478963 25','2458746921','Femenino','01-04-1990','...','Activo');
insert into CapitalHumano values('Karen','Arias','Pineda','021478796-3','32548894125','','','Femenino','12-07-1981','...','Activo');
insert into CapitalHumano values('David','Reyes','Lopez','061458796-3','74547894125','','','Masculino','01-12-1991','...','Activo');
insert into CapitalHumano values('Carlos','Perez','Rivera','6951458796-3','32547894125','','','Masculino','01-04-1990','...','Activo');
insert into CapitalHumano values('Kevin','Flores','Cruz','021458796-3','32547894125','','','Masculino','26-04-1992','...','Activo');
insert into CapitalHumano values('Maria','Castro','Garay','021458796-3','32547894125','','','Femenino','01-04-1988','...','Activo');
insert into CapitalHumano values('Pedro','Campos','Ramos','021458796-3','32547894125','','','Masculino','29-07-1993','...','Activo');
insert into CapitalHumano values('Teresa','Castillo','Rivas','021458796-3','32547894125','','','Femenino','01-09-1980','...','Activo');
insert into CapitalHumano values('Juan','Castillo','Navarro','021458796-3','32547894125','','','Masculino','13-08-1979','...','Activo');
insert into CapitalHumano values('Abigail','Cañas','Robles','021458796-3','32547894125','','','Femenino','01-06-1985','...','Activo');

insert into ContactoCapH values('7887-9600',1,1);
insert into ContactoCapH values('2294-9063',2,2);
insert into ContactoCapH values('Karen Arias',3,3);
insert into ContactoCapH values('7400-5692',4,4);
insert into ContactoCapH values('val88_@gmail.com',5,5);
insert into ContactoCapH values('2614-0010',6,6);
insert into ContactoCapH values('Juan Perez',7,7);
insert into ContactoCapH values('7495-8263',8,8);
insert into ContactoCapH values('marialopez03',9,9);
insert into ContactoCapH values('kate@outlook.com',10,10);

insert into TipoContacto values('Teléfono Movil');
insert into TipoContacto values('Teléfono Fijo');
insert into TipoContacto values('Facebook');
insert into TipoContacto values('WhatsApp');
insert into TipoContacto values('Correo electrónico');
insert into TipoContacto values('Teléfono Oficina');
insert into TipoContacto values('Messenger');
insert into TipoContacto values('Line');
insert into TipoContacto values('Instagram');
insert into TipoContacto values('Outlook');

insert into DocumentacionCapH values('23589647-8',1,1);
insert into DocumentacionCapH values('1254798956',2,2);
insert into DocumentacionCapH values('5647741',3,3);
insert into DocumentacionCapH values('54789431-9',1,4);
insert into DocumentacionCapH values('314789546-2',1,5);
insert into DocumentacionCapH values('451236478954',2,6);
insert into DocumentacionCapH values('02145786-8',1,7);
insert into DocumentacionCapH values('06412587-5',1,8);
insert into DocumentacionCapH values('25647895412',2,9);
insert into DocumentacionCapH values('014578964-3',1,10);

insert into TipoDocumento values('Dui');
insert into TipoDocumento values('Nit');
insert into TipoDocumento values('Pasaporte');
insert into TipoDocumento values('');
insert into TipoDocumento values('');
insert into TipoDocumento values('');
insert into TipoDocumento values('');
insert into TipoDocumento values('');
insert into TipoDocumento values('');
insert into TipoDocumento values('');

insert into Venta values(1,1,1,2,1.42,2.84,1,10,'13-03-19','10:50');
insert into Venta values(2,2,2,1,3.43,3.43,2,9,'13-03-19','10:50');
insert into Venta values(1,3,3,2,0.85,1.70,3,8,'13-03-19','10:50');
insert into Venta values(1,4,4,1,2.38,2.38,4,7,'13-03-19','10:50');
insert into Venta values(1,5,5,6,0.40,2.40,5,6,'13-03-19','10:50');
insert into Venta values(2,6,6,2,0.99,2.40,6,5,'13-03-19','10:50');
insert into Venta values(1,7,7,2,0.95,1.90,7,4,'13-03-19','10:50');
insert into Venta values(1,8,8,2,0.90,1.80,8,3,'13-03-19','10:50');
insert into Venta values(2,9,9,2,2.82,5.64,9,2,'13-03-19','10:50');
insert into Venta values(1,10,10,2,2.82,5.64,10,1,'13-03-19','10:50');

insert into TipoVenta values('Presencial');
insert into TipoVenta values('Online');
insert into TipoVenta values('...');
insert into TipoVenta values('...');
insert into TipoVenta values('...');
insert into TipoVenta values('...');
insert into TipoVenta values('...');
insert into TipoVenta values('...');
insert into TipoVenta values('...');
insert into TipoVenta values('...');

insert into VentaCliente values(1,1);
insert into VentaCliente values(2,2);
insert into VentaCliente values(3,3);
insert into VentaCliente values(4,4);
insert into VentaCliente values(5,5);
insert into VentaCliente values(6,6);
insert into VentaCliente values(7,7);
insert into VentaCliente values(8,8);
insert into VentaCliente values(9,9);
insert into VentaCliente values(10,10);

insert into Cliente values('Andrea','Peréz','Soyapango','7887-1016');
insert into Cliente values('Javier','Castro','San Martin','7681-1016');
insert into Cliente values('Mariana','Fuentes','Santa Tecla','7687-5486');
insert into Cliente values('Andrés','López','Sonsonate','7187-1016');
insert into Cliente values('Juan','Peréz','San Marcos','7397-1016');
insert into Cliente values('Alejandra','Duran','Soyapango','6587-1016');
insert into Cliente values('David','Navarro','Ilopango','7807-1618');
insert into Cliente values('Maria','Juarez','Soyapango','6887-1006');
insert into Cliente values('Victor','Varela','Santa Ana','7337-1016');
insert into Cliente values('Pablo','Campos','Soyapango','6475-1116');

insert into DocCliente values('64789647-8',1,1);
insert into DocCliente values('3654798956',2,2);
insert into DocCliente values('1647741',3,3);
insert into DocCliente values('54735431-9',1,4);
insert into DocCliente values('364789536-2',1,5);
insert into DocCliente values('451236988954',2,6);
insert into DocCliente values('02145714-8',1,7);
insert into DocCliente values('06412568-5',1,8);
insert into DocCliente values('25647102412',2,9);
insert into DocCliente values('654578964-3',1,10);

insert into Producto values('Arroz',1,1.20,1.42,'San Francisco');
insert into Producto values('Alitas de Pollo',2,3.00,3.43,'Pollo Indio');
insert into Producto values('Cerveza Brahva',1,0.50,0.85,'Brahva');
insert into Producto values('Cereal Instantaneo Nestum',4,2.00,2.38,'Nestle');
insert into Producto values('Frutado de Manzana',5,0.30,0.40,'Petit');
insert into Producto values('ALIM P/PERRO PEDIGREE CACHORRO',6,0.80,0.99,'Pedigree');
insert into Producto values('BOQUITA CONGA MIX DIANA BOLSA 110 G',7,0.80,0.95,'Diana');
insert into Producto values('BOQUITAS GUSTITOS BOCADELI 93 GRS',8,0.80,0.90,'Bocadeli');
insert into Producto values('BARRAS BIMBO TRIGO BRAN FRUT FRESA CTON/',9,2.70,2.82,'Bran Frut');
insert into Producto values('HUEVO LA CATALANA EXTRA GRANDE 15 UNI',10,2.75,2.82,'Catalana');

insert into Proveedor values('Arrocera San Francisco','San Marcos','Activo');
insert into Proveedor values('Avicola Salvadoreña','San Salvador','Activo');
insert into Proveedor values('La Constancia','San Salvador','Activo');
insert into Proveedor values('Nestle','Colón','Activo');
insert into Proveedor values('Distribuidora Zablah','Santa Tecla','Activo');
insert into Proveedor values('Comersal','Santa Tecla','Activo');
insert into Proveedor values('Diana','San Salvador','Activo');
insert into Proveedor values('Bocadeli','San Salvador','Activo');
insert into Proveedor values('Bimbo','Santa Tecla','Activo');
insert into Proveedor values('Catalana','San Salvador','Activo');

insert into ContacProv values('2203-3032',2,1);
insert into ContacProv values('2227-6556',2,2);
insert into ContacProv values('2200-9632',2,3);
insert into ContacProv values('800-6179',1,4);
insert into ContacProv values('2525-1111',2,5);
insert into ContacProv values('ventas@comersal.com.sv',5,6);
insert into ContacProv values('(503) 2277-1233',2,7);
insert into ContacProv values('2662-7631',2,8);
insert into ContacProv values('2340-9632',2,9);
insert into ContacProv values('2210-5682',2,10);

insert into Compra values(1,200,1.20,240,'03-03-19',1);
insert into Compra values(2,100,3.00,300,'03-03-19',2);
insert into Compra values(3,100,0.50,100,'03-03-19',3);
insert into Compra values(4,100,2.00,200,'03-03-19',4);
insert into Compra values(5,250,0.30,75,'20-02-19',5);
insert into Compra values(6,100,0.80,80,'11-03-19',6);
insert into Compra values(7,100,0.80,80,'03-03-19',7);
insert into Compra values(8,100,0.80,80,'03-03-19',8);
insert into Compra values(9,100,2.70,270,'03-03-19',9);
insert into Compra values(10,100,2.75,275,'01-03-19',10);

insert into Inventario values(1,15,10,100,'Con Movimiento','21-03-19',1,5);
insert into Inventario values(2,25,10,100,'Con Movimiento','21-03-19',2,2);
insert into Inventario values(3,30,10,100,'Con Movimiento','21-03-19',3,10);
insert into Inventario values(4,15,10,100,'Con Movimiento','21-03-19',4,1);
insert into Inventario values(5,5,10,100,'Agotado','21-03-19',5,8);
insert into Inventario values(6,16,10,100,'Con Movimiento','21-03-19',6,6);
insert into Inventario values(7,75,10,100,'Con Movimiento','21-03-19',7,2);
insert into Inventario values(8,50,10,100,'Con Movimiento','21-03-19',8,2);
insert into Inventario values(9,22,10,100,'Con Movimiento','21-03-19',9,1);
insert into Inventario values(10,36,10,100,'Con Movimiento','21-03-19',10,5);

insert into Bodega values(1,'Bodega A');
insert into Bodega values(2,'Bodega B');
insert into Bodega values(3,'Bodega C');
insert into Bodega values(4,'Bodega D');
insert into Bodega values(5,'Bodega E');
insert into Bodega values(6,'Bodega F');
insert into Bodega values(7,'Bodega G');
insert into Bodega values(8,'Bodega H');
insert into Bodega values(9,'Bodega I');
insert into Bodega values(10,'Bodega J');

insert into InvDepart values('Pan y Cereal');
insert into InvDepart values('Boquitas');
insert into InvDepart values('Carnes');
insert into InvDepart values('Lacteos');
insert into InvDepart values('Abarrotes');
insert into InvDepart values('Cuidado Mascotas');
insert into InvDepart values('Cuidado Personal');
insert into InvDepart values('Bebidas');
insert into InvDepart values('Producto Agricola');
insert into InvDepart values('Bebidas Alcoholicas');

insert into Factura values(1,1);
insert into Factura values(2,2);
insert into Factura values(3,3);
insert into Factura values(4,3);
insert into Factura values(2,2);
insert into Factura values(1,2);
insert into Factura values(4,1);
insert into Factura values(2,1);
insert into Factura values(3,2);
insert into Factura values(4,2);

insert into PagoDetalle values('Efectivo');
insert into PagoDetalle values('Gift Card');
insert into PagoDetalle values('Tarjeta de credito');
insert into PagoDetalle values('Tarjeta de Debito');
insert into PagoDetalle values('...');
insert into PagoDetalle values('...');
insert into PagoDetalle values('...');
insert into PagoDetalle values('...');
insert into PagoDetalle values('...');
insert into PagoDetalle values('...');

insert into DetalleProducto values(1,1);
insert into DetalleProducto values(2,2);
insert into DetalleProducto values(3,3);
insert into DetalleProducto values(4,4);
insert into DetalleProducto values(5,5);
insert into DetalleProducto values(6,6);
insert into DetalleProducto values(7,7);
insert into DetalleProducto values(8,8);
insert into DetalleProducto values(9,9);
insert into DetalleProducto values(10,10);

insert into TipoFactura values('Factura regular (ticket)');
insert into TipoFactura values('Factura de Consumidor Final');
insert into TipoFactura values('Credito Fiscal');
insert into TipoFactura values('');
insert into TipoFactura values('');
insert into TipoFactura values('');
insert into TipoFactura values('');
insert into TipoFactura values('');
insert into TipoFactura values('');
insert into TipoFactura values('');


insert into Bitacora values (1,'Modificacion','2019/03/16','','');
insert into Bitacora values (2,'Agrego','2019/02/16','','');
insert into Bitacora values (3,'Elimino','2019/01/10','','');
insert into Bitacora values (4,'modificacion','2019/02/22','','');
insert into Bitacora values (5,'modificacion','2019/04/06','','');
insert into Bitacora values (6,'Agrego','2019/03/08','','');
insert into Bitacora values (7,'modificacion','2019/02/23','','');
insert into Bitacora values (8,'Elimino','2019/04/14','','');
insert into Bitacora values (9,'modificacion','2019/03/19','','');
insert into Bitacora values (10,'Agrego','2019/01/16','','');


insert into Entidades values (1,'Venta');
insert into Entidades values (2,'Compra');
insert into Entidades values (3,'Factura');
insert into Entidades values (4,'Planilla');
insert into Entidades values (5,'DetalleCargoCapH');
insert into Entidades values (6,'Rol');
insert into Entidades values (7,'CapitalHumano');
insert into Entidades values (8,'ContratoCapH');
insert into Entidades values (9,'DocumentacionCapH');
insert into Entidades values (10,'VentaCliente');





