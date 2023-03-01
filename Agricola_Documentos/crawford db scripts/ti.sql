USE [master]
GO
/****** Object:  Database [TI]    Script Date: 18/02/2023 19:54:19 ******/
CREATE DATABASE [TI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TI', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\TI.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TI_log', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\TI.ldf' , SIZE = 11200KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TI] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TI] SET ARITHABORT OFF 
GO
ALTER DATABASE [TI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TI] SET RECOVERY FULL 
GO
ALTER DATABASE [TI] SET  MULTI_USER 
GO
ALTER DATABASE [TI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TI] SET QUERY_STORE = OFF
GO
USE [TI]
GO
/****** Object:  User [usuario]    Script Date: 18/02/2023 19:54:20 ******/
CREATE USER [usuario] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[TIT03]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT03](
	[CODIG_T03] [varchar](2) NOT NULL,
	[DESCR_T03] [varchar](50) NULL,
	[ABREV_T03] [varchar](10) NULL,
	[CONTR_T03] [varchar](6) NULL,
 CONSTRAINT [PK_TIT03] PRIMARY KEY CLUSTERED 
(
	[CODIG_T03] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TII01]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TII01](
	[IDCAB_I01] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CLASE_I01] [varchar](2) NULL,
	[TIPOD_I01] [varchar](4) NULL,
	[CODIG_I01] [varchar](2) NULL,
	[DESCR_I01] [varchar](50) NULL,
	[NOMBR_I01] [varchar](50) NULL,
	[ABREV_I01] [varchar](8) NULL,
	[IPADD_I01] [varchar](50) NULL,
	[MACAD_I01] [varchar](50) NULL,
	[SISOP_I01] [varchar](2) NULL,
	[TLCSO_I01] [varchar](2) NULL,
	[ANTIV_I01] [varchar](2) NULL,
	[OFIMA_I01] [varchar](2) NULL,
	[BASED_I01] [varchar](2) NULL,
	[MARCA_I01] [varchar](2) NULL,
	[MODEL_I01] [varchar](50) NULL,
	[SERIE_I01] [varchar](50) NULL,
	[MEMOR_I01] [varchar](50) NULL,
	[PROCE_I01] [varchar](50) NULL,
	[DISCO_I01] [varchar](50) NULL,
	[FBIOS_I01] [datetime] NULL,
	[FINST_I01] [datetime] NULL,
	[UBICA_I01] [varchar](4) NULL,
	[USUAR_I01] [varchar](3) NULL,
	[OSUSR_I01] [varchar](50) NULL,
	[OSPAS_I01] [varchar](50) NULL,
	[IDADK_I01] [nchar](10) NULL,
	[STEQU_I01] [varchar](2) NULL,
	[TIPTR_I01] [varchar](2) NULL,
	[ACTIV_I01] [bit] NULL,
	[CODAF_I01] [varchar](50) NULL,
	[FUMAN_I01] [datetime] NULL,
	[PROVE_I01] [varchar](11) NULL,
	[TIDOC_I01] [varchar](2) NULL,
	[NUDOC_I01] [varchar](8) NULL,
	[SEDOC_I01] [varchar](4) NULL,
	[FEDOC_I01] [datetime] NULL,
	[AREA__I01] [varchar](2) NULL,
	[OBSER_I01] [varchar](100) NULL,
	[VCTGR_I01] [datetime] NULL,
	[FLGGR_i01] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT04]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT04](
	[CODIG_T04] [varchar](2) NOT NULL,
	[DESCR_T04] [varchar](50) NULL,
	[ABREV_T04] [varchar](10) NULL,
 CONSTRAINT [PK_TIT04] PRIMARY KEY CLUSTERED 
(
	[CODIG_T04] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT05]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT05](
	[LOCAL_T05] [varchar](2) NULL,
	[CODIG_T05] [varchar](2) NOT NULL,
	[DESCR_T05] [varchar](50) NULL,
	[ABREV_T05] [varchar](4) NOT NULL,
 CONSTRAINT [PK_TIT05_1] PRIMARY KEY CLUSTERED 
(
	[ABREV_T05] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT06]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT06](
	[CODIG_T06] [varchar](3) NOT NULL,
	[DESCR_T06] [varchar](50) NULL,
	[ABREV_T06] [varchar](10) NULL,
	[ACTIV_T06] [bit] NULL,
 CONSTRAINT [PK_TIT06] PRIMARY KEY CLUSTERED 
(
	[CODIG_T06] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT01]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT01](
	[CODIG_T01] [varchar](2) NOT NULL,
	[DESCR_T01] [varchar](50) NULL,
	[ABREV_T01] [varchar](10) NULL,
 CONSTRAINT [PK_TIT01] PRIMARY KEY CLUSTERED 
(
	[CODIG_T01] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT02]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT02](
	[CLASE_T02] [varchar](2) NULL,
	[CODIG_T02] [varchar](2) NULL,
	[DESCR_T02] [varchar](50) NULL,
	[ABREV_T02] [varchar](4) NOT NULL,
 CONSTRAINT [PK_TIT02] PRIMARY KEY CLUSTERED 
(
	[ABREV_T02] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_INV_HARDWARE_COPACABANA_VISTA_1]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_INV_HARDWARE_COPACABANA_VISTA_1]
AS
SELECT     TOP (100) PERCENT dbo.TIT05.DESCR_T05 AS UBICACION, dbo.TIT01.DESCR_T01 AS CLASE, dbo.TIT02.DESCR_T02 AS TIPO, dbo.TII01.DESCR_I01 AS DESCRIPCION, 
                      dbo.TII01.NOMBR_I01 AS NOMBRE_RED, dbo.TIT03.DESCR_T03 AS SISTEMA_OPERATIVO, dbo.TIT04.DESCR_T04 AS MARCA, dbo.TIT06.DESCR_T06 AS USUARIO_ASIGNADO, 
                      dbo.TII01.IDADK_I01 AS ID_ANYDESK
FROM         dbo.TII01 LEFT OUTER JOIN
                      dbo.TIT01 ON dbo.TII01.CLASE_I01 = dbo.TIT01.CODIG_T01 LEFT OUTER JOIN
                      dbo.TIT02 ON dbo.TII01.TIPOD_I01 = dbo.TIT02.ABREV_T02 LEFT OUTER JOIN
                      dbo.TIT03 ON dbo.TII01.SISOP_I01 = dbo.TIT03.CODIG_T03 LEFT OUTER JOIN
                      dbo.TIT04 ON dbo.TII01.MARCA_I01 = dbo.TIT04.CODIG_T04 LEFT OUTER JOIN
                      dbo.TIT05 ON dbo.TII01.UBICA_I01 = dbo.TIT05.ABREV_T05 LEFT OUTER JOIN
                      dbo.TIT06 ON dbo.TII01.USUAR_I01 = dbo.TIT06.CODIG_T06
WHERE     (dbo.TII01.ACTIV_I01 = 1)
ORDER BY dbo.TII01.UBICA_I01
GO
/****** Object:  Table [dbo].[TIT07]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT07](
	[CODIG_T07] [varchar](2) NOT NULL,
	[DESCR_T07] [varchar](50) NULL,
	[ABREV_T07] [varchar](5) NULL,
 CONSTRAINT [PK_TIT07] PRIMARY KEY CLUSTERED 
(
	[CODIG_T07] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TII02]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TII02](
	[IDCAB_I02] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[USUAR_I02] [varchar](3) NULL,
	[TDCO3_I02] [varchar](2) NULL,
	[ACTIV_I02] [bit] NULL,
	[CUENT_I02] [varchar](50) NULL,
	[PASSW_I02] [varchar](50) NULL,
 CONSTRAINT [PK_TII02] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I02] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VISTA_CUENTAS_OFFICE_365_ACTIVOS]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_CUENTAS_OFFICE_365_ACTIVOS]
AS
SELECT     TOP (100) PERCENT dbo.TIT06.DESCR_T06 AS USUARIO, dbo.TIT07.ABREV_T07 AS TIPO_CUENTA_OFFICE, dbo.TII02.CUENT_I02 AS CUENTA_CORREO, dbo.TII02.ACTIV_I02 AS ACTIVO
FROM         dbo.TII02 LEFT OUTER JOIN
                      dbo.TIT06 ON dbo.TII02.USUAR_I02 = dbo.TIT06.CODIG_T06 LEFT OUTER JOIN
                      dbo.TIT07 ON dbo.TII02.TDCO3_I02 = dbo.TIT07.CODIG_T07
WHERE     (dbo.TII02.ACTIV_I02 = 1)
ORDER BY TIPO_CUENTA_OFFICE, USUARIO
GO
/****** Object:  View [dbo].[VISTA_CUENTAS_OFFICE_365_INACTIVOS]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_CUENTAS_OFFICE_365_INACTIVOS]
AS
SELECT     TOP (100) PERCENT dbo.TIT06.DESCR_T06 AS USUARIO, dbo.TIT07.ABREV_T07 AS TIPO_CUENTA_OFFICE, dbo.TII02.CUENT_I02 AS CUENTA_CORREO, dbo.TII02.ACTIV_I02 AS ACTIVO
FROM         dbo.TII02 LEFT OUTER JOIN
                      dbo.TIT06 ON dbo.TII02.USUAR_I02 = dbo.TIT06.CODIG_T06 LEFT OUTER JOIN
                      dbo.TIT07 ON dbo.TII02.TDCO3_I02 = dbo.TIT07.CODIG_T07
WHERE     (dbo.TII02.ACTIV_I02 = 0)
ORDER BY TIPO_CUENTA_OFFICE, USUARIO
GO
/****** Object:  Table [dbo].[TIT08]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT08](
	[CODIG_T08] [varchar](2) NOT NULL,
	[DESCR_T08] [varchar](50) NULL,
	[ABREV_T08] [varchar](10) NULL,
	[CADQU_T08] [int] NULL,
	[CUSAD_T08] [int] NULL,
	[CDISP_T08] [int] NULL,
 CONSTRAINT [PK_TIT08] PRIMARY KEY CLUSTERED 
(
	[CODIG_T08] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VISTA_LICENCIAS_OFFICE_365]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_LICENCIAS_OFFICE_365]
AS
SELECT     TOP (100) PERCENT CODIG_T08 AS CODIGO, DESCR_T08 AS LICENCIA, ABREV_T08 AS ABREVIATURA, CADQU_T08 AS CANTIDAD_ADQUIRIDA, CUSAD_T08 AS CANTIDAD_USADA, 
                      CDISP_T08 AS CANTIDAD_DISPONIBLE
FROM         dbo.TIT08
ORDER BY CODIGO
GO
/****** Object:  View [dbo].[VISTA_EQUIPOS_ANTIGUEDAD_4_A_MAS_ANOS]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_EQUIPOS_ANTIGUEDAD_4_A_MAS_ANOS]
AS
SELECT        TOP (100) PERCENT dbo.TIT05.DESCR_T05 AS UBICACION, dbo.TIT01.DESCR_T01 AS CLASE, dbo.TIT02.DESCR_T02 AS TIPO, dbo.TII01.DESCR_I01 AS DESCRIPCION, dbo.TII01.NOMBR_I01 AS NOMBRE_RED, 
                         dbo.TIT03.DESCR_T03 AS SISTEMA_OPERATIVO, dbo.TIT04.DESCR_T04 AS MARCA, dbo.TIT06.DESCR_T06 AS USUARIO_ASIGNADO, YEAR(GETDATE()) - YEAR(dbo.TII01.FBIOS_I01) AS ANTIGUEDAD, 
                         dbo.TII01.IDADK_I01 AS ID_ANYDESK
FROM            dbo.TII01 LEFT OUTER JOIN
                         dbo.TIT01 ON dbo.TII01.CLASE_I01 = dbo.TIT01.CODIG_T01 LEFT OUTER JOIN
                         dbo.TIT02 ON dbo.TII01.TIPOD_I01 = dbo.TIT02.ABREV_T02 LEFT OUTER JOIN
                         dbo.TIT03 ON dbo.TII01.SISOP_I01 = dbo.TIT03.CODIG_T03 LEFT OUTER JOIN
                         dbo.TIT04 ON dbo.TII01.MARCA_I01 = dbo.TIT04.CODIG_T04 LEFT OUTER JOIN
                         dbo.TIT05 ON dbo.TII01.UBICA_I01 = dbo.TIT05.ABREV_T05 LEFT OUTER JOIN
                         dbo.TIT06 ON dbo.TII01.USUAR_I01 = dbo.TIT06.CODIG_T06
WHERE        (dbo.TII01.ACTIV_I01 = 1) AND (dbo.TII01.TIPOD_I01 <> '0103') AND (YEAR(GETDATE()) - YEAR(dbo.TII01.FBIOS_I01) >= 4)
ORDER BY UBICACION, CLASE, TIPO
GO
/****** Object:  View [dbo].[View_INV_HARDWARE_COPACABANA_VISTA_2]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_INV_HARDWARE_COPACABANA_VISTA_2]
AS
SELECT        TOP (100) PERCENT dbo.TIT05.DESCR_T05 AS UBICACION, dbo.TIT01.DESCR_T01 AS CLASE, dbo.TIT02.DESCR_T02 AS TIPO, dbo.TII01.DESCR_I01 AS DESCRIPCION, dbo.TII01.NOMBR_I01 AS NOMBRE_RED, 
                         dbo.TIT03.DESCR_T03 AS SISTEMA_OPERATIVO, dbo.TIT04.DESCR_T04 AS MARCA, dbo.TIT06.DESCR_T06 AS USUARIO_ASIGNADO, YEAR(GETDATE()) - YEAR(dbo.TII01.FBIOS_I01) AS ANTIGUEDAD, 
                         dbo.TII01.IDADK_I01 AS ID_ANYDESK, dbo.TII01.ACTIV_I01 AS STATUS, dbo.TII01.MEMOR_I01 AS MEMORIA, dbo.TII01.PROCE_I01 AS PROCESADOR, dbo.TII01.DISCO_I01 AS DISCO_DURO
FROM            dbo.TII01 LEFT OUTER JOIN
                         dbo.TIT01 ON dbo.TII01.CLASE_I01 = dbo.TIT01.CODIG_T01 LEFT OUTER JOIN
                         dbo.TIT02 ON dbo.TII01.TIPOD_I01 = dbo.TIT02.ABREV_T02 LEFT OUTER JOIN
                         dbo.TIT03 ON dbo.TII01.SISOP_I01 = dbo.TIT03.CODIG_T03 LEFT OUTER JOIN
                         dbo.TIT04 ON dbo.TII01.MARCA_I01 = dbo.TIT04.CODIG_T04 LEFT OUTER JOIN
                         dbo.TIT05 ON dbo.TII01.UBICA_I01 = dbo.TIT05.ABREV_T05 LEFT OUTER JOIN
                         dbo.TIT06 ON dbo.TII01.USUAR_I01 = dbo.TIT06.CODIG_T06
WHERE        (dbo.TII01.ACTIV_I01 = 1) AND (dbo.TII01.TIPOD_I01 <> '0103')
ORDER BY UBICACION, CLASE, TIPO
GO
/****** Object:  View [dbo].[View_INV_HARDWARE_COPACABANA_VISTA_3]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_INV_HARDWARE_COPACABANA_VISTA_3]
AS
SELECT        TOP (100) PERCENT dbo.TIT05.DESCR_T05 AS UBICACION, dbo.TIT01.DESCR_T01 AS CLASE, dbo.TIT02.DESCR_T02 AS TIPO, dbo.TII01.DESCR_I01 AS DESCRIPCION, dbo.TII01.NOMBR_I01 AS NOMBRE_RED, 
                         dbo.TIT03.DESCR_T03 AS SISTEMA_OPERATIVO, dbo.TIT04.DESCR_T04 AS MARCA, dbo.TIT06.DESCR_T06 AS USUARIO_ASIGNADO, YEAR(GETDATE()) - YEAR(dbo.TII01.FBIOS_I01) AS ANTIGUEDAD, 
                         dbo.TII01.IDADK_I01 AS ID_ANYDESK, dbo.TII01.ACTIV_I01 AS STATUS, dbo.TII01.MEMOR_I01 AS MEMORIA, dbo.TII01.PROCE_I01 AS PROCESADOR, dbo.TII01.DISCO_I01 AS DISCO_DURO
FROM            dbo.TII01 LEFT OUTER JOIN
                         dbo.TIT01 ON dbo.TII01.CLASE_I01 = dbo.TIT01.CODIG_T01 LEFT OUTER JOIN
                         dbo.TIT02 ON dbo.TII01.TIPOD_I01 = dbo.TIT02.ABREV_T02 LEFT OUTER JOIN
                         dbo.TIT03 ON dbo.TII01.SISOP_I01 = dbo.TIT03.CODIG_T03 LEFT OUTER JOIN
                         dbo.TIT04 ON dbo.TII01.MARCA_I01 = dbo.TIT04.CODIG_T04 LEFT OUTER JOIN
                         dbo.TIT05 ON dbo.TII01.UBICA_I01 = dbo.TIT05.ABREV_T05 LEFT OUTER JOIN
                         dbo.TIT06 ON dbo.TII01.USUAR_I01 = dbo.TIT06.CODIG_T06
WHERE        (dbo.TII01.ACTIV_I01 = 0) AND (dbo.TII01.TIPOD_I01 <> '0103')
ORDER BY UBICACION, CLASE, TIPO
GO
/****** Object:  Table [dbo].[TIT14]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT14](
	[CODIG_T14] [varchar](2) NOT NULL,
	[DESCR_T14] [varchar](50) NULL,
	[ABREV_T14] [varchar](20) NULL,
 CONSTRAINT [PK_TIT14] PRIMARY KEY CLUSTERED 
(
	[CODIG_T14] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT15]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT15](
	[CONTR_T15] [varchar](2) NULL,
	[CORRE_T15] [varchar](2) NULL,
	[DESCR_T15] [varchar](50) NULL,
	[CODIG_T15] [varchar](4) NOT NULL,
	[ABREV_T15] [varchar](20) NULL,
 CONSTRAINT [PK_TIT15] PRIMARY KEY CLUSTERED 
(
	[CODIG_T15] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT16]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT16](
	[CATEG_T16] [varchar](4) NULL,
	[CORRE_T16] [varchar](2) NULL,
	[DESCR_T16] [varchar](50) NULL,
	[CODIG_T16] [varchar](6) NOT NULL,
	[ABREV_T16] [varchar](20) NULL,
	[CANTI_T16] [int] NULL,
	[VCMTO_T16] [datetime] NULL,
	[OBSER_T16] [varchar](100) NULL,
 CONSTRAINT [PK_TIT16] PRIMARY KEY CLUSTERED 
(
	[CODIG_T16] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_CONTRATOS_DE_TI_CON_TERCEROS]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CONTRATOS_DE_TI_CON_TERCEROS]
AS
SELECT        dbo.TIT14.CODIG_T14 AS CONTRATO_CODIGO, dbo.TIT14.DESCR_T14 AS CONTRATO_DESCRIPCION, dbo.TIT14.ABREV_T14 AS CONTRATO_ABREVIATURA, dbo.TIT15.CODIG_T15 AS CATEGORIA_CODIGO, 
                         dbo.TIT15.DESCR_T15 AS CATEGORIA_DESCRIPCION, dbo.TIT15.ABREV_T15 AS CATEGORIA_ABREVIATURA, dbo.TIT16.CODIG_T16 AS SUBCATEGORIA_CODIGO, dbo.TIT16.DESCR_T16 AS SUBCATEGORIA_DESCRIPCION, 
                         dbo.TIT16.ABREV_T16 AS SUBCATEGORIA_ABREVIATURA, dbo.TIT16.CANTI_T16 AS SUBCATEGORIA_CANTIDAD, dbo.TIT16.VCMTO_T16 AS SUBCATEGORIA_VENCIMIENTO
FROM            dbo.TIT14 INNER JOIN
                         dbo.TIT15 INNER JOIN
                         dbo.TIT16 ON dbo.TIT15.CODIG_T15 = dbo.TIT16.CATEG_T16 ON dbo.TIT14.CODIG_T14 = dbo.TIT15.CONTR_T15
GO
/****** Object:  Table [dbo].[TII03]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TII03](
	[IDCAB_I03] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TIPPR_I03] [varchar](2) NULL,
	[NUPRG_I03] [varchar](8) NULL,
	[FECHA_I03] [datetime] NULL,
	[LOCAL_I03] [varchar](2) NULL,
	[RESPO_I03] [varchar](2) NULL,
	[SUPER_I03] [varchar](2) NULL,
	[TIPMT_I03] [varchar](2) NULL,
	[OBSER_I03] [varchar](200) NULL,
	[FLCOM_I03] [bit] NULL,
	[USUAR_I03] [varchar](20) NULL,
	[STATUS_I03] [varchar](2) NULL,
	[FEREG_I03] [datetime] NULL,
 CONSTRAINT [PK_TII03] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I03] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TII04]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TII04](
	[IDDET_I04] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I04] [int] NULL,
	[ITEM__I04] [varchar](4) NULL,
	[AREA__I04] [varchar](4) NULL,
	[EQUIPO_I04] [varchar](20) NULL,
	[FEPRG_I04] [datetime] NULL,
	[FEEJE_I04] [datetime] NULL,
	[FLCOM_I04] [bit] NULL,
	[OBSER_I04] [varchar](200) NULL,
	[STADM_I04] [varchar](2) NULL,
	[STDDM_I04] [varchar](2) NULL,
	[FECSM_I04] [datetime] NULL,
 CONSTRAINT [PK_TII04] PRIMARY KEY CLUSTERED 
(
	[IDDET_I04] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TII05]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TII05](
	[IDCAB_I05] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NUMER_I05] [varchar](12) NULL,
	[FECHA_I05] [datetime] NULL,
	[PERIO_I05] [varchar](7) NULL,
	[MESPR_I05] [varchar](7) NULL,
	[UBICA_I05] [varchar](4) NULL,
	[TIPO__I05] [varchar](4) NULL,
	[STATU_I05] [varchar](2) NULL,
	[PRIOR_I05] [varchar](2) NULL,
	[PROVE_I05] [varchar](2) NULL,
	[SUPER_I05] [varchar](5) NULL,
	[USELA_I05] [varchar](2) NULL,
	[USAPR_I05] [varchar](2) NULL,
	[LOCAL_I05] [varchar](2) NULL,
	[OBSER_I05] [varchar](50) NULL,
	[FLCOM_I05] [bit] NULL,
	[FEREG_I05] [datetime] NULL,
 CONSTRAINT [PK_TII05] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I05] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TII06]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TII06](
	[IDDET_I06] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I06] [int] NULL,
	[ITEM__I06] [varchar](4) NULL,
	[EQUIP_I06] [varchar](8) NULL,
	[FEPRG_I06] [datetime] NULL,
	[STANT_I06] [varchar](2) NULL,
	[OBACT_I06] [varchar](100) NULL,
	[FLCOM_I06] [bit] NULL,
	[FEEJE_I06] [datetime] NULL,
	[STPOS_I06] [varchar](2) NULL,
	[OBPOS_I06] [varchar](100) NULL,
	[PRXMT_I06] [datetime] NULL,
	[AREA__I06] [varchar](2) NULL,
 CONSTRAINT [PK_TII06] PRIMARY KEY CLUSTERED 
(
	[IDDET_I06] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT09]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT09](
	[CODIG_T09] [varchar](2) NOT NULL,
	[DESCR_T09] [varchar](50) NULL,
	[ABREV_T09] [varchar](10) NULL,
 CONSTRAINT [PK_TIT09] PRIMARY KEY CLUSTERED 
(
	[CODIG_T09] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT10]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT10](
	[CODIG_T10] [varchar](2) NOT NULL,
	[DESCR_T10] [varchar](50) NULL,
	[ABREV_T10] [varchar](10) NULL,
 CONSTRAINT [PK_TIT10] PRIMARY KEY CLUSTERED 
(
	[CODIG_T10] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT11]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT11](
	[CODIG_T11] [varchar](2) NOT NULL,
	[DESCR_T11] [varchar](50) NULL,
	[ABREV_T11] [varchar](20) NULL,
	[CONTR_T11] [varchar](6) NULL,
 CONSTRAINT [PK_TIT11] PRIMARY KEY CLUSTERED 
(
	[CODIG_T11] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT12]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT12](
	[CODIG_T12] [varchar](2) NOT NULL,
	[DESCR_T12] [varchar](50) NULL,
	[ABREV_T12] [varchar](20) NULL,
	[CONTR_T12] [varchar](6) NULL,
 CONSTRAINT [PK_TIT12] PRIMARY KEY CLUSTERED 
(
	[CODIG_T12] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT13]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT13](
	[CODIG_T13] [varchar](2) NOT NULL,
	[DESCR_T13] [varchar](50) NULL,
	[ABREV_T13] [varchar](20) NULL,
	[CONTR_T13] [varchar](6) NULL,
 CONSTRAINT [PK_TIT13] PRIMARY KEY CLUSTERED 
(
	[CODIG_T13] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT17]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT17](
	[CODIG_T17] [varchar](2) NOT NULL,
	[DESCR_T17] [varchar](50) NULL,
	[ABREV_T17] [varchar](10) NULL,
 CONSTRAINT [PK_TIT17] PRIMARY KEY CLUSTERED 
(
	[CODIG_T17] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT18]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT18](
	[CODIG_T18] [varchar](2) NOT NULL,
	[DESCR_T18] [varchar](50) NULL,
	[ABREV_T18] [varchar](10) NULL,
 CONSTRAINT [PK_TIT18] PRIMARY KEY CLUSTERED 
(
	[CODIG_T18] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT19]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT19](
	[CODIG_T19] [varchar](2) NOT NULL,
	[DESCR_T19] [varchar](50) NULL,
	[ABREV_T19] [varchar](10) NULL,
 CONSTRAINT [PK_TIT19] PRIMARY KEY CLUSTERED 
(
	[CODIG_T19] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT20]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT20](
	[CODIG_T20] [varchar](2) NOT NULL,
	[DESCR_T20] [varchar](50) NULL,
	[ABREV_T20] [varchar](10) NULL,
 CONSTRAINT [PK_TIT20] PRIMARY KEY CLUSTERED 
(
	[CODIG_T20] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT21]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT21](
	[CODIG_T21] [varchar](2) NOT NULL,
	[DESCR_T21] [varchar](50) NULL,
	[ABREV_T21] [varchar](20) NULL,
 CONSTRAINT [PK_TIT21] PRIMARY KEY CLUSTERED 
(
	[CODIG_T21] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT22]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT22](
	[CODIG_T22] [varchar](2) NOT NULL,
	[DESCR_T22] [varchar](50) NULL,
	[NUDNI_T22] [varchar](8) NULL,
	[ABREV_T22] [varchar](20) NULL,
	[NURUC_T22] [varchar](11) NULL,
	[RASOC_T22] [varchar](50) NULL,
 CONSTRAINT [PK_TIT22] PRIMARY KEY CLUSTERED 
(
	[CODIG_T22] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT23]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT23](
	[CODIG_T23] [varchar](2) NOT NULL,
	[DESCR_T23] [varchar](50) NULL,
	[ABREV_T23] [varchar](20) NULL,
 CONSTRAINT [PK_TIT23] PRIMARY KEY CLUSTERED 
(
	[CODIG_T23] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT24]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT24](
	[CODIG_T24] [varchar](2) NOT NULL,
	[DESCR_T24] [varchar](50) NULL,
	[ABREV_T24] [varchar](20) NULL,
 CONSTRAINT [PK_TIT24] PRIMARY KEY CLUSTERED 
(
	[CODIG_T24] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT25]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT25](
	[CODIG_T25] [varchar](2) NOT NULL,
	[DESCR_T25] [varchar](50) NULL,
	[ABREV_T25] [varchar](20) NULL,
 CONSTRAINT [PK_TIT25] PRIMARY KEY CLUSTERED 
(
	[CODIG_T25] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT26]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT26](
	[CODIG_T26] [varchar](2) NOT NULL,
	[DESCR_T26] [varchar](50) NULL,
	[ABREV_T26] [varchar](20) NULL,
 CONSTRAINT [PK_TIT26] PRIMARY KEY CLUSTERED 
(
	[CODIG_T26] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIT27]    Script Date: 18/02/2023 19:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIT27](
	[CODIG_T27] [varchar](2) NOT NULL,
	[DESCR_T27] [varchar](50) NULL,
	[ABREV_T27] [varchar](20) NULL,
 CONSTRAINT [PK_TIT27] PRIMARY KEY CLUSTERED 
(
	[CODIG_T27] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TII01] ADD  CONSTRAINT [DF_TII01_ACTIV_I01]  DEFAULT ((1)) FOR [ACTIV_I01]
GO
ALTER TABLE [dbo].[TII01] ADD  CONSTRAINT [DF_TII01_FLGGR_i01]  DEFAULT ((1)) FOR [FLGGR_i01]
GO
ALTER TABLE [dbo].[TII02] ADD  CONSTRAINT [DF_TII02_ACTIV_I02]  DEFAULT ((1)) FOR [ACTIV_I02]
GO
ALTER TABLE [dbo].[TII04]  WITH CHECK ADD  CONSTRAINT [FK_TII04_TII03] FOREIGN KEY([IDCAB_I04])
REFERENCES [dbo].[TII03] ([IDCAB_I03])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TII04] CHECK CONSTRAINT [FK_TII04_TII03]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO DE LICENCIA DEL SISTEMA OPERATIVO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TII01', @level2type=N'COLUMN',@level2name=N'TLCSO_I01'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PASSWORD DEL SISTEMA OPERATIVO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TII01', @level2type=N'COLUMN',@level2name=N'OSPAS_I01'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ACTIVO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TII01', @level2type=N'COLUMN',@level2name=N'ACTIV_I01'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VENCIMIENTO DE LA GARANTIA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TII01', @level2type=N'COLUMN',@level2name=N'VCTGR_I01'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FLAG GARANTIA ACTIVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TII01', @level2type=N'COLUMN',@level2name=N'FLGGR_i01'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ACTIVO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TII02', @level2type=N'COLUMN',@level2name=N'ACTIV_I02'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TIT14"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT15"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT16"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CONTRATOS_DE_TI_CON_TERCEROS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CONTRATOS_DE_TI_CON_TERCEROS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[77] 4[4] 2[1] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TII01"
            Begin Extent = 
               Top = 9
               Left = 0
               Bottom = 420
               Right = 160
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT01"
            Begin Extent = 
               Top = 1
               Left = 512
               Bottom = 106
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT02"
            Begin Extent = 
               Top = 22
               Left = 691
               Bottom = 142
               Right = 851
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT03"
            Begin Extent = 
               Top = 143
               Left = 693
               Bottom = 248
               Right = 853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT04"
            Begin Extent = 
               Top = 203
               Left = 527
               Bottom = 308
               Right = 687
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT05"
            Begin Extent = 
               Top = 251
               Left = 690
               Bottom = 371
               Right = 850
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT06"
            Begin Extent = 
               Top = 338
               Left = 216
               Bottom = 458
               Right = 376
            End
            DisplayFlags = 280
            Top' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Column = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[42] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TII01"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "TIT01"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT02"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT03"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 119
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT04"
            Begin Extent = 
               Top = 120
               Left = 246
               Bottom = 233
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT05"
            Begin Extent = 
               Top = 120
               Left = 662
               Bottom = 250
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT06"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 208
            End
            DisplayFlags = 280
            Top' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Column = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1335
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TII01"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT01"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT02"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT03"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 119
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT04"
            Begin Extent = 
               Top = 120
               Left = 246
               Bottom = 233
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT05"
            Begin Extent = 
               Top = 120
               Left = 662
               Bottom = 250
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT06"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 208
            End
            DisplayFlags = 280
            TopC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'olumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_INV_HARDWARE_COPACABANA_VISTA_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TII02"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT06"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT07"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 111
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_CUENTAS_OFFICE_365_ACTIVOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_CUENTAS_OFFICE_365_ACTIVOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TII02"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT06"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT07"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 111
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_CUENTAS_OFFICE_365_INACTIVOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_CUENTAS_OFFICE_365_INACTIVOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TII01"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT01"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT02"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT03"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 119
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT04"
            Begin Extent = 
               Top = 120
               Left = 246
               Bottom = 233
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT05"
            Begin Extent = 
               Top = 120
               Left = 662
               Bottom = 250
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIT06"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 208
            End
            DisplayFlags = 280
            TopC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_EQUIPOS_ANTIGUEDAD_4_A_MAS_ANOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'olumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_EQUIPOS_ANTIGUEDAD_4_A_MAS_ANOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_EQUIPOS_ANTIGUEDAD_4_A_MAS_ANOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TIT08"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_LICENCIAS_OFFICE_365'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_LICENCIAS_OFFICE_365'
GO
USE [master]
GO
ALTER DATABASE [TI] SET  READ_WRITE 
GO
