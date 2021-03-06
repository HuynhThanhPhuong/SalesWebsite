USE [master]
GO
/****** Object:  Database [HuynhThanhPhuong_2118110142]    Script Date: 8/27/2021 11:54:36 AM ******/
CREATE DATABASE [HuynhThanhPhuong_2118110142]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HuynhThanhPhuong_2118110142', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HuynhThanhPhuong_2118110142.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HuynhThanhPhuong_2118110142_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HuynhThanhPhuong_2118110142_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HuynhThanhPhuong_2118110142].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET ARITHABORT OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET RECOVERY FULL 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET  MULTI_USER 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HuynhThanhPhuong_2118110142', N'ON'
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET QUERY_STORE = OFF
GO
USE [HuynhThanhPhuong_2118110142]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Parentid] [int] NOT NULL,
	[Orders] [int] NOT NULL,
	[Img] [nvarchar](max) NULL,
	[Metakey] [nvarchar](155) NOT NULL,
	[Metadesc] [nvarchar](155) NOT NULL,
	[Create_By] [int] NULL,
	[Create_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Replaydetail] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[metadesc] [nvarchar](max) NULL,
	[Create_At] [datetime] NULL,
	[Create_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Link]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Link](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[TypeLink] [nvarchar](max) NULL,
	[Tableld] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Link] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Parentid] [int] NOT NULL,
	[Orders] [int] NOT NULL,
	[MenuType] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Tableid] [int] NOT NULL,
	[Create_At] [datetime] NULL,
	[Create_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Deliveryaddress] [nvarchar](max) NULL,
	[Deliveryname] [nvarchar](max) NULL,
	[Deliveryemail] [nvarchar](max) NULL,
	[Deliveryphone] [nvarchar](max) NULL,
	[Createdate] [int] NOT NULL,
	[Exportdate] [int] NOT NULL,
	[metadesc] [nvarchar](max) NULL,
	[Create_At] [int] NULL,
	[Create_By] [int] NULL,
	[Update_At] [int] NULL,
	[Update_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderdetail]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Orderid] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[Productid] [int] NOT NULL,
	[Price] [real] NOT NULL,
	[Amount] [real] NOT NULL,
 CONSTRAINT [PK_dbo.Orderdetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topicid] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](155) NOT NULL,
	[Metakey] [nvarchar](155) NOT NULL,
	[Create_At] [datetime] NULL,
	[Create_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Catid] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[PriceBuy] [float] NOT NULL,
	[Img] [nvarchar](255) NOT NULL,
	[Metakey] [nvarchar](155) NOT NULL,
	[Metadesc] [nvarchar](155) NOT NULL,
	[Create_By] [int] NULL,
	[Create_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](max) NULL,
	[Orders] [int] NOT NULL,
	[Create_At] [datetime] NULL,
	[Create_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Slider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Parentid] [int] NOT NULL,
	[Orders] [int] NOT NULL,
	[Metakey] [nvarchar](155) NOT NULL,
	[Metadesc] [nvarchar](155) NOT NULL,
	[Create_By] [int] NULL,
	[Create_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Topic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/27/2021 11:54:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Roles] [int] NOT NULL,
	[Create_At] [datetime] NULL,
	[Create_By] [int] NULL,
	[Update_At] [datetime] NULL,
	[Update_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [HuynhThanhPhuong_2118110142] SET  READ_WRITE 
GO
