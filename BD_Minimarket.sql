USE [master]
GO
/****** Object:  Database [Minimarket]    Script Date: 08/10/2023 22:23:41 ******/
CREATE DATABASE [Minimarket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Minimarket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Minimarket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Minimarket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Minimarket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Minimarket] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Minimarket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Minimarket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Minimarket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Minimarket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Minimarket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Minimarket] SET ARITHABORT OFF 
GO
ALTER DATABASE [Minimarket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Minimarket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Minimarket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Minimarket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Minimarket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Minimarket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Minimarket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Minimarket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Minimarket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Minimarket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Minimarket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Minimarket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Minimarket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Minimarket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Minimarket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Minimarket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Minimarket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Minimarket] SET RECOVERY FULL 
GO
ALTER DATABASE [Minimarket] SET  MULTI_USER 
GO
ALTER DATABASE [Minimarket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Minimarket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Minimarket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Minimarket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Minimarket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Minimarket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Minimarket', N'ON'
GO
ALTER DATABASE [Minimarket] SET QUERY_STORE = ON
GO
ALTER DATABASE [Minimarket] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Minimarket]
GO
/****** Object:  User [lobaton]    Script Date: 08/10/2023 22:23:41 ******/
CREATE USER [lobaton] FOR LOGIN [lobaton] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EDDY]    Script Date: 08/10/2023 22:23:41 ******/
CREATE USER [EDDY] FOR LOGIN [EDDY] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_datareader] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [lobaton]
GO
ALTER ROLE [db_owner] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [EDDY]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [EDDY]
GO
/****** Object:  Table [dbo].[TB_CATEGORIA]    Script Date: 08/10/2023 22:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CATEGORIA](
	[codigo_ca] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_ca] [varchar](50) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_TB_CATEGORIA] PRIMARY KEY CLUSTERED 
(
	[codigo_ca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_MARCAS]    Script Date: 08/10/2023 22:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_MARCAS](
	[codigo_ma] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_ma] [varchar](50) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_TB_MARCAS] PRIMARY KEY CLUSTERED 
(
	[codigo_ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TB_CATEGORIA] ON 
GO
INSERT [dbo].[TB_CATEGORIA] ([codigo_ca], [descripcion_ca], [estado]) VALUES (1, N'ELECTRODOMESTICOS', 1)
GO
INSERT [dbo].[TB_CATEGORIA] ([codigo_ca], [descripcion_ca], [estado]) VALUES (2, N'LIMPIEZA', 1)
GO
SET IDENTITY_INSERT [dbo].[TB_CATEGORIA] OFF
GO
/****** Object:  StoredProcedure [dbo].[USP_Eliminar_ca]    Script Date: 08/10/2023 22:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREADO POR EDDY LOBATON
2023-10-08 
Eliminar datos de la tabla TB_CATEGORIA
*/

CREATE PROCEDURE [dbo].[USP_Eliminar_ca]
@nCodigo_Ca INT=0
AS
	DELETE FROM TB_CATEGORIA
	WHERE codigo_ca = @nCodigo_Ca;
GO
/****** Object:  StoredProcedure [dbo].[USP_Guardar_ca]    Script Date: 08/10/2023 22:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREADO POR EDDY LOBATON
2023-10-08 
Guardar datos en la tabla TB_CATEGORIA
*/

CREATE PROCEDURE [dbo].[USP_Guardar_ca]
@nOpcion INT=0,
@nCodigo_Ca INT=0,
@Descripcion_Ca VARCHAR(40)=''
AS
IF @nOpcion=1--Nuevo registro
BEGIN
	INSERT INTO TB_CATEGORIA(descripcion_ca, estado) VALUES (@Descripcion_Ca,1);
END;
ELSE--actualiza
BEGIN
	UPDATE TB_CATEGORIA SET descripcion_ca=@Descripcion_Ca WHERE codigo_ca=@nCodigo_Ca;
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_Listado_ca]    Script Date: 08/10/2023 22:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREADO POR EDDY LOBATON
2023-10-08 
Listar datos de la tabla TB_CATEGORIA
*/

CREATE PROCEDURE [dbo].[USP_Listado_ca]
@cTexto VARCHAR(100)=''
AS
	 SELECT codigo_ca, descripcion_ca 
	 FROM TB_CATEGORIA
	 WHERE estado=1 AND 
	 UPPER(TRIM(CAST(codigo_ca AS CHAR))+TRIM(descripcion_ca)) LIKE '%'+UPPER(TRIM(@cTexto))+'%';
	 --trim limpia espacios a la derecha
	 --cast convierte a otro tipo de dato
	 --upper pasa a mayuscula
GO
USE [master]
GO
ALTER DATABASE [Minimarket] SET  READ_WRITE 
GO
