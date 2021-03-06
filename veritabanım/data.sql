USE [master]
GO
/****** Object:  Database [bingol_defterdarligi]    Script Date: 8.03.2018 10:20:53 ******/
CREATE DATABASE [bingol_defterdarligi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bingol_defterdarligi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\bingol_defterdarligi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bingol_defterdarligi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\bingol_defterdarligi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bingol_defterdarligi] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bingol_defterdarligi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bingol_defterdarligi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET ARITHABORT OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bingol_defterdarligi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bingol_defterdarligi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bingol_defterdarligi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bingol_defterdarligi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET RECOVERY FULL 
GO
ALTER DATABASE [bingol_defterdarligi] SET  MULTI_USER 
GO
ALTER DATABASE [bingol_defterdarligi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bingol_defterdarligi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bingol_defterdarligi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bingol_defterdarligi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bingol_defterdarligi] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bingol_defterdarligi', N'ON'
GO
ALTER DATABASE [bingol_defterdarligi] SET QUERY_STORE = OFF
GO
USE [bingol_defterdarligi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [bingol_defterdarligi]
GO
/****** Object:  Table [dbo].[birimTbl]    Script Date: 8.03.2018 10:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[birimTbl](
	[birimID] [int] IDENTITY(1,1) NOT NULL,
	[birimAdi] [nvarchar](50) NULL,
	[birimMuduru] [nvarchar](50) NULL,
 CONSTRAINT [PK_birimTbl] PRIMARY KEY CLUSTERED 
(
	[birimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[duyruTbl]    Script Date: 8.03.2018 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[duyruTbl](
	[duyruID] [int] IDENTITY(1,1) NOT NULL,
	[duyruAdi] [nvarchar](500) NULL,
	[duyruOzet] [nvarchar](500) NULL,
	[duyruIcerik] [nvarchar](max) NULL,
	[duyruTarih] [datetime] NULL,
 CONSTRAINT [PK_duyruTbl] PRIMARY KEY CLUSTERED 
(
	[duyruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formTbl]    Script Date: 8.03.2018 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formTbl](
	[formID] [int] IDENTITY(1,1) NOT NULL,
	[formAdi] [nvarchar](500) NULL,
	[formIcerigi] [nvarchar](max) NULL,
 CONSTRAINT [PK_formTbl] PRIMARY KEY CLUSTERED 
(
	[formID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[haberTbl]    Script Date: 8.03.2018 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[haberTbl](
	[haberID] [int] IDENTITY(1,1) NOT NULL,
	[habarAdi] [nvarchar](500) NULL,
	[haberOzeti] [nvarchar](500) NULL,
	[haberResim] [nvarchar](max) NULL,
	[haberIcerik] [nvarchar](max) NULL,
	[haberTarih] [datetime] NULL,
 CONSTRAINT [PK_haberTbl] PRIMARY KEY CLUSTERED 
(
	[haberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[icKontrolTbl]    Script Date: 8.03.2018 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[icKontrolTbl](
	[icKontrolID] [int] IDENTITY(1,1) NOT NULL,
	[adi] [nvarchar](50) NULL,
	[icerik] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ihaleTbl]    Script Date: 8.03.2018 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ihaleTbl](
	[ihaleID] [int] IDENTITY(1,1) NOT NULL,
	[ihaleAdi] [nvarchar](500) NULL,
	[ihaleOzet] [nvarchar](500) NULL,
	[ihaleIcerik] [nvarchar](max) NULL,
	[ihaleTarih] [datetime] NULL,
 CONSTRAINT [PK_ihaleTbl] PRIMARY KEY CLUSTERED 
(
	[ihaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iletisimTbl]    Script Date: 8.03.2018 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisimTbl](
	[iletisimID] [int] IDENTITY(1,1) NOT NULL,
	[tel] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personelTbl]    Script Date: 8.03.2018 10:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personelTbl](
	[personelID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAdiSoyad] [nvarchar](100) NULL,
	[personelGorevi] [nvarchar](50) NULL,
	[personelHakkında] [nvarchar](max) NULL,
 CONSTRAINT [PK_personelTbl] PRIMARY KEY CLUSTERED 
(
	[personelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[duyruTbl] ADD  CONSTRAINT [DF_duyruTbl_duyruTarih]  DEFAULT (getdate()) FOR [duyruTarih]
GO
ALTER TABLE [dbo].[haberTbl] ADD  CONSTRAINT [DF_haberTbl_haberTarih]  DEFAULT (getdate()) FOR [haberTarih]
GO
ALTER TABLE [dbo].[ihaleTbl] ADD  CONSTRAINT [DF_ihaleTbl_ihaleTarih]  DEFAULT (getdate()) FOR [ihaleTarih]
GO
USE [master]
GO
ALTER DATABASE [bingol_defterdarligi] SET  READ_WRITE 
GO
