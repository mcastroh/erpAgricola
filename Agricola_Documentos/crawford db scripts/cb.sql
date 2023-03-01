USE [master]
GO
/****** Object:  Database [CB]    Script Date: 18/02/2023 19:42:19 ******/
CREATE DATABASE [CB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CB_Data', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\CB.MDF' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'CB_Log', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\CB.LDF' , SIZE = 3840KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [CB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CB].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [CB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CB] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [CB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CB] SET  MULTI_USER 
GO
ALTER DATABASE [CB] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [CB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CB] SET QUERY_STORE = OFF
GO
USE [CB]
GO
/****** Object:  User [usersql]    Script Date: 18/02/2023 19:42:19 ******/
CREATE USER [usersql] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[usersql]
GO
/****** Object:  User [user]    Script Date: 18/02/2023 19:42:19 ******/
CREATE USER [user] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[user]
GO
/****** Object:  User [sqlbackup]    Script Date: 18/02/2023 19:42:19 ******/
CREATE USER [sqlbackup] WITH DEFAULT_SCHEMA=[sqlbackup]
GO
/****** Object:  User [consulta]    Script Date: 18/02/2023 19:42:19 ******/
CREATE USER [consulta] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[consulta]
GO
ALTER ROLE [db_owner] ADD MEMBER [user]
GO
ALTER ROLE [db_owner] ADD MEMBER [sqlbackup]
GO
ALTER ROLE [db_owner] ADD MEMBER [consulta]
GO
/****** Object:  Schema [consulta]    Script Date: 18/02/2023 19:42:19 ******/
CREATE SCHEMA [consulta]
GO
/****** Object:  Schema [sqlbackup]    Script Date: 18/02/2023 19:42:19 ******/
CREATE SCHEMA [sqlbackup]
GO
/****** Object:  Schema [user]    Script Date: 18/02/2023 19:42:19 ******/
CREATE SCHEMA [user]
GO
/****** Object:  Schema [usersql]    Script Date: 18/02/2023 19:42:19 ******/
CREATE SCHEMA [usersql]
GO
/****** Object:  Table [dbo].[cbI0105]    Script Date: 18/02/2023 19:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbI0105](
	[IDCOM_I01] [int] NOT NULL,
	[EMPRE_I01] [nvarchar](2) NULL,
	[NUMES_I01] [float] NULL,
	[LOCAL_I01] [nvarchar](5) NULL,
	[SUBDI_I01] [nvarchar](4) NULL,
	[NUFIL_I01] [float] NULL,
	[OPERA_I01] [nvarchar](2) NULL,
	[NUCOM_I01] [float] NULL,
	[NUDIA_I01] [float] NULL,
	[MONED_I01] [nvarchar](1) NULL,
	[TICAM_I01] [float] NULL,
	[GLOSA_I01] [nvarchar](40) NULL,
	[MAEST_I01] [nvarchar](11) NULL,
	[TIDOC_I01] [nvarchar](5) NULL,
	[NUDOC_I01] [nvarchar](6) NULL,
	[FEDOC_I01] [smalldatetime] NULL,
	[FEVEN_I01] [smalldatetime] NULL,
	[DEBIT_I01] [float] NULL,
	[CREDI_I01] [float] NULL,
	[SITUA_I01] [nvarchar](1) NULL,
	[MAYOR_I01] [nvarchar](1) NULL,
	[USUAR_I01] [nvarchar](8) NULL,
	[ANULA_I01] [nvarchar](1) NULL,
	[NAOPE_I01] [nvarchar](1) NULL,
	[ESDOC_I01] [nvarchar](1) NULL,
	[FEREN_I01] [smalldatetime] NULL,
	[GLFIN_I01] [nvarchar](15) NULL,
	[NUSER_I01] [nvarchar](3) NULL,
	[CANTI_I01] [float] NULL,
	[PUNIT_I01] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbI0205]    Script Date: 18/02/2023 19:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbI0205](
	[IDDET_I02] [int] NOT NULL,
	[IDCAB_I02] [int] NULL,
	[EMPRE_I02] [nvarchar](2) NULL,
	[NUMES_I02] [float] NULL,
	[LOCAL_I02] [nvarchar](5) NULL,
	[SUBDI_I02] [nvarchar](4) NULL,
	[NUFIL_I02] [float] NULL,
	[OPERA_I02] [nvarchar](2) NULL,
	[NUCOM_I02] [float] NULL,
	[NUDIA_I02] [float] NULL,
	[MONED_I02] [nvarchar](1) NULL,
	[TICAM_I02] [float] NULL,
	[CUENT_I02] [nvarchar](8) NULL,
	[COSTO_I02] [nvarchar](5) NULL,
	[MAEST_I02] [nvarchar](11) NULL,
	[DEFEC_I02] [float] NULL,
	[SOLES_I02] [float] NULL,
	[DOLAR_I02] [float] NULL,
	[FEVEN_I02] [smalldatetime] NULL,
	[NUREG_I02] [nvarchar](8) NULL,
	[NUDOC_I02] [nvarchar](8) NULL,
	[TIDOC_I02] [nvarchar](5) NULL,
	[FEDOC_I02] [smalldatetime] NULL,
	[FECON_I02] [smalldatetime] NULL,
	[MAYOR_I02] [nvarchar](1) NULL,
	[NUSER_I02] [nvarchar](3) NULL,
	[ANULA_I02] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[RELACION]    Script Date: 18/02/2023 19:42:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RELACION]
AS
SELECT     *
FROM         dbo.cbI0105 INNER JOIN
                      dbo.cbI0205 ON dbo.cbI0105.EMPRE_I01 = dbo.cbI0205.EMPRE_I02 AND dbo.cbI0105.NUMES_I01 = dbo.cbI0205.NUMES_I02 AND 
                      dbo.cbI0105.LOCAL_I01 = dbo.cbI0205.LOCAL_I02 AND dbo.cbI0105.SUBDI_I01 = dbo.cbI0205.SUBDI_I02 AND 
                      dbo.cbI0105.NUFIL_I01 = dbo.cbI0205.NUFIL_I02 AND dbo.cbI0105.NUCOM_I01 = dbo.cbI0205.NUCOM_I02
GO
/****** Object:  View [dbo].[EXTRAE PARA COMPROBANTES O LISTADO]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EXTRAE PARA COMPROBANTES O LISTADO]
AS
SELECT     dbo.cbI0105.EMPRE_I01, dbo.cbI0105.NUMES_I01, dbo.cbI0105.LOCAL_I01, dbo.cbI0105.SUBDI_I01, dbo.cbI0105.NUFIL_I01, 
                      dbo.cbI0105.NUCOM_I01, dbo.cbI0105.OPERA_I01, dbo.cbI0105.NUDIA_I01, dbo.cbI0105.MONED_I01, dbo.cbI0105.TICAM_I01, 
                      dbo.cbI0105.GLOSA_I01, dbo.cbI0205.CUENT_I02, dbo.cbI0205.COSTO_I02, dbo.cbI0205.MAEST_I02, dbo.cbI0205.DEFEC_I02, 
                      dbo.cbI0205.SOLES_I02, dbo.cbI0205.DOLAR_I02, dbo.cbI0205.NUREG_I02, dbo.cbI0205.TIDOC_I02, dbo.cbI0205.NUDOC_I02
FROM         dbo.cbI0105 INNER JOIN
                      dbo.cbI0205 ON dbo.cbI0105.IDCOM_I01 = dbo.cbI0205.IDCAB_I02
WHERE     (dbo.cbI0105.NUMES_I01 = 4) AND (dbo.cbI0105.SUBDI_I01 = '1103') AND (dbo.cbI0105.NUFIL_I01 = 401)
GO
/****** Object:  Table [dbo].[cbm0105]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbm0105](
	[EMPRE_M01] [nvarchar](2) NULL,
	[CUENT_M01] [nvarchar](8) NULL,
	[DESCR_M01] [nvarchar](50) NULL,
	[TIPOS_M01] [nvarchar](1) NULL,
	[NIVEL_M01] [float] NULL,
	[GENER_M01] [nvarchar](8) NULL,
	[DEFEC_M01] [float] NULL,
	[CLASE_M01] [nvarchar](5) NULL,
	[MONET_M01] [nvarchar](1) NULL,
	[AJUST_M01] [nvarchar](1) NULL,
	[AUXIL_M01] [nvarchar](1) NULL,
	[CTAPG_M01] [nvarchar](1) NULL,
	[COSTO_M01] [nvarchar](1) NULL,
	[CTACO_M01] [nvarchar](8) NULL,
	[CONCI_M01] [nvarchar](1) NULL,
	[CTAA1_M01] [nvarchar](8) NULL,
	[CTAA2_M01] [nvarchar](8) NULL,
	[REGIS_M01] [nvarchar](1) NULL,
	[FECAD_M01] [smalldatetime] NULL,
	[FECMO_M01] [smalldatetime] NULL,
	[PENDI_M01] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[cabe deta y plan]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cabe deta y plan]
AS
SELECT     TOP 100 PERCENT dbo.cbI0105.DEBIT_I01, dbo.cbI0105.CREDI_I01, dbo.cbI0205.SUBDI_I02, dbo.cbI0205.NUFIL_I02, dbo.cbI0205.NUCOM_I02, 
                      dbo.cbI0205.CUENT_I02, dbo.cbm0105.DESCR_M01, dbo.cbI0205.COSTO_I02, dbo.cbI0205.MAEST_I02, dbo.cbI0205.DEFEC_I02, 
                      dbo.cbI0205.SOLES_I02, dbo.cbI0205.DOLAR_I02, dbo.cbI0205.NUDOC_I02
FROM         dbo.cbI0105 INNER JOIN
                      dbo.cbI0205 ON dbo.cbI0105.IDCOM_I01 = dbo.cbI0205.IDCAB_I02 INNER JOIN
                      dbo.cbm0105 ON dbo.cbI0205.CUENT_I02 = dbo.cbm0105.CUENT_M01
ORDER BY dbo.cbI0205.EMPRE_I02, dbo.cbI0205.NUMES_I02, dbo.cbI0205.LOCAL_I02, dbo.cbI0205.SUBDI_I02, dbo.cbI0205.NUFIL_I02, 
                      dbo.cbI0205.NUCOM_I02
GO
/****** Object:  View [dbo].[VISTA CABECERA VS DETALLE ENLAZADOS POR IDCABECERA]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA CABECERA VS DETALLE ENLAZADOS POR IDCABECERA]
AS
SELECT     TOP 100 PERCENT dbo.cbI0105.IDCOM_I01, dbo.cbI0205.IDDET_I02, dbo.cbI0205.IDCAB_I02, dbo.cbI0105.NUMES_I01, dbo.cbI0105.LOCAL_I01, 
                      dbo.cbI0105.SUBDI_I01, dbo.cbI0105.NUFIL_I01, dbo.cbI0105.OPERA_I01, dbo.cbI0105.NUCOM_I01, dbo.cbI0205.NUCOM_I02, 
                      dbo.cbI0105.GLOSA_I01, dbo.cbI0105.MAEST_I01, dbo.cbI0105.DEBIT_I01, dbo.cbI0105.CREDI_I01, dbo.cbI0105.SITUA_I01, dbo.cbI0105.MAYOR_I01, 
                      dbo.cbI0105.ANULA_I01, dbo.cbI0105.NAOPE_I01, dbo.cbI0105.ESDOC_I01, dbo.cbI0205.CUENT_I02, dbo.cbI0205.COSTO_I02, 
                      dbo.cbI0205.MAEST_I02, dbo.cbI0205.DEFEC_I02, dbo.cbI0205.SOLES_I02, dbo.cbI0205.DOLAR_I02, dbo.cbI0205.NUREG_I02, 
                      dbo.cbI0205.TIDOC_I02, dbo.cbI0205.NUDOC_I02, dbo.cbI0205.MAYOR_I02, dbo.cbI0205.ANULA_I02, dbo.cbI0205.NUSER_I02, 
                      dbo.cbI0105.NUSER_I01, dbo.cbI0105.FEDOC_I01, dbo.cbI0105.FEVEN_I01, dbo.cbI0205.FEDOC_I02, dbo.cbI0205.FECON_I02
FROM         dbo.cbI0105 INNER JOIN
                      dbo.cbI0205 ON dbo.cbI0105.IDCOM_I01 = dbo.cbI0205.IDCAB_I02
WHERE     (dbo.cbI0105.NUMES_I01 = 03) AND (dbo.cbI0105.LOCAL_I01 = '11002') AND (dbo.cbI0105.SUBDI_I01 = '1103')
ORDER BY dbo.cbI0105.EMPRE_I01, dbo.cbI0105.NUMES_I01, dbo.cbI0105.LOCAL_I01, dbo.cbI0105.SUBDI_I01, dbo.cbI0105.NUFIL_I01, 
                      dbo.cbI0105.NUCOM_I01 DESC
GO
/****** Object:  View [dbo].[select de l cabecera creada en blanco]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[select de l cabecera creada en blanco]
AS
SELECT     *
FROM         dbo.CABECERA
GO
/****** Object:  Table [dbo].[CBI0305]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBI0305](
	[EMPRE_I03] [nvarchar](2) NULL,
	[LOCAL_I03] [nvarchar](5) NULL,
	[MONED_I03] [nvarchar](1) NULL,
	[TICAM_I03] [float] NULL,
	[MAEST_I03] [nvarchar](11) NULL,
	[SOLES_I03] [float] NULL,
	[DOLAR_I03] [float] NULL,
	[FORIG_I03] [smalldatetime] NULL,
	[FEVEN_I03] [smalldatetime] NULL,
	[FEMIS_I03] [smalldatetime] NULL,
	[NUDOC_I03] [nvarchar](8) NULL,
	[TIDOC_I03] [nvarchar](5) NULL,
	[PLAZO_I03] [nvarchar](1) NULL,
	[OBSER_I03] [nvarchar](40) NULL,
	[MONMN_I03] [float] NULL,
	[MONME_I03] [float] NULL,
	[ANTMN_I03] [float] NULL,
	[ANTME_I03] [float] NULL,
	[SALMN_I03] [float] NULL,
	[SALME_I03] [float] NULL,
	[CANMN_I03] [bit] NOT NULL,
	[CANME_I03] [bit] NOT NULL,
	[NUREG_I03] [nvarchar](6) NULL,
	[CANCE_I03] [bit] NOT NULL,
	[NUSER_I03] [nvarchar](3) NULL,
	[FECHA_I03] [smalldatetime] NULL,
	[RELAC_I03] [nvarchar](5) NULL,
	[COBCO_I03] [nvarchar](5) NULL,
	[CUBCO_I03] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CBI0405]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBI0405](
	[EMPRE_I02] [nvarchar](2) NULL,
	[NUMES_I02] [float] NULL,
	[LOCAL_I02] [nvarchar](5) NULL,
	[SUBDI_I02] [nvarchar](4) NULL,
	[NUFIL_I02] [float] NULL,
	[OPERA_I02] [nvarchar](2) NULL,
	[NUCOM_I02] [float] NULL,
	[NUDIA_I02] [float] NULL,
	[MONED_I02] [nvarchar](1) NULL,
	[TICAM_I02] [float] NULL,
	[CUENT_I02] [nvarchar](8) NULL,
	[COSTO_I02] [nvarchar](5) NULL,
	[MAEST_I02] [nvarchar](11) NULL,
	[DEFEC_I02] [float] NULL,
	[SOLES_I02] [float] NULL,
	[DOLAR_I02] [float] NULL,
	[FEVEN_I02] [smalldatetime] NULL,
	[NUREG_I02] [nvarchar](6) NULL,
	[NUDOC_I02] [nvarchar](8) NULL,
	[TIDOC_I02] [nvarchar](5) NULL,
	[FEDOC_I02] [smalldatetime] NULL,
	[FECON_I02] [smalldatetime] NULL,
	[MAYOR_I02] [nvarchar](1) NULL,
	[NUSER_I02] [nvarchar](3) NULL,
	[ANULA_I02] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbI0505]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbI0505](
	[EMPRE_I05] [nvarchar](2) NULL,
	[NUMES_I05] [float] NULL,
	[LOCAL_I05] [nvarchar](5) NULL,
	[SUBDI_I05] [nvarchar](4) NULL,
	[NUFIL_I05] [float] NULL,
	[OPERA_I05] [nvarchar](2) NULL,
	[NUCOM_I05] [float] NULL,
	[FECON_I05] [smalldatetime] NULL,
	[BANCO_I05] [nvarchar](5) NULL,
	[MONED_I05] [nvarchar](1) NULL,
	[CHEQU_I05] [nvarchar](15) NULL,
	[MONTO_I05] [float] NULL,
	[FAVOR_I05] [nvarchar](50) NULL,
	[GLOS1_I05] [nvarchar](50) NULL,
	[GLOS2_I05] [nvarchar](50) NULL,
	[GLOS3_I05] [nvarchar](50) NULL,
	[STATU_I05] [nvarchar](1) NULL,
	[CONCI_I05] [nvarchar](1) NULL,
	[TIDOC_I05] [nvarchar](5) NULL,
	[USUAR_I05] [nvarchar](8) NULL,
	[NUSER_I05] [nvarchar](3) NULL,
	[NUDOC_I05] [nvarchar](12) NULL,
	[FECHA_I05] [smalldatetime] NULL,
	[NUDIA_I05] [float] NULL,
	[NUREG_I05] [nvarchar](6) NULL,
	[COBCO_I05] [nvarchar](5) NULL,
	[CUBCO_I05] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CBM0205]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBM0205](
	[EMPRE_M02] [char](2) NULL,
	[CUENT_M02] [char](8) NULL,
	[DESCR_M02] [char](25) NULL,
	[NIVEL_M02] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CBM0305]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBM0305](
	[EMPRE_M03] [char](2) NULL,
	[CODIG_M03] [varchar](6) NULL,
	[DESCR_M03] [varchar](50) NULL,
	[ABREV_M03] [varchar](10) NULL,
	[FLFDO_M03] [bit] NULL,
	[HECTA_M03] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CBM04]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBM04](
	[CODIG_M04] [varchar](2) NOT NULL,
	[DESCR_M04] [varchar](50) NOT NULL,
	[ABREV_M04] [varchar](20) NULL,
	[FEINI_M04] [datetime] NOT NULL,
	[FEFIN_M04] [datetime] NOT NULL,
	[ACTIV_M04] [bit] NOT NULL,
	[COBCB_M04] [varchar](7) NOT NULL,
 CONSTRAINT [PK_CBM04] PRIMARY KEY CLUSTERED 
(
	[CODIG_M04] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbR0105]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbR0105](
	[EMPRE_R01] [nvarchar](2) NULL,
	[CUENT_R01] [nvarchar](13) NULL,
	[DBINI_R01] [float] NULL,
	[HBINI_R01] [float] NULL,
	[DBENE_R01] [float] NULL,
	[HBENE_R01] [float] NULL,
	[DBFEB_R01] [float] NULL,
	[HBFEB_R01] [float] NULL,
	[DBMAR_R01] [float] NULL,
	[HBMAR_R01] [float] NULL,
	[DBABR_R01] [float] NULL,
	[HBABR_R01] [float] NULL,
	[DBMAY_R01] [float] NULL,
	[HBMAY_R01] [float] NULL,
	[DBJUN_R01] [float] NULL,
	[HBJUN_R01] [float] NULL,
	[DBJUL_R01] [float] NULL,
	[HBJUL_R01] [float] NULL,
	[DBAGO_R01] [float] NULL,
	[HBAGO_R01] [float] NULL,
	[DBSET_R01] [float] NULL,
	[HBSET_R01] [float] NULL,
	[DBOCT_R01] [float] NULL,
	[HBOCT_R01] [float] NULL,
	[DBNOV_R01] [float] NULL,
	[HBNOV_R01] [float] NULL,
	[DBDIC_R01] [float] NULL,
	[HBDIC_R01] [float] NULL,
	[DBCIE_R01] [float] NULL,
	[HBCIE_R01] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbR0205]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbR0205](
	[EMPRE_R02] [nvarchar](2) NULL,
	[CUENT_R02] [nvarchar](13) NULL,
	[DBINI_R02] [float] NULL,
	[HBINI_R02] [float] NULL,
	[DBENE_R02] [float] NULL,
	[HBENE_R02] [float] NULL,
	[DBFEB_R02] [float] NULL,
	[HBFEB_R02] [float] NULL,
	[DBMAR_R02] [float] NULL,
	[HBMAR_R02] [float] NULL,
	[DBABR_R02] [float] NULL,
	[HBABR_R02] [float] NULL,
	[DBMAY_R02] [float] NULL,
	[HBMAY_R02] [float] NULL,
	[DBJUN_R02] [float] NULL,
	[HBJUN_R02] [float] NULL,
	[DBJUL_R02] [float] NULL,
	[HBJUL_R02] [float] NULL,
	[DBAGO_R02] [float] NULL,
	[HBAGO_R02] [float] NULL,
	[DBSET_R02] [float] NULL,
	[HBSET_R02] [float] NULL,
	[DBOCT_R02] [float] NULL,
	[HBOCT_R02] [float] NULL,
	[DBNOV_R02] [float] NULL,
	[HBNOV_R02] [float] NULL,
	[DBDIC_R02] [float] NULL,
	[HBDIC_R02] [float] NULL,
	[DBCIE_R02] [float] NULL,
	[HBCIE_R02] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbR0305]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbR0305](
	[EMPRE_R03] [nvarchar](2) NULL,
	[COSTO_R03] [nvarchar](8) NULL,
	[GASTO_R03] [nvarchar](8) NULL,
	[DBINI_R03] [float] NULL,
	[HBINI_R03] [float] NULL,
	[DBENE_R03] [float] NULL,
	[HBENE_R03] [float] NULL,
	[DBFEB_R03] [float] NULL,
	[HBFEB_R03] [float] NULL,
	[DBMAR_R03] [float] NULL,
	[HBMAR_R03] [float] NULL,
	[DBABR_R03] [float] NULL,
	[HBABR_R03] [float] NULL,
	[DBMAY_R03] [float] NULL,
	[HBMAY_R03] [float] NULL,
	[DBJUN_R03] [float] NULL,
	[HBJUN_R03] [float] NULL,
	[DBJUL_R03] [float] NULL,
	[HBJUL_R03] [float] NULL,
	[DBAGO_R03] [float] NULL,
	[HBAGO_R03] [float] NULL,
	[DBSET_R03] [float] NULL,
	[HBSET_R03] [float] NULL,
	[DBOCT_R03] [float] NULL,
	[HBOCT_R03] [float] NULL,
	[DBNOV_R03] [float] NULL,
	[HBNOV_R03] [float] NULL,
	[DBDIC_R03] [float] NULL,
	[HBDIC_R03] [float] NULL,
	[DBCIE_R03] [float] NULL,
	[HBCIE_R03] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbR0405]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbR0405](
	[EMPRE_R04] [nvarchar](2) NULL,
	[COSTO_R04] [nvarchar](8) NULL,
	[GASTO_R04] [nvarchar](8) NULL,
	[DBINI_R04] [float] NULL,
	[HBINI_R04] [float] NULL,
	[DBENE_R04] [float] NULL,
	[HBENE_R04] [float] NULL,
	[DBFEB_R04] [float] NULL,
	[HBFEB_R04] [float] NULL,
	[DBMAR_R04] [float] NULL,
	[HBMAR_R04] [float] NULL,
	[DBABR_R04] [float] NULL,
	[HBABR_R04] [float] NULL,
	[DBMAY_R04] [float] NULL,
	[HBMAY_R04] [float] NULL,
	[DBJUN_R04] [float] NULL,
	[HBJUN_R04] [float] NULL,
	[DBJUL_R04] [float] NULL,
	[HBJUL_R04] [float] NULL,
	[DBAGO_R04] [float] NULL,
	[HBAGO_R04] [float] NULL,
	[DBSET_R04] [float] NULL,
	[HBSET_R04] [float] NULL,
	[DBOCT_R04] [float] NULL,
	[HBOCT_R04] [float] NULL,
	[DBNOV_R04] [float] NULL,
	[HBNOV_R04] [float] NULL,
	[DBDIC_R04] [float] NULL,
	[HBDIC_R04] [float] NULL,
	[DBCIE_R04] [float] NULL,
	[HBCIE_R04] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbT0105]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbT0105](
	[EMPRE_T01] [nvarchar](2) NULL,
	[CLASE_T01] [nvarchar](2) NULL,
	[TIPOS_T01] [nvarchar](2) NULL,
	[ITEMS_T01] [nvarchar](2) NULL,
	[DESCR_T01] [nvarchar](20) NULL,
	[ABREV_T01] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbt0205]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbt0205](
	[EMPRE_T02] [nvarchar](2) NULL,
	[FECHA_T02] [smalldatetime] NOT NULL,
	[OFICP_T02] [float] NULL,
	[OFIVT_T02] [float] NULL,
	[BANCP_T02] [float] NULL,
	[BANVT_T02] [float] NULL,
	[OCOCP_T02] [float] NULL,
	[OCOVT_T02] [float] NULL,
	[PERIO_T02] [varchar](7) NULL,
	[USUAR_T02] [varchar](20) NULL,
	[USMOD_T02] [varchar](20) NULL,
 CONSTRAINT [PK_cbt0205] PRIMARY KEY CLUSTERED 
(
	[FECHA_T02] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CBT0305]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBT0305](
	[EMPRE_T03] [char](2) NULL,
	[CODIG_T03] [char](8) NULL,
	[DESCR_T03] [char](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CBT0405]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBT0405](
	[CODIG_T04] [char](2) NULL,
	[DESCR_T04] [char](30) NULL,
	[ABREV_T04] [char](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CBT0505]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBT0505](
	[EMPRE_T05] [char](2) NULL,
	[CODIG_T05] [char](8) NULL,
	[DESCR_T05] [char](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLAN_NUEVO]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLAN_NUEVO](
	[cuenta_ANT] [nvarchar](255) NOT NULL,
	[Descripción_ANT] [nvarchar](255) NULL,
	[cuenta_NUE] [nvarchar](255) NULL,
	[Descripción_NUE] [nvarchar](255) NULL,
 CONSTRAINT [PK_PLAN_NUEVO] PRIMARY KEY CLUSTERED 
(
	[cuenta_ANT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CBM0305] ADD  CONSTRAINT [DF_CBM0305_FLFDO_M03]  DEFAULT (0) FOR [FLFDO_M03]
GO
ALTER TABLE [dbo].[CBM0305] ADD  CONSTRAINT [DF_CBM0305_HECTA_M03]  DEFAULT (0) FOR [HECTA_M03]
GO
ALTER TABLE [dbo].[CBM04] ADD  CONSTRAINT [DF_CBM04_ACTIV_M04]  DEFAULT (0) FOR [ACTIV_M04]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_EMPRE_T02]  DEFAULT ('62') FOR [EMPRE_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_OFICP_T02]  DEFAULT (0) FOR [OFICP_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_OFIVT_T02]  DEFAULT (0) FOR [OFIVT_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_BANCP_T02]  DEFAULT (0) FOR [BANCP_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_BANVT_T02]  DEFAULT (0) FOR [BANVT_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_OCOCP_T02]  DEFAULT (0) FOR [OCOCP_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_OCOVT_T02]  DEFAULT (0) FOR [OCOVT_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_PERIO_T02]  DEFAULT (' ') FOR [PERIO_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_USUAR_T02]  DEFAULT (' ') FOR [USUAR_T02]
GO
ALTER TABLE [dbo].[cbt0205] ADD  CONSTRAINT [DF_cbt0205_USMOD_T02]  DEFAULT (' ') FOR [USMOD_T02]
GO
/****** Object:  StoredProcedure [dbo].[Sp_CBM0105]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Sp_CBM0105]
@OP Int,
@EMPRE_M01 nvarchar(2), 
@CUENT_M01 nvarchar(8), 
@DESCR_M01 nvarchar(40),
@TIPOS_M01 nvarchar(1),
@NIVEL_M01 float, 
@GENER_M01 nvarchar(8), 
@DEFEC_M01 float, 
@CLASE_M01 nvarchar(5), 
@MONET_M01 nvarchar(1), 
@AJUST_M01 nvarchar(1), 
@AUXIL_M01 nvarchar(1), 
@CTAPG_M01 nvarchar(1), 
@COSTO_M01 nvarchar(1), 
@CTACO_M01 nvarchar(8), 
@CONCI_M01 nvarchar(1), 
@CTAA1_M01 nvarchar(8), 
@CTAA2_M01 nvarchar(8), 
@REGIS_M01 nvarchar(1), 
@FECAD_M01 datetime, 
@FECMO_M01 datetime, 
@PENDI_M01 nvarchar(1)
AS
If @OP = 1
   Begin
	Insert Into CBM0105
	Values(@EMPRE_M01, @CUENT_M01, @DESCR_M01, @TIPOS_M01, @NIVEL_M01, @GENER_M01, @DEFEC_M01, @CLASE_M01, @MONET_M01, @AJUST_M01, @AUXIL_M01, @CTAPG_M01, @COSTO_M01, @CTACO_M01, @CONCI_M01, @CTAA1_M01, @CTAA2_M01, @REGIS_M01, @FECAD_M01, @FECMO_M01, @PENDI_M01)
   End
If @OP = 2
   Begin
	Update CBM0105 Set
	DESCR_M01 = @DESCR_M01,
	TIPOS_M01 = @TIPOS_M01,
	NIVEL_M01 = @NIVEL_M01, 
	GENER_M01 = @GENER_M01, 
	DEFEC_M01 = @DEFEC_M01, 
	CLASE_M01 = @CLASE_M01, 
	MONET_M01 = @MONET_M01, 
	AJUST_M01 = @AJUST_M01, 
	AUXIL_M01 = @AUXIL_M01, 
	CTAPG_M01 = @CTAPG_M01, 
	COSTO_M01 = @COSTO_M01, 
	CTACO_M01 = @CTACO_M01, 
	CONCI_M01 = @CONCI_M01, 
	CTAA1_M01 = @CTAA1_M01, 
	CTAA2_M01 = @CTAA2_M01, 
	REGIS_M01 = @REGIS_M01, 
	FECAD_M01 = @FECAD_M01, 
	FECMO_M01 = @FECMO_M01, 
	PENDI_M01 = @PENDI_M01
      Where (EMPRE_M01 = @EMPRE_M01) And (CUENT_M01 = @CUENT_M01)
   End
If @OP = 3
   Begin
	Select * From CBM0105
	Where (EMPRE_M01 = @EMPRE_M01) And (CUENT_M01 = @CUENT_M01)
   End
If @OP = 4
   Begin
	Select * From CBM0105
	Order By Empre_M01,Cuent_M01
   End
If @OP = 5
   Begin
	Delete From CBM0105
	Where (EMPRE_M01 = @EMPRE_M01) And (CUENT_M01 = @CUENT_M01)
   End

GO
/****** Object:  StoredProcedure [dbo].[SP_CBT02]    Script Date: 18/02/2023 19:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_CBT02]
@OP INT,
@FECHA_T02 DateTime, 
@OFICP_T02 Float, 
@OFIVT_T02 Float
AS
If @OP = 1
   Begin
	Insert Into CBT0205
	Values(51,@FECHA_T02, @OFICP_T02, @OFIVT_T02,0,0,0,0)
   End
If @OP = 2
   Begin
	Update CBT0205 Set
	OFICP_T02  = @OFICP_T02,
 	OFIVT_T02  = @OFIVT_T02
	Where (FECHA_T02 = @FECHA_T02)
   End
If @OP = 3
   Begin
	Select * From CBT0205 
	Where (FECHA_T02 = @FECHA_T02)
   End
If @OP = 4
   Begin
	Select * From CBT0205 
	Order By FECHA_T02 
   End
If @OP = 5
   Begin
	Delete From CBT0205
	Where (FECHA_T02 = @FECHA_T02)
   End
GO
USE [master]
GO
ALTER DATABASE [CB] SET  READ_WRITE 
GO
