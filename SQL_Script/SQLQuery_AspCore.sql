USE [master]
GO
/****** Object:  Database [SuperShopCoreDB]    Script Date: 04 03 2020 1:08:54 PM ******/
CREATE DATABASE [SuperShopCoreDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
--( NAME = N'SuperShopCoreDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SuperShopCoreDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'SuperShopCoreDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SuperShopCoreDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
--GO
ALTER DATABASE [SuperShopCoreDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuperShopCoreDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuperShopCoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SuperShopCoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SuperShopCoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SuperShopCoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SuperShopCoreDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SuperShopCoreDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SuperShopCoreDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SuperShopCoreDB] SET  MULTI_USER 
GO
ALTER DATABASE [SuperShopCoreDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SuperShopCoreDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SuperShopCoreDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SuperShopCoreDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SuperShopCoreDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SuperShopCoreDB] SET QUERY_STORE = OFF
GO
USE [SuperShopCoreDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [SuperShopCoreDB]
GO
/****** Object:  User [BUILTIN\Users]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE USER [BUILTIN\Users] FOR LOGIN [BUILTIN\Users]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[phone] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuHelperModel]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuHelperModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[MenuModelId] [int] NULL,
 CONSTRAINT [PK_MenuHelperModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuModel]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuHelperModelId] [int] NOT NULL,
	[RollId] [nvarchar](max) NULL,
	[RollIdText] [nvarchar](max) NULL,
 CONSTRAINT [PK_MenuModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuModelManage]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuModelManage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuModelId] [int] NOT NULL,
	[Retrive] [bit] NOT NULL,
	[Insert] [bit] NOT NULL,
	[Update] [bit] NOT NULL,
	[Delete] [bit] NOT NULL,
 CONSTRAINT [PK_MenuModelManage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CoustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalAmount] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[UnitPrice] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentModel]    Script Date: 04 03 2020 1:08:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_StudentModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200226204815_Liron', N'2.1.11-servicing-32099')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200301150040_MyFirst', N'2.1.11-servicing-32099')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5b11b564-4fa6-4909-8e49-e53a9b1489f3', N'Customer', N'CUSTOMER', N'fe648c8f-b7d7-4e3a-8b10-4e8c371c28b1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'86e6cce6-9346-4b17-95bd-a6365cdaa2df', N'Manager', N'MANAGER', N'd3a1184d-41ae-4346-b12b-873e033d5c7e')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', N'Admin', N'ADMIN', N'96491bbb-f1db-4616-a285-87c275aec997')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a080a03-4d01-457b-9169-355bce6b695c', N'5b11b564-4fa6-4909-8e49-e53a9b1489f3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd586a1c6-cda8-4663-8d64-c358d91ddc45', N'86e6cce6-9346-4b17-95bd-a6365cdaa2df')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'44534073-fdca-4e39-911b-e1a244f7c162', N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'44534073-fdca-4e39-911b-e1a244f7c162', N'a@gmail.com', N'A@GMAIL.COM', N'a@gmail.com', N'A@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDzXsvhesusURkU/Ok/e41yPgxzI8PO/HGuNdrfSBal0AbzJgh+2IzOQzW2mQIu74A==', N'IQV34RPVGM4VHI6TOHXPEJFQGQXDNM4Q', N'7600b8b2-fd1b-4a54-84d3-bd2e59c45a57', NULL, 0, 0, NULL, 1, 0, N'a', N'a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'6a080a03-4d01-457b-9169-355bce6b695c', N'c@gmail.com', N'C@GMAIL.COM', N'c@gmail.com', N'C@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBJbyYYcGTP7om1I42rjh7TBk4nBlqzkfyLwqtrg4PGQF2qEG+1iWDOVW5oRxzXugA==', N'7WXXERHJQLBRJOBV37YCSLZ2DCLXDU5X', N'741c630a-8b3a-4839-9f55-087207a92f3e', NULL, 0, 0, NULL, 1, 0, N'c', N'c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'd586a1c6-cda8-4663-8d64-c358d91ddc45', N'b@gmail.com', N'B@GMAIL.COM', N'b@gmail.com', N'B@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJdzTZTvkIRUtyjqA+48gw2DOw7sGF53YkEZj0ANT0FbDcAjInPEm5htylnm5/53vg==', N'U3WFD57B4AI66BWHO6H3HOT3YYU2IDTX', N'b7112317-dbcb-4318-ab7a-f2980c32c727', NULL, 0, 0, NULL, 1, 0, N'b', N'b')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Baby Food & Care')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Chocolates & Candies')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Pet Care')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Fruits & Vagetables')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Meat & Fish')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'Breads, Biscuits & Cakes')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'Milk & Dairy')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (8, N'Snacks & Instant Foods')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (9, N'Drinks')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (10, N'Cooking Essentials')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (11, N'Bags')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (12, N'Fashon / Lifestyle')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (13, N'Fruit')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (14, N'Fruits & Vagetables')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (15, N'Meat & Fish')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (1, N'Md Kawser Ahmed', N'Dhaka', N'Bangladesh', 12345)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (2, N'Md Kawser ', N'Dhaka', N'Bangladesh', 12345)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (3, N'Zahid Hassan', N'Dhaka', N'Bangladesh', 12345)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (4, N'Akram', N'Dhaka', N'Bangladesh', 12456)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (5, N'Sharmin ', N'Dhaka', N'Bangladesh', 12451)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (6, N'Niloy', N'Dhaka', N'Bangladesh', 12345)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (7, N'Imran', N'Dhaka', N'Bangladesh', 12345)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (8, N'Masud', N'Dhaka', N'Bangladesh', 12345)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (9, N'Sorowar', N'Dhaka', N'Bangladesh', 12456)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (10, N'Zulshas', N'Dhaka', N'Bangladesh', 12489)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (11, N'Robiul ', N'Dhaka', N'Bangladesh', 12347)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (12, N'Akhonzi', N'Dhaka', N'Bangladesh', 12489)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [City], [Country], [phone]) VALUES (13, N'Rokeya', N'Dhaka', N'Bangladesh', 12456)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuHelperModel] ON 
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (1, N'Customers', N'Index', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (2, N'Customers', N'Create', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (3, N'Customers', N'Edit', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (4, N'Customers', N'Delete', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (5, N'Products', N'Index', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (6, N'Products', N'Create', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (9, N'Products', N'Edit', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (10, N'Products', N'Delete', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (11, N'Orders', N'Index', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (12, N'Orders', N'Create', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (13, N'Orders', N'Edit', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (14, N'Orders', N'Delete', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (15, N'Categories', N'Index', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (16, N'Categories', N'Create', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (17, N'Categories', N'Edit', NULL)
GO
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (19, N'Categories', N'Delete', NULL)
GO
SET IDENTITY_INSERT [dbo].[MenuHelperModel] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuModel] ON 
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (1, 1, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (4, 2, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (5, 3, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (6, 4, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (7, 5, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (8, 6, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (9, 9, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (10, 9, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (11, 10, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (12, 11, N'5b11b564-4fa6-4909-8e49-e53a9b1489f3', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (13, 12, N'5b11b564-4fa6-4909-8e49-e53a9b1489f3', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (14, 13, N'5b11b564-4fa6-4909-8e49-e53a9b1489f3', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (15, 13, N'5b11b564-4fa6-4909-8e49-e53a9b1489f3', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (16, 14, N'5b11b564-4fa6-4909-8e49-e53a9b1489f3', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (17, 15, N'86e6cce6-9346-4b17-95bd-a6365cdaa2df', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (18, 16, N'86e6cce6-9346-4b17-95bd-a6365cdaa2df', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (19, 17, N'86e6cce6-9346-4b17-95bd-a6365cdaa2df', NULL)
GO
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (21, 19, N'cfdfbcd7-840f-49bf-814a-4c36bb4d24ef', NULL)
GO
SET IDENTITY_INSERT [dbo].[MenuModel] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuModelManage] ON 
GO
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (1, 12, 1, 0, 0, 0)
GO
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (2, 13, 0, 1, 1, 1)
GO
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (3, 14, 0, 1, 1, 1)
GO
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (4, 15, 1, 0, 1, 0)
GO
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (5, 16, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[MenuModelManage] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [CoustomerID], [ProductID], [OrderNumber], [OrderDate], [TotalAmount]) VALUES (1, 1, 1, 123, CAST(N'2020-03-19T00:00:00.0000000' AS DateTime2), 2150)
GO
INSERT [dbo].[Orders] ([OrderID], [CoustomerID], [ProductID], [OrderNumber], [OrderDate], [TotalAmount]) VALUES (2, 2, 3, 1245, CAST(N'2020-03-02T00:00:00.0000000' AS DateTime2), 1258)
GO
INSERT [dbo].[Orders] ([OrderID], [CoustomerID], [ProductID], [OrderNumber], [OrderDate], [TotalAmount]) VALUES (3, 5, 5, 1235, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2), 5214)
GO
INSERT [dbo].[Orders] ([OrderID], [CoustomerID], [ProductID], [OrderNumber], [OrderDate], [TotalAmount]) VALUES (4, 6, 4, 1245, CAST(N'2020-03-20T00:00:00.0000000' AS DateTime2), 1234)
GO
INSERT [dbo].[Orders] ([OrderID], [CoustomerID], [ProductID], [OrderNumber], [OrderDate], [TotalAmount]) VALUES (5, 8, 7, 1245, CAST(N'2020-03-09T00:00:00.0000000' AS DateTime2), 3214)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (1, 1, N'Baby Food', 500, N'/images/img_1.jpg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (2, 1, N'Baby Wipes', 400, N'/images/img_2.jpg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (3, 2, N'Snickers Single', 120, N'/images/img_19.jpg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (4, 2, N'Fresh Stick', 410, N'/images/img_3.jpeg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (5, 2, N'Pran Mango Bar', 200, N'/images/img_5.jpg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (6, 1, N'Pet Food', 123, N'/images/img_4.jpg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (7, 4, N'Fruits', 410, N'/images/img_7.jpg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (8, 4, N'Vagetables', 463, N'/images/img_8.jpg')
GO
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [UnitPrice], [ImageUrl]) VALUES (9, 5, N'Meat', 500, N'/images/img_9.jpg')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuHelperModel_MenuModelId]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_MenuHelperModel_MenuModelId] ON [dbo].[MenuHelperModel]
(
	[MenuModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuModelManage_MenuModelId]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_MenuModelManage_MenuModelId] ON [dbo].[MenuModelManage]
(
	[MenuModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CoustomerID]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CoustomerID] ON [dbo].[Orders]
(
	[CoustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ProductID]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ProductID] ON [dbo].[Orders]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryID]    Script Date: 04 03 2020 1:08:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryID] ON [dbo].[Product]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[MenuHelperModel]  WITH CHECK ADD  CONSTRAINT [FK_MenuHelperModel_MenuModel_MenuModelId] FOREIGN KEY([MenuModelId])
REFERENCES [dbo].[MenuModel] ([Id])
GO
ALTER TABLE [dbo].[MenuHelperModel] CHECK CONSTRAINT [FK_MenuHelperModel_MenuModel_MenuModelId]
GO
ALTER TABLE [dbo].[MenuModelManage]  WITH CHECK ADD  CONSTRAINT [FK_MenuModelManage_MenuModel_MenuModelId] FOREIGN KEY([MenuModelId])
REFERENCES [dbo].[MenuModel] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuModelManage] CHECK CONSTRAINT [FK_MenuModelManage_MenuModel_MenuModelId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer_CoustomerID] FOREIGN KEY([CoustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer_CoustomerID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product_ProductID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryID]
GO
USE [master]
GO
ALTER DATABASE [SuperShopCoreDB] SET  READ_WRITE 
GO
