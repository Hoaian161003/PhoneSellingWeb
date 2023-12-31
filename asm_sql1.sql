USE [master]
GO
/****** Object:  Database [J5Shopa]    Script Date: 6/13/2023 8:00:01 PM ******/
CREATE DATABASE [J5Shopa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J5Shopa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\J5Shopa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J5Shopa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\J5Shopa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [J5Shopa] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J5Shopa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J5Shopa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J5Shopa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J5Shopa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J5Shopa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J5Shopa] SET ARITHABORT OFF 
GO
ALTER DATABASE [J5Shopa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J5Shopa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J5Shopa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J5Shopa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J5Shopa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J5Shopa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J5Shopa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J5Shopa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J5Shopa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J5Shopa] SET  ENABLE_BROKER 
GO
ALTER DATABASE [J5Shopa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J5Shopa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J5Shopa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J5Shopa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J5Shopa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J5Shopa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J5Shopa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J5Shopa] SET RECOVERY FULL 
GO
ALTER DATABASE [J5Shopa] SET  MULTI_USER 
GO
ALTER DATABASE [J5Shopa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J5Shopa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J5Shopa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J5Shopa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J5Shopa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J5Shopa] SET QUERY_STORE = OFF
GO
USE [J5Shopa]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/13/2023 8:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Activated] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
	[Photo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/13/2023 8:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [varchar](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/13/2023 8:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/13/2023 8:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/13/2023 8:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [varchar](4) NOT NULL,
	[Qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Activated], [Admin], [Photo]) VALUES (N'_Hi.imD', N'123', N'1', N'dsa', 0, 0, NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Activated], [Admin], [Photo]) VALUES (N'da', N'123', N'd', N'd', 1, 0, NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Activated], [Admin], [Photo]) VALUES (N'dat', N'123', N'Tran Tuan Dat', N'dat9a13@gmail.com', 1, 1, NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Activated], [Admin], [Photo]) VALUES (N'dat12', N'123', N'tranTuan dat', N'1', 1, 0, NULL)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Activated], [Admin], [Photo]) VALUES (N'thdch11', N'123', N'sad', N'dsa', 0, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1000', N'Iphone')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1001', N'Samsung')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1002', N'Oppo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1234', N'Realme')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'2002', N'Laptop')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (1, N'iPhone 14 Pro Max', N'1.jpg', 26.64, 1, N'1000', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (2, N'iPhone 14 Pro', N'2.jpg', 26.64, 1, N'1000', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (3, N'iPhone 11', N'3.jpeg', 24.89, 1, N'1000', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (4, N'iPhone 14', N'4.jpg', 24.89, 1, N'1000', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (5, N'iPhone 14 Plus', N'5.jpg', 19.49, 1, N'1000', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (6, N'iPhone 13', N'6.jpg', 19.49, 1, N'1000', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (7, N'iPhone 12', N'7.jpg', 21.79, 1, N'1000', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (8, N'Samsung Galaxy S23 Ultra 5G', N'8.jpg', 21.79, 1, N'1001', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (9, N'Galaxy S23+ 5G', N'9.jpg', 15.49, 1, N'1001', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (10, N'Samsung Galaxy Z Fold4 5G', N'11.jpg', 15.49, 1, N'1001', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (11, N'Samsung Galaxy S22 Ultra 5G', N'12.jpg', 24.89, 1, N'1001', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (12, N'Samsung Galaxy S23 5G', N'13.jpg', 19.49, 1, N'1001', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (13, N'MacBook Air 13 inch M1 2020 7-core GPU', N'16.jpg', 23.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (14, N'MacBook Air 13 inch M2 2022 8-core GPU', N'14.jpg', 43.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (15, N'MacBook Air 13 inch M2 2022 8-core GPU', N'15.jpg', 44.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (16, N'MacBook Air 13 inch M2 2022 10-core GPU', N'16.jpg', 45.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (17, N'MacBook Pro 13 inch M1 2020 8-core GPU', N'17.jpg', 39.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (18, N'MacBook Pro 16 inch M1 Pro 2021 16 core-GPU', N'18.jpg', 47.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (19, N'MacBook Pro 13 inch M2 2022 10-core GPU', N'19.jpg', 36.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (20, N'MacBook Pro 14 inch M1 Pro 2021 16-core GPU', N'20.jpg', 35.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (21, N'MacBook Pro 16 inch M1 Pro 2021 16-core GPU', N'15.jpg', 38.49, 1, N'2002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (22, N'OPPO Find N2 Flip 5G', N'25.jpg', 26.64, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (23, N'OPPO Reno8 T 5G', N'26.jpg', 65.49, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (24, N'OPPO Reno8 series', N'27.jpg', 34.49, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (25, N'OPPO A55', N'28.jpg', 34.49, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (26, N'OPPO Find X5 Pro 5G', N'29.jpg', 21.79, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (27, N'OPPO Reno6 Pro 5G', N'30.jpg', 21.79, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (28, N'OPPO Reno8 T', N'31.jpg', 34.49, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (29, N'OPPO Reno7 series', N'32.jpg', 34.49, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (30, N'OPPO A77s', N'33.jpg', 24.89, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (31, N'OPPO A96', N'34.jpg', 26.64, 1, N'1002', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (32, N'realme C55', N'35.jpg', 34.49, 1, N'1234', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (33, N'realme C30s', N'36.jpg', 24.89, 1, N'1234', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (34, N'Realme 10', N'37.jpg', 45.49, 1, N'1234', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (35, N'Realme 9i (6GB/128GB)', N'38.jpg', 15.49, 1, N'1234', 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (36, N'iPhone 14 Pro Max', N'1.jpg', 26.64, 1, N'1000', NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (38, N'iPhone 14 Pro Max', N'1.jpg', 26.64, 1, N'1000', NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (39, N'iPhone 14 Pro Max1', N'1.jpg', 26.64, 1, N'1000', NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Available], [CategoryId], [Qty]) VALUES (40, N'123', N'1.jpg', 1, 1, N'1000', NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Index [UQ__OrderDet__08D097A2C85F1D6C]    Script Date: 6/13/2023 8:00:02 PM ******/
ALTER TABLE [dbo].[OrderDetails] ADD UNIQUE NONCLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_Activated]  DEFAULT ((1)) FOR [Activated]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_Admin]  DEFAULT ((0)) FOR [Admin]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Qty]  DEFAULT ((1)) FOR [Qty]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
USE [master]
GO
ALTER DATABASE [J5Shopa] SET  READ_WRITE 
GO
