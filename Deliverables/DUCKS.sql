USE [master]
GO
/****** Object:  Database [GS]    Script Date: 11/16/2019 3:41:27 PM ******/
CREATE DATABASE [GS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GS] SET ARITHABORT OFF 
GO
ALTER DATABASE [GS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GS] SET  MULTI_USER 
GO
ALTER DATABASE [GS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GS] SET QUERY_STORE = OFF
GO
USE [GS]
GO
/****** Object:  Table [dbo].[GiaSu]    Script Date: 11/16/2019 3:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[Gioitinh] [int] NULL,
	[Ngaysinh] [nvarchar](250) NULL,
	[CMND] [nvarchar](250) NULL,
	[QueQuan] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[SDT] [nvarchar](250) NULL,
	[AnhCMNDtruoc] [nvarchar](250) NULL,
	[AnhCMNDsau] [nvarchar](250) NULL,
	[AnhThe] [nvarchar](250) NULL,
	[BangCap] [nvarchar](250) NULL,
	[TruongHoc] [nvarchar](250) NULL,
	[Nganh] [nvarchar](250) NULL,
	[Namtotnghiep] [nvarchar](250) NULL,
	[Uudien] [nvarchar](250) NULL,
	[MonDay] [nvarchar](250) NULL,
	[Khuvuc] [nvarchar](250) NULL,
	[Thoigianday] [nvarchar](250) NULL,
	[Mucluong] [nvarchar](250) NULL,
	[khac] [nvarchar](250) NULL,
	[Isshow] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/16/2019 3:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/16/2019 3:41:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NULL,
	[Role] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GiaSu] ON 

INSERT [dbo].[GiaSu] ([ID], [Ten], [Gioitinh], [Ngaysinh], [CMND], [QueQuan], [DiaChi], [Email], [SDT], [AnhCMNDtruoc], [AnhCMNDsau], [AnhThe], [BangCap], [TruongHoc], [Nganh], [Namtotnghiep], [Uudien], [MonDay], [Khuvuc], [Thoigianday], [Mucluong], [khac], [Isshow]) VALUES (24, N'Nguyễn Anh Thư', 1, N'12/12/2019', N'131356646456', N'đồng nai', N'ád', N'hoang', N'1132132131', N'\Content\Img\RK0003.jpg', N'\Content\Img\RK0003.jpg', N'\Content\Img\RK0003.jpg', N'sdfsf', N'sdfdsfds', N'sdfsdf', N'2019', NULL, N'Toán', N'sdfsdf', N'sdfsd', N'sdfsdf', N'sdfsdfds', 1)
INSERT [dbo].[GiaSu] ([ID], [Ten], [Gioitinh], [Ngaysinh], [CMND], [QueQuan], [DiaChi], [Email], [SDT], [AnhCMNDtruoc], [AnhCMNDsau], [AnhThe], [BangCap], [TruongHoc], [Nganh], [Namtotnghiep], [Uudien], [MonDay], [Khuvuc], [Thoigianday], [Mucluong], [khac], [Isshow]) VALUES (25, N'Phạm Ánh Ngân', 1, N'12/12/2019', N'131356646456', N'đồng nai', N'ád', N'hoang', N'1132132131', N'\Content\Img\RK0003.jpg', N'\Content\Img\RK0003.jpg', N'\Content\Img\RK0003.jpg', N'sdfsf', N'sdfdsfds', N'sdfsdf', N'2019', NULL, N'Văn', N'sdfsdf', N'sdfsd', N'sdfsdf', N'sdfsdfds', 1)
SET IDENTITY_INSERT [dbo].[GiaSu] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (2, N'member')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Email], [Password], [Role]) VALUES (1, N'admin', NULL, N'admin', 1)
INSERT [dbo].[User] ([UserID], [UserName], [Email], [Password], [Role]) VALUES (2, N'hoang', N'hoang', N'hoang', 2)
INSERT [dbo].[User] ([UserID], [UserName], [Email], [Password], [Role]) VALUES (3, N'admin', N'admin', NULL, 2)
INSERT [dbo].[User] ([UserID], [UserName], [Email], [Password], [Role]) VALUES (4, N'hoang', N'hoang', N'hoang', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [GS] SET  READ_WRITE 
GO
