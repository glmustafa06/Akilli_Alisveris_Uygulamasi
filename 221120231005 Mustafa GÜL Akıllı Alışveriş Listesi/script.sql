USE [master]
GO
/****** Object:  Database [AlisverisUygulamasi]    Script Date: 31.12.2024 18:10:37 ******/
CREATE DATABASE [AlisverisUygulamasi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AlisverisUygulamasi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AlisverisUygulamasi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AlisverisUygulamasi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AlisverisUygulamasi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AlisverisUygulamasi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlisverisUygulamasi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlisverisUygulamasi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlisverisUygulamasi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlisverisUygulamasi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AlisverisUygulamasi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlisverisUygulamasi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET RECOVERY FULL 
GO
ALTER DATABASE [AlisverisUygulamasi] SET  MULTI_USER 
GO
ALTER DATABASE [AlisverisUygulamasi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlisverisUygulamasi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AlisverisUygulamasi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AlisverisUygulamasi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AlisverisUygulamasi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AlisverisUygulamasi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AlisverisUygulamasi', N'ON'
GO
ALTER DATABASE [AlisverisUygulamasi] SET QUERY_STORE = ON
GO
ALTER DATABASE [AlisverisUygulamasi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AlisverisUygulamasi]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 31.12.2024 18:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lists]    Script Date: 31.12.2024 18:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lists](
	[ListID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ListName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Markets]    Script Date: 31.12.2024 18:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markets](
	[MarketID] [int] IDENTITY(1,1) NOT NULL,
	[MarketName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPrices]    Script Date: 31.12.2024 18:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPrices](
	[ProductPriceID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[MarketID] [int] NULL,
	[Price] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 31.12.2024 18:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[CategoryID] [int] NULL,
	[Barcode] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingList]    Script Date: 31.12.2024 18:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingList](
	[ShoppingListID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[MarketID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShoppingListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 31.12.2024 18:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Gıda')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Temizlik')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Elektronik')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Giyim')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Kişisel Bakım')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Bebek Ürünleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'Ev ve Yaşam')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (8, N'Evcil Hayvan Ürünleri')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (9, N'Oyuncaklar')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (10, N'Kırtasiye')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Markets] ON 

INSERT [dbo].[Markets] ([MarketID], [MarketName]) VALUES (1, N'A101')
INSERT [dbo].[Markets] ([MarketID], [MarketName]) VALUES (2, N'BIM')
INSERT [dbo].[Markets] ([MarketID], [MarketName]) VALUES (3, N'ŞOK')
SET IDENTITY_INSERT [dbo].[Markets] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPrices] ON 

INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (1, 41, 1, CAST(1.45 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (2, 41, 2, CAST(1.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (3, 41, 3, CAST(1.55 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (4, 42, 1, CAST(3.70 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (5, 42, 2, CAST(3.75 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (6, 42, 3, CAST(3.80 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (7, 43, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (8, 43, 2, CAST(9.95 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (9, 43, 3, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (10, 44, 1, CAST(4.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (11, 44, 2, CAST(4.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (12, 44, 3, CAST(4.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (13, 45, 1, CAST(12.80 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (14, 45, 2, CAST(12.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (15, 45, 3, CAST(13.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (16, 46, 1, CAST(22.30 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (17, 46, 2, CAST(22.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (18, 46, 3, CAST(22.70 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (19, 47, 1, CAST(7.20 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (20, 47, 2, CAST(7.25 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (21, 47, 3, CAST(7.30 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (22, 48, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (23, 48, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (24, 48, 3, CAST(18.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (25, 49, 1, CAST(24.80 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (26, 49, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (27, 49, 3, CAST(25.20 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (28, 50, 1, CAST(2.70 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (29, 50, 2, CAST(2.75 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (30, 50, 3, CAST(2.80 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (31, 51, 1, CAST(1.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (32, 51, 2, CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (33, 51, 3, CAST(2.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (34, 52, 1, CAST(1.80 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (35, 52, 2, CAST(1.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (36, 52, 3, CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (37, 53, 1, CAST(1.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (38, 53, 2, CAST(1.20 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (39, 53, 3, CAST(1.30 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (40, 54, 1, CAST(4.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (41, 54, 2, CAST(4.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (42, 54, 3, CAST(4.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (43, 55, 1, CAST(6.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (44, 55, 2, CAST(7.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (45, 55, 3, CAST(7.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (46, 56, 1, CAST(2.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (47, 56, 2, CAST(3.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (48, 56, 3, CAST(3.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (49, 57, 1, CAST(3.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (50, 57, 2, CAST(3.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (51, 57, 3, CAST(3.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (52, 58, 1, CAST(5.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (53, 58, 2, CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (54, 58, 3, CAST(6.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (55, 59, 1, CAST(8.80 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (56, 59, 2, CAST(9.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (57, 59, 3, CAST(9.20 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (58, 60, 1, CAST(12.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (59, 60, 2, CAST(12.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (60, 60, 3, CAST(12.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (61, 61, 1, CAST(34.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (62, 61, 2, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (63, 61, 3, CAST(35.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (64, 62, 1, CAST(11.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (65, 62, 2, CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (66, 62, 3, CAST(12.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (67, 63, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (68, 63, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (69, 63, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (70, 64, 1, CAST(4.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (71, 64, 2, CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (72, 64, 3, CAST(5.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (73, 65, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (74, 65, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (75, 65, 3, CAST(18.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (76, 66, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (77, 66, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (78, 66, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (79, 67, 1, CAST(8.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (80, 67, 2, CAST(8.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (81, 67, 3, CAST(8.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (82, 68, 1, CAST(3.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (83, 68, 2, CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (84, 68, 3, CAST(4.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (85, 69, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (86, 69, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (87, 69, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (88, 70, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (89, 70, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (90, 70, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (91, 71, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (92, 71, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (93, 71, 3, CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (94, 72, 1, CAST(21.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (95, 72, 2, CAST(22.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (96, 72, 3, CAST(22.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (97, 73, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (98, 73, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (99, 73, 3, CAST(18.10 AS Decimal(10, 2)))
GO
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (100, 74, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (101, 74, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (102, 74, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (103, 75, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (104, 75, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (105, 75, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (106, 76, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (107, 76, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (108, 76, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (109, 77, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (110, 77, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (111, 77, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (112, 78, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (113, 78, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (114, 78, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (115, 79, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (116, 79, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (117, 79, 3, CAST(18.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (118, 80, 1, CAST(11.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (119, 80, 2, CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (120, 80, 3, CAST(12.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (121, 81, 1, CAST(2490.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (122, 81, 2, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (123, 81, 3, CAST(2510.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (124, 82, 1, CAST(3490.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (125, 82, 2, CAST(3500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (126, 82, 3, CAST(3510.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (127, 83, 1, CAST(1490.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (128, 83, 2, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (129, 83, 3, CAST(1510.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (130, 84, 1, CAST(1190.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (131, 84, 2, CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (132, 84, 3, CAST(1210.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (133, 85, 1, CAST(145.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (134, 85, 2, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (135, 85, 3, CAST(155.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (136, 86, 1, CAST(295.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (137, 86, 2, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (138, 86, 3, CAST(305.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (139, 87, 1, CAST(95.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (140, 87, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (141, 87, 3, CAST(105.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (142, 88, 1, CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (143, 88, 2, CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (144, 88, 3, CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (145, 89, 1, CAST(195.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (146, 89, 2, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (147, 89, 3, CAST(205.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (148, 90, 1, CAST(790.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (149, 90, 2, CAST(800.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (150, 90, 3, CAST(810.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (151, 91, 1, CAST(1990.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (152, 91, 2, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (153, 91, 3, CAST(2010.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (154, 92, 1, CAST(2490.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (155, 92, 2, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (156, 92, 3, CAST(2510.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (157, 93, 1, CAST(345.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (158, 93, 2, CAST(350.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (159, 93, 3, CAST(355.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (160, 94, 1, CAST(195.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (161, 94, 2, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (162, 94, 3, CAST(205.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (163, 95, 1, CAST(2990.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (164, 95, 2, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (165, 95, 3, CAST(3010.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (166, 96, 1, CAST(1490.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (167, 96, 2, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (168, 96, 3, CAST(1510.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (169, 97, 1, CAST(1190.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (170, 97, 2, CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (171, 97, 3, CAST(1210.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (172, 98, 1, CAST(390.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (173, 98, 2, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (174, 98, 3, CAST(410.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (175, 99, 1, CAST(2490.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (176, 99, 2, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (177, 99, 3, CAST(2510.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (178, 100, 1, CAST(590.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (179, 100, 2, CAST(600.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (180, 100, 3, CAST(610.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (181, 101, 1, CAST(49.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (182, 101, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (183, 101, 3, CAST(51.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (184, 102, 1, CAST(99.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (185, 102, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (186, 102, 3, CAST(101.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (187, 103, 1, CAST(199.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (188, 103, 2, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (189, 103, 3, CAST(201.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (190, 104, 1, CAST(74.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (191, 104, 2, CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (192, 104, 3, CAST(76.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (193, 105, 1, CAST(29.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (194, 105, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (195, 105, 3, CAST(31.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (196, 106, 1, CAST(149.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (197, 106, 2, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (198, 106, 3, CAST(151.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (199, 107, 1, CAST(14.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (200, 107, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (201, 107, 3, CAST(16.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (202, 108, 1, CAST(79.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (203, 108, 2, CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (204, 108, 3, CAST(81.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (205, 109, 1, CAST(249.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (206, 109, 2, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (207, 109, 3, CAST(251.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (208, 110, 1, CAST(39.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (209, 110, 2, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (210, 110, 3, CAST(41.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (211, 111, 1, CAST(119.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (212, 111, 2, CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (213, 111, 3, CAST(121.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (214, 112, 1, CAST(59.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (215, 112, 2, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (216, 112, 3, CAST(61.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (217, 113, 1, CAST(24.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (218, 113, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (219, 113, 3, CAST(26.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (220, 114, 1, CAST(19.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (221, 114, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (222, 114, 3, CAST(21.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (223, 115, 1, CAST(34.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (224, 115, 2, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (225, 115, 3, CAST(36.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (226, 116, 1, CAST(89.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (227, 116, 2, CAST(90.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (228, 116, 3, CAST(91.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (229, 117, 1, CAST(199.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (230, 117, 2, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (231, 117, 3, CAST(201.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (232, 118, 1, CAST(299.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (233, 118, 2, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (234, 118, 3, CAST(301.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (235, 119, 1, CAST(69.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (236, 119, 2, CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (237, 119, 3, CAST(71.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (238, 120, 1, CAST(44.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (239, 120, 2, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (240, 120, 3, CAST(46.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (241, 121, 1, CAST(8.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (242, 121, 2, CAST(8.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (243, 121, 3, CAST(8.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (244, 122, 1, CAST(3.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (245, 122, 2, CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (246, 122, 3, CAST(4.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (247, 123, 1, CAST(4.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (248, 123, 2, CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (249, 123, 3, CAST(5.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (250, 124, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (251, 124, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (252, 124, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (253, 125, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (254, 125, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (255, 125, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (256, 126, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (257, 126, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (258, 126, 3, CAST(18.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (259, 127, 1, CAST(119.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (260, 127, 2, CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (261, 127, 3, CAST(121.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (262, 128, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (263, 128, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (264, 128, 3, CAST(18.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (265, 129, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (266, 129, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (267, 129, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (268, 130, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (269, 130, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (270, 130, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (271, 131, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (272, 131, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (273, 131, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (274, 132, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (275, 132, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (276, 132, 3, CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (277, 133, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (278, 133, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (279, 133, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (280, 134, 1, CAST(34.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (281, 134, 2, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (282, 134, 3, CAST(35.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (283, 135, 1, CAST(39.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (284, 135, 2, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (285, 135, 3, CAST(40.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (286, 136, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (287, 136, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (288, 136, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (289, 137, 1, CAST(49.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (290, 137, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (291, 137, 3, CAST(50.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (292, 138, 1, CAST(21.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (293, 138, 2, CAST(22.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (294, 138, 3, CAST(22.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (295, 139, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (296, 139, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (297, 139, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (298, 140, 1, CAST(11.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (299, 140, 2, CAST(12.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (300, 140, 3, CAST(12.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (301, 141, 1, CAST(49.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (302, 141, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (303, 141, 3, CAST(50.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (304, 142, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (305, 142, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (306, 142, 3, CAST(18.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (307, 143, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (308, 143, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (309, 143, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (310, 144, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (311, 144, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (312, 144, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (313, 145, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (314, 145, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (315, 145, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (316, 146, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (317, 146, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (318, 146, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (319, 147, 1, CAST(44.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (320, 147, 2, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (321, 147, 3, CAST(45.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (322, 148, 1, CAST(59.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (323, 148, 2, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (324, 148, 3, CAST(60.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (325, 149, 1, CAST(7.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (326, 149, 2, CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (327, 149, 3, CAST(8.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (328, 150, 1, CAST(11.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (329, 150, 2, CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (330, 150, 3, CAST(12.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (331, 151, 1, CAST(99.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (332, 151, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (333, 151, 3, CAST(100.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (334, 152, 1, CAST(499.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (335, 152, 2, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (336, 152, 3, CAST(500.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (337, 153, 1, CAST(749.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (338, 153, 2, CAST(750.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (339, 153, 3, CAST(750.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (340, 154, 1, CAST(79.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (341, 154, 2, CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (342, 154, 3, CAST(80.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (343, 155, 1, CAST(34.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (344, 155, 2, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (345, 155, 3, CAST(35.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (346, 156, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (347, 156, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (348, 156, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (349, 157, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (350, 157, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (351, 157, 3, CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (352, 158, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (353, 158, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (354, 158, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (355, 159, 1, CAST(39.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (356, 159, 2, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (357, 159, 3, CAST(40.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (358, 160, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (359, 160, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (360, 160, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (361, 161, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (362, 161, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (363, 161, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (364, 162, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (365, 162, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (366, 162, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (367, 163, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (368, 163, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (369, 163, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (370, 164, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (371, 164, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (372, 164, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (373, 165, 1, CAST(11.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (374, 165, 2, CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (375, 165, 3, CAST(12.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (376, 166, 1, CAST(49.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (377, 166, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (378, 166, 3, CAST(50.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (379, 167, 1, CAST(74.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (380, 167, 2, CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (381, 167, 3, CAST(75.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (382, 168, 1, CAST(59.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (383, 168, 2, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (384, 168, 3, CAST(60.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (385, 169, 1, CAST(99.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (386, 169, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (387, 169, 3, CAST(100.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (388, 170, 1, CAST(149.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (389, 170, 2, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (390, 170, 3, CAST(150.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (391, 171, 1, CAST(199.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (392, 171, 2, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (393, 171, 3, CAST(200.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (394, 172, 1, CAST(299.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (395, 172, 2, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (396, 172, 3, CAST(300.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (397, 173, 1, CAST(399.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (398, 173, 2, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (399, 173, 3, CAST(400.10 AS Decimal(10, 2)))
GO
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (400, 174, 1, CAST(999.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (401, 174, 2, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (402, 174, 3, CAST(1000.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (403, 175, 1, CAST(1499.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (404, 175, 2, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (405, 175, 3, CAST(1500.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (406, 176, 1, CAST(1199.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (407, 176, 2, CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (408, 176, 3, CAST(1200.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (409, 177, 1, CAST(499.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (410, 177, 2, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (411, 177, 3, CAST(500.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (412, 178, 1, CAST(249.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (413, 178, 2, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (414, 178, 3, CAST(250.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (415, 179, 1, CAST(399.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (416, 179, 2, CAST(400.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (417, 179, 3, CAST(400.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (418, 180, 1, CAST(2499.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (419, 180, 2, CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (420, 180, 3, CAST(2500.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (421, 181, 1, CAST(49.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (422, 181, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (423, 181, 3, CAST(50.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (424, 182, 1, CAST(69.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (425, 182, 2, CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (426, 182, 3, CAST(70.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (427, 183, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (428, 183, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (429, 183, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (430, 184, 1, CAST(39.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (431, 184, 2, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (432, 184, 3, CAST(40.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (433, 185, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (434, 185, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (435, 185, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (436, 186, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (437, 186, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (438, 186, 3, CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (439, 187, 1, CAST(99.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (440, 187, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (441, 187, 3, CAST(100.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (442, 188, 1, CAST(149.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (443, 188, 2, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (444, 188, 3, CAST(150.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (445, 189, 1, CAST(199.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (446, 189, 2, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (447, 189, 3, CAST(200.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (448, 190, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (449, 190, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (450, 190, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (451, 191, 1, CAST(299.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (452, 191, 2, CAST(300.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (453, 191, 3, CAST(300.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (454, 192, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (455, 192, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (456, 192, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (457, 193, 1, CAST(149.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (458, 193, 2, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (459, 193, 3, CAST(150.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (460, 194, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (461, 194, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (462, 194, 3, CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (463, 195, 1, CAST(249.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (464, 195, 2, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (465, 195, 3, CAST(250.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (466, 196, 1, CAST(49.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (467, 196, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (468, 196, 3, CAST(50.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (469, 197, 1, CAST(44.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (470, 197, 2, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (471, 197, 3, CAST(45.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (472, 198, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (473, 198, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (474, 198, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (475, 199, 1, CAST(499.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (476, 199, 2, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (477, 199, 3, CAST(500.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (478, 200, 1, CAST(34.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (479, 200, 2, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (480, 200, 3, CAST(35.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (481, 201, 1, CAST(149.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (482, 201, 2, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (483, 201, 3, CAST(150.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (484, 202, 1, CAST(49.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (485, 202, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (486, 202, 3, CAST(50.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (487, 203, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (488, 203, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (489, 203, 3, CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (490, 204, 1, CAST(74.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (491, 204, 2, CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (492, 204, 3, CAST(75.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (493, 205, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (494, 205, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (495, 205, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (496, 206, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (497, 206, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (498, 206, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (499, 207, 1, CAST(99.90 AS Decimal(10, 2)))
GO
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (500, 207, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (501, 207, 3, CAST(100.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (502, 208, 1, CAST(39.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (503, 208, 2, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (504, 208, 3, CAST(40.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (505, 209, 1, CAST(34.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (506, 209, 2, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (507, 209, 3, CAST(35.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (508, 210, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (509, 210, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (510, 210, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (511, 211, 1, CAST(119.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (512, 211, 2, CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (513, 211, 3, CAST(120.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (514, 212, 1, CAST(49.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (515, 212, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (516, 212, 3, CAST(50.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (517, 213, 1, CAST(79.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (518, 213, 2, CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (519, 213, 3, CAST(80.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (520, 214, 1, CAST(69.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (521, 214, 2, CAST(70.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (522, 214, 3, CAST(70.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (523, 215, 1, CAST(59.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (524, 215, 2, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (525, 215, 3, CAST(60.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (526, 216, 1, CAST(89.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (527, 216, 2, CAST(90.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (528, 216, 3, CAST(90.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (529, 217, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (530, 217, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (531, 217, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (532, 218, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (533, 218, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (534, 218, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (535, 219, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (536, 219, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (537, 219, 3, CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (538, 220, 1, CAST(44.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (539, 220, 2, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (540, 220, 3, CAST(45.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (541, 221, 1, CAST(34.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (542, 221, 2, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (543, 221, 3, CAST(35.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (544, 222, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (545, 222, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (546, 222, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (547, 223, 1, CAST(1.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (548, 223, 2, CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (549, 223, 3, CAST(2.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (550, 224, 1, CAST(1.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (551, 224, 2, CAST(1.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (552, 224, 3, CAST(1.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (553, 225, 1, CAST(2.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (554, 225, 2, CAST(3.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (555, 225, 3, CAST(3.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (556, 226, 1, CAST(3.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (557, 226, 2, CAST(4.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (558, 226, 3, CAST(4.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (559, 227, 1, CAST(4.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (560, 227, 2, CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (561, 227, 3, CAST(5.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (562, 228, 1, CAST(5.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (563, 228, 2, CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (564, 228, 3, CAST(6.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (565, 229, 1, CAST(19.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (566, 229, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (567, 229, 3, CAST(20.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (568, 230, 1, CAST(24.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (569, 230, 2, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (570, 230, 3, CAST(25.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (571, 231, 1, CAST(0.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (572, 231, 2, CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (573, 231, 3, CAST(1.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (574, 232, 1, CAST(2.40 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (575, 232, 2, CAST(2.50 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (576, 232, 3, CAST(2.60 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (577, 233, 1, CAST(11.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (578, 233, 2, CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (579, 233, 3, CAST(12.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (580, 234, 1, CAST(17.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (581, 234, 2, CAST(18.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (582, 234, 3, CAST(18.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (583, 235, 1, CAST(7.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (584, 235, 2, CAST(8.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (585, 235, 3, CAST(8.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (586, 236, 1, CAST(2.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (587, 236, 2, CAST(3.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (588, 236, 3, CAST(3.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (589, 237, 1, CAST(14.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (590, 237, 2, CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (591, 237, 3, CAST(15.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (592, 238, 1, CAST(9.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (593, 238, 2, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (594, 238, 3, CAST(10.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (595, 239, 1, CAST(11.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (596, 239, 2, CAST(12.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (597, 239, 3, CAST(12.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (598, 240, 1, CAST(5.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (599, 240, 2, CAST(6.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (600, 240, 3, CAST(6.10 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (601, 241, 1, CAST(29.90 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (602, 241, 2, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[ProductPrices] ([ProductPriceID], [ProductID], [MarketID], [Price]) VALUES (603, 241, 3, CAST(30.10 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[ProductPrices] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (41, N'Ekmek', 1, N'1234567890123')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (42, N'Süt', 1, N'2345678901234')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (43, N'Pirinç', 1, N'3456789012345')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (44, N'Makarna', 1, N'4567890123456')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (45, N'Zeytin', 1, N'5678901234567')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (46, N'Peynir', 1, N'6789012345678')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (47, N'Yoğurt', 1, N'7890123456789')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (48, N'Tavuk', 1, N'8901234567890')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (49, N'Balık', 1, N'9012345678901')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (50, N'Domates', 1, N'0123456789012')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (51, N'Salatalık', 1, N'1234509876543')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (52, N'Patates', 1, N'2345609876543')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (53, N'Soğan', 1, N'3456709876543')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (54, N'Biber', 1, N'4567809876543')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (55, N'Karpuz', 1, N'5678909876543')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (56, N'Elma', 1, N'6789010987654')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (57, N'Portakal', 1, N'7890120987654')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (58, N'Muz', 1, N'8901230987654')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (59, N'Üzüm', 1, N'9012340987654')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (60, N'Çilek', 1, N'0123456789000')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (61, N'Deterjan', 2, N'1234567890444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (62, N'Bulaşık Deterjanı', 2, N'2345678901555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (63, N'Çamaşır Suyu', 2, N'3456789012666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (64, N'Sabun', 2, N'4567890123777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (65, N'Şampuan', 2, N'5678901234888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (66, N'Saç Kremi', 2, N'6789012345999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (67, N'Diş Macunu', 2, N'7890123456111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (68, N'Diş Fırçası', 2, N'8901234567222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (69, N'Tuvalet Kağıdı', 2, N'9012345678333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (70, N'Havlu Kağıt', 2, N'0123456789444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (71, N'El Dezenfektanı', 2, N'1234567890555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (72, N'Yüzey Temizleyici', 2, N'2345678901666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (73, N'Cam Silici', 2, N'3456789012777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (74, N'Banyo Temizleyici', 2, N'4567890123888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (75, N'Mutfak Temizleyici', 2, N'5678901234999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (76, N'Çöp Torbası', 2, N'6789012346111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (77, N'Çamaşır Yumuşatıcı', 2, N'7890123456222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (78, N'Kireç Önleyici', 2, N'8901234567333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (79, N'Bebek Şampuanı', 2, N'9012345678444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (80, N'Halı Şampuanı', 2, N'0123456789555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (81, N'Televizyon', 3, N'1234567890777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (82, N'Laptop', 3, N'2345678901888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (83, N'Tablet', 3, N'3456789012999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (84, N'Cep Telefonu', 3, N'4567890123111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (85, N'Kulaklık', 3, N'5678901234222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (86, N'Bluetooth Hoparlör', 3, N'6789012345333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (87, N'Klavye', 3, N'7890123456444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (88, N'Mouse', 3, N'8901234567555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (89, N'Powerbank', 3, N'9012345678666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (90, N'Akıllı Saat', 3, N'0123456789777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (91, N'Fotoğraf Makinesi', 3, N'1234567890888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (92, N'Video Kamera', 3, N'2345678901999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (93, N'Hoparlör', 3, N'3456789013111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (94, N'Mikrofon', 3, N'4567890124222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (95, N'Oyun Konsolu', 3, N'5678901235333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (96, N'VR Gözlük', 3, N'6789012346444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (97, N'E-kitap Okuyucu', 3, N'7890123457555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (98, N'Akıllı Bileklik', 3, N'8901234568666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (99, N'Dron', 3, N'9012345679777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (100, N'Taşınabilir Disk', 3, N'0123456789888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (101, N'Tişört', 4, N'1234567891999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (102, N'Kot Pantolon', 4, N'2345678902111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (103, N'Mont', 4, N'3456789013222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (104, N'Etek', 4, N'4567890124333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (105, N'Şapka', 4, N'5678901235444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (106, N'Eşofman', 4, N'6789012346555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (107, N'Çorap', 4, N'7890123457666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (108, N'Gömlek', 4, N'8901234568777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (109, N'Ceket', 4, N'9012345679888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (110, N'Kravat', 4, N'0123456790111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (111, N'Elbise', 4, N'1234567890222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (112, N'Bluz', 4, N'2345678901333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (113, N'Atkı', 4, N'3456789012444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (114, N'Bere', 4, N'4567890123555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (115, N'Şal', 4, N'5678901234666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (116, N'Hırka', 4, N'6789012345777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (117, N'Spor Ayakkabı', 4, N'7890123456888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (118, N'Bot', 4, N'8901234567999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (119, N'Yelek', 4, N'9012345678111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (120, N'Kemer', 4, N'0123456789222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (121, N'Diş Macunu', 5, N'1234567890333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (122, N'Diş Fırçası', 5, N'2345678901444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (123, N'El Sabunu', 5, N'3456789012555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (124, N'Vücut Losyonu', 5, N'4567890123666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (125, N'Deodorant', 5, N'5678901234777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (126, N'Tıraş Köpüğü', 5, N'6789012345888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (127, N'Tıraş Makinesi', 5, N'7890123456999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (128, N'Şampuan', 5, N'8901234567111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (129, N'Saç Kremi', 5, N'9012345678222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (130, N'Duş Jeli', 5, N'0123456789333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (131, N'Cilt Temizleme Jeli', 5, N'1234567890444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (132, N'Nemlendirici Krem', 5, N'3456789013555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (133, N'El Kremi', 5, N'4567890124666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (134, N'Yüz Kremi', 5, N'5678901235777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (135, N'Göz Kremi', 5, N'6789012346888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (136, N'Peeling', 5, N'7890123457999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (137, N'Saç Maskesi', 5, N'8901234568111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (138, N'Saç Spreyi', 5, N'9012345679222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (139, N'Tarak', 5, N'0123456789333')
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (140, N'Fırça', 5, N'1234567890444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (141, N'Bebek Bezi', 6, N'1234567890555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (142, N'Bebek Şampuanı', 6, N'2345678901666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (143, N'Bebek Losyonu', 6, N'3456789012777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (144, N'Bebek Sabunu', 6, N'4567890123888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (145, N'Bebek Yağı', 6, N'5678901234999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (146, N'Islak Mendil', 6, N'6789012346111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (147, N'Bebek Maması', 6, N'7890123457222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (148, N'Bebek Maması (Organik)', 6, N'8901234568333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (149, N'Emzik', 6, N'9012345679444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (150, N'Biberon', 6, N'0123456789555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (151, N'Bebek Çantası', 6, N'1234567890666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (152, N'Bebek Arabası', 6, N'2345678901777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (153, N'Bebek Karyolası', 6, N'3456789012888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (154, N'Bebek Giyim', 6, N'4567890123999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (155, N'Bebek Battaniyesi', 6, N'5678901235111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (156, N'Bebek Havlusu', 6, N'6789012346222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (157, N'Bebek Yastığı', 6, N'7890123457333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (158, N'Bebek Patiği', 6, N'8901234568444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (159, N'Bebek Pijaması', 6, N'9012345679555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (160, N'Bebek Önlüğü', 6, N'0123456789666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (161, N'Tabak', 7, N'1234567890777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (162, N'Bardak', 7, N'2345678901888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (163, N'Çatal', 7, N'3456789012999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (164, N'Kaşık', 7, N'4567890123111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (165, N'Bıçak', 7, N'5678901234222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (166, N'Çaydanlık', 7, N'6789012345333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (167, N'Tencere', 7, N'7890123456444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (168, N'Tava', 7, N'8901234567555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (169, N'Kettle', 7, N'9012345678666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (170, N'Blender', 7, N'0123456789777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (171, N'Ütü', 7, N'1234567890888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (172, N'Mikrodalga', 7, N'2345678901999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (173, N'Fırın', 7, N'3456789013111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (174, N'Buzdolabı', 7, N'4567890124222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (175, N'Çamaşır Makinesi', 7, N'5678901235333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (176, N'Bulaşık Makinesi', 7, N'6789012346444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (177, N'Elektrik Süpürgesi', 7, N'7890123457555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (178, N'Hava Nemlendirici', 7, N'8901234568666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (179, N'Hava Temizleyici', 7, N'9012345679777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (180, N'Klima', 7, N'0123456789888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (181, N'Kedi Maması', 8, N'1234567890999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (182, N'Köpek Maması', 8, N'2345678902111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (183, N'Kedi Kumu', 8, N'3456789013222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (184, N'Köpek Tasmaları', 8, N'4567890124333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (185, N'Kedi Oyuncağı', 8, N'5678901235444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (186, N'Köpek Oyuncağı', 8, N'6789012346555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (187, N'Kedi Yatağı', 8, N'7890123457666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (188, N'Köpek Yatağı', 8, N'8901234568777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (189, N'Kuş Kafesi', 8, N'9012345679888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (190, N'Kuş Yemi', 8, N'0123456790111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (191, N'Akvaryum', 8, N'1234567890222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (192, N'Balık Yemi', 8, N'2345678901333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (193, N'Tavşan Kafesi', 8, N'3456789012444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (194, N'Tavşan Yemi', 8, N'4567890123555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (195, N'Kedi Tırmalama Tahtası', 8, N'5678901234666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (196, N'Köpek Kıyafeti', 8, N'6789012345777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (197, N'Kedi Kıyafeti', 8, N'7890123456888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (198, N'Kuş Oyuncağı', 8, N'8901234567999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (199, N'Balık Tankı', 8, N'9012345678111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (200, N'Kedi Tasma ve Bileklikleri', 8, N'0123456789222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (201, N'Lego Seti', 9, N'1234567891111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (202, N'Puzzle', 9, N'2345678902222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (203, N'Oyuncak Araba', 9, N'3456789013333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (204, N'Bebek', 9, N'4567890124444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (205, N'Oyun Hamuru', 9, N'5678901235555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (206, N'Kukla', 9, N'6789012346666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (207, N'Masa Oyunu', 9, N'7890123457777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (208, N'Yapboz', 9, N'8901234568888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (209, N'Kum Seti', 9, N'9012345679999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (210, N'Deniz Topu', 9, N'0123456780111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (211, N'Oyuncak Tren', 9, N'1234567891222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (212, N'Oyuncak Kamyon', 9, N'2345678902333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (213, N'Oyuncak Helikopter', 9, N'3456789013444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (214, N'Oyuncak Tekne', 9, N'4567890124555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (215, N'Peluş Oyuncak', 9, N'5678901235666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (216, N'Barbie Bebek', 9, N'6789012346777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (217, N'Oyuncak Silah', 9, N'7890123457888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (218, N'Oyuncak Kılıç', 9, N'8901234568999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (219, N'Oyuncak Tabanca', 9, N'9012345679111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (220, N'Oyuncak Sualtı Tüfeği', 9, N'0123456781222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (221, N'Oyuncak Kazı Seti', 9, N'1234567892333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (222, N'Defter', 10, N'1234567891444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (223, N'Kalem', 10, N'2345678902555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (224, N'Silgi', 10, N'3456789013666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (225, N'Kalemtraş', 10, N'4567890124777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (226, N'Cetvel', 10, N'5678901235888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (227, N'Makas', 10, N'6789012346999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (228, N'Yapıştırıcı', 10, N'7890123457111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (229, N'Kalem Kutusu', 10, N'8901234568222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (230, N'Kırtasiye Seti', 10, N'9012345679333')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (231, N'Kurşun Kalem', 10, N'0123456789444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (232, N'Tükenmez Kalem', 10, N'1234567890555')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (233, N'Keçeli Kalem', 10, N'2345678901666')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (234, N'Renkli Kalemler', 10, N'3456789012777')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (235, N'Not Defteri', 10, N'4567890123888')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (236, N'Post-it', 10, N'5678901234999')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (237, N'Klasör', 10, N'6789012346111')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (238, N'Zımba Makinesi', 10, N'7890123457222')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (239, N'Delgeç', 10, N'8901234568333')
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (240, N'Karton', 10, N'9012345679444')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Barcode]) VALUES (241, N'Masaüstü Organizer', 10, N'0123456789555')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingList] ON 

INSERT [dbo].[ShoppingList] ([ShoppingListID], [ProductID], [MarketID], [Quantity]) VALUES (31, 41, 2, 2)
SET IDENTITY_INSERT [dbo].[ShoppingList] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Email]) VALUES (1, N'ahmet', N'password123', N'ahmet@example.com')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Email]) VALUES (2, N'ayşe', N'password123', N'ayse@example.com')
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [Email]) VALUES (3, N'mehmet', N'password123', N'mehmet@example.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Lists]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[ProductPrices]  WITH CHECK ADD FOREIGN KEY([MarketID])
REFERENCES [dbo].[Markets] ([MarketID])
GO
ALTER TABLE [dbo].[ProductPrices]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[ShoppingList]  WITH CHECK ADD FOREIGN KEY([MarketID])
REFERENCES [dbo].[Markets] ([MarketID])
GO
ALTER TABLE [dbo].[ShoppingList]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
USE [master]
GO
ALTER DATABASE [AlisverisUygulamasi] SET  READ_WRITE 
GO
