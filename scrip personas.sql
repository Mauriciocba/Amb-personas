USE [master]
GO
/****** Object:  Database [Personas]    Script Date: 12/03/2021 11:26:49 ******/
CREATE DATABASE [Personas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Personas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Personas.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Personas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Personas_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Personas] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Personas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Personas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Personas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Personas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Personas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Personas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Personas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Personas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Personas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Personas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Personas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Personas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Personas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Personas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Personas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Personas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Personas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Personas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Personas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Personas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Personas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Personas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Personas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Personas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Personas] SET  MULTI_USER 
GO
ALTER DATABASE [Personas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Personas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Personas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Personas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Personas] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Personas]
GO
/****** Object:  Table [dbo].[Estado_civiles]    Script Date: 12/03/2021 11:26:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_civiles](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Estado_civiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 12/03/2021 11:26:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[edad] [int] NULL,
	[estado_civil] [int] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Estado_civiles] ([id], [nombre]) VALUES (1, N'masculino')
INSERT [dbo].[Estado_civiles] ([id], [nombre]) VALUES (2, N'femenino')
INSERT [dbo].[Estado_civiles] ([id], [nombre]) VALUES (3, N'otro')
GO
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([id], [nombre], [apellido], [edad], [estado_civil]) VALUES (1, N'Mauricio', N'Torres', 25, 1)
INSERT [dbo].[Persona] ([id], [nombre], [apellido], [edad], [estado_civil]) VALUES (2, N'Anahi', N'Torres', 21, 2)
INSERT [dbo].[Persona] ([id], [nombre], [apellido], [edad], [estado_civil]) VALUES (3, N'marina', N'lopez', 23, 3)
SET IDENTITY_INSERT [dbo].[Persona] OFF
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Estado_civiles] FOREIGN KEY([estado_civil])
REFERENCES [dbo].[Estado_civiles] ([id])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Estado_civiles]
GO
USE [master]
GO
ALTER DATABASE [Personas] SET  READ_WRITE 
GO
