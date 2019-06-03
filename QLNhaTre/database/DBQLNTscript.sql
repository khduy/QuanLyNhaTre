USE [master]
GO
/****** Object:  Database [QLNT]    Script Date: 03/06/2019 12:31:45 PM ******/
CREATE DATABASE [QLNT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLNT.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLNT_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNT] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLNT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNT] SET  MULTI_USER 
GO
ALTER DATABASE [QLNT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLNT]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 03/06/2019 12:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[NGAYSINH] [smalldatetime] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[DANTOC] [nvarchar](50) NULL,
	[TONGIAO] [nvarchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[TRINHDO] [nvarchar](50) NULL,
	[NGAYVAOLAM] [smalldatetime] NULL,
	[MALOP] [int] NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 03/06/2019 12:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MAHS] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[NGAYSINH] [smalldatetime] NULL,
	[DANTOC] [nvarchar](50) NULL,
	[NGAYVAOLOP] [smalldatetime] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[HOTENCHA] [nvarchar](50) NULL,
	[NGHENGHIEPCHA] [nvarchar](50) NULL,
	[SDTCHA] [varchar](50) NULL,
	[HOTENME] [nvarchar](50) NULL,
	[NGHENGHIEPME] [nvarchar](50) NULL,
	[SDTME] [varchar](50) NULL,
	[MALOP] [int] NULL,
 CONSTRAINT [PK_HOCSINH] PRIMARY KEY CLUSTERED 
(
	[MAHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHOILOP]    Script Date: 03/06/2019 12:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOILOP](
	[MAKHOI] [int] IDENTITY(1,1) NOT NULL,
	[TENKHOI] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KHOILOP] PRIMARY KEY CLUSTERED 
(
	[MAKHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOP]    Script Date: 03/06/2019 12:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [int] IDENTITY(1,1) NOT NULL,
	[MAKHOI] [int] NOT NULL,
	[TENLOP] [nvarchar](50) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[NAMHOC] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 03/06/2019 12:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TAIKHOAN] [varchar](50) NOT NULL,
	[MATKHAU] [varchar](50) NOT NULL,
	[TEN] [nvarchar](50) NOT NULL,
	[QUYEN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TTSK]    Script Date: 03/06/2019 12:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTSK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[THANGDO] [int] NULL,
	[CHIEUCAO] [float] NULL,
	[DGCC] [nvarchar](50) NULL,
	[CANNANG] [float] NULL,
	[DGCN] [nvarchar](50) NULL,
	[DGSK] [nvarchar](50) NULL,
	[MAHS] [int] NOT NULL,
 CONSTRAINT [PK_TTSK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KHOILOP] ON 

INSERT [dbo].[KHOILOP] ([MAKHOI], [TENKHOI]) VALUES (1, N'18-24 tháng')
INSERT [dbo].[KHOILOP] ([MAKHOI], [TENKHOI]) VALUES (2, N'24-36 tháng')
SET IDENTITY_INSERT [dbo].[KHOILOP] OFF
/****** Object:  Index [fkIdx_95]    Script Date: 03/06/2019 12:31:45 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_95] ON [dbo].[GIAOVIEN]
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_67]    Script Date: 03/06/2019 12:31:45 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_67] ON [dbo].[HOCSINH]
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_17]    Script Date: 03/06/2019 12:31:45 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_17] ON [dbo].[LOP]
(
	[MAKHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fkIdx_79]    Script Date: 03/06/2019 12:31:45 PM ******/
CREATE NONCLUSTERED INDEX [fkIdx_79] ON [dbo].[TTSK]
(
	[MAHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_95] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_95]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_67] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_67]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_17] FOREIGN KEY([MAKHOI])
REFERENCES [dbo].[KHOILOP] ([MAKHOI])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_17]
GO
ALTER TABLE [dbo].[TTSK]  WITH CHECK ADD  CONSTRAINT [FK_79] FOREIGN KEY([MAHS])
REFERENCES [dbo].[HOCSINH] ([MAHS])
GO
ALTER TABLE [dbo].[TTSK] CHECK CONSTRAINT [FK_79]
GO
USE [master]
GO
ALTER DATABASE [QLNT] SET  READ_WRITE 
GO
