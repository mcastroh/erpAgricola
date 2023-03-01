USE [master]
GO
/****** Object:  Database [TC]    Script Date: 18/02/2023 19:53:54 ******/
CREATE DATABASE [TC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TC_Data', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\TC.MDF' , SIZE = 57920KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'TC_Log', FILENAME = N'D:\MSSQL14.MSSQLSERVER\MSSQL\DATA\TC.LDF' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [TC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TC].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [TC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TC] SET ARITHABORT OFF 
GO
ALTER DATABASE [TC] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TC] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [TC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TC] SET  MULTI_USER 
GO
ALTER DATABASE [TC] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [TC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TC] SET QUERY_STORE = OFF
GO
USE [TC]
GO
/****** Object:  User [wbuenano]    Script Date: 18/02/2023 19:53:54 ******/
CREATE USER [wbuenano] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[wbuenano]
GO
/****** Object:  User [user]    Script Date: 18/02/2023 19:53:54 ******/
CREATE USER [user] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[user]
GO
/****** Object:  User [sqlbackup]    Script Date: 18/02/2023 19:53:54 ******/
CREATE USER [sqlbackup] WITH DEFAULT_SCHEMA=[sqlbackup]
GO
/****** Object:  User [consulta]    Script Date: 18/02/2023 19:53:54 ******/
CREATE USER [consulta] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[consulta]
GO
ALTER ROLE [db_owner] ADD MEMBER [wbuenano]
GO
ALTER ROLE [db_owner] ADD MEMBER [user]
GO
ALTER ROLE [db_owner] ADD MEMBER [sqlbackup]
GO
ALTER ROLE [db_owner] ADD MEMBER [consulta]
GO
/****** Object:  Schema [consulta]    Script Date: 18/02/2023 19:53:54 ******/
CREATE SCHEMA [consulta]
GO
/****** Object:  Schema [sqlbackup]    Script Date: 18/02/2023 19:53:54 ******/
CREATE SCHEMA [sqlbackup]
GO
/****** Object:  Schema [user]    Script Date: 18/02/2023 19:53:54 ******/
CREATE SCHEMA [user]
GO
/****** Object:  Schema [wbuenano]    Script Date: 18/02/2023 19:53:54 ******/
CREATE SCHEMA [wbuenano]
GO
/****** Object:  Table [dbo].[TCI49]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI49](
	[IDDET_I49] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I49] [int] NULL,
	[MAQUI_I49] [varchar](2) NULL,
	[LABOR_I49] [varchar](6) NULL,
	[CAMPO_I49] [varchar](10) NULL,
	[HRINI_I49] [datetime] NULL,
	[HRFIN_I49] [datetime] NULL,
	[HORAS_I49] [float] NULL,
	[REFER_I49] [varchar](50) NULL,
 CONSTRAINT [PK_TCI49] PRIMARY KEY CLUSTERED 
(
	[IDDET_I49] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT06]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT06](
	[CODIG_T06] [char](2) NULL,
	[DESCR_T06] [varchar](50) NULL,
	[ABREV_T06] [char](4) NULL,
	[PLACA_T06] [char](10) NULL,
	[XEMPR_T06] [varchar](20) NULL,
	[EMPRE_T06] [char](2) NULL,
	[OPERA_T06] [char](2) NULL,
	[CAMPO_T06] [varchar](8) NULL,
	[NOCRT_T06] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI48]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI48](
	[IDCAB_I48] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PERIO_I48] [varchar](7) NULL,
	[FEREG_I48] [datetime] NULL,
	[FUNDO_I48] [varchar](2) NULL,
	[NUCTR_I48] [varchar](12) NULL,
	[FECHA_I48] [datetime] NULL,
	[OBSER_I48] [varchar](100) NULL,
	[USUAR_I48] [varchar](20) NULL,
	[RESPO_I48] [varchar](50) NULL,
	[OLDNO_I48] [varchar](12) NULL,
 CONSTRAINT [PK_TCI48] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I48] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT05]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT05](
	[CLASE_T05] [char](4) NULL,
	[CODIG_T05] [char](2) NULL,
	[DESCR_T05] [varchar](50) NULL,
	[ABREV_T05] [char](6) NOT NULL,
	[FLMAQ_T05] [char](1) NULL,
	[FLCAM_T05] [char](1) NULL,
	[CAMPO_T05] [char](8) NULL,
	[SBTN3_T05] [varchar](8) NULL,
 CONSTRAINT [PK_TCT05] PRIMARY KEY CLUSTERED 
(
	[ABREV_T05] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VISTA_LABORES_MAQ_COSTEADA_V01]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_LABORES_MAQ_COSTEADA_V01]
AS
SELECT     CAB_MOV_MAQ.PERIO_I48 AS MES, DET_MOV_MAQ.CAMPO_I49 AS LOTE, LOTES.DESCR_T03 AS DESC_LOTE, 
                      DET_MOV_MAQ.LABOR_I49 AS LABOR, LABORES_MAQ.DESCR_T05 AS DESC_LABOR, SUM(DET_MOV_MAQ.HORAS_I49) AS HORAS_MAQ, 
                      SUM(DET_MOV_MAQ.HORAS_I49) *
                          (SELECT     SUM(CONSUMO.SOLES_I02) / SUM(HORAS.HORAS_I49) AS CTPHR
                            FROM          (SELECT     PERIO_I01, COSTO_I02, DESCR_T03, SUM(SOLES_I02) AS SOLES_I02
                                                    FROM          MT.DBO.MTI0105 INNER JOIN
                                                                           (MT.DBO.MTI0205 INNER JOIN
                                                                           PR.dbo.PRT03 ON COSTO_I02 = ABREV_T03) ON IDCAB_I01 = IDCAB_I02
                                                    WHERE      PERIO_I01 = CAB_MOV_MAQ.PERIO_I48 AND LEFT(TIVOU_I01, 1) = '2' AND LEFT(OPERA_I01, 3) <> '212' AND 
                                                                           DTHMQ_T03 = 'S' AND CHARINDEX(LEFT(CODMA_I02, 4),
                                                                               (SELECT     DCHRM_T03
                                                                                 FROM          PR.DBO.PRT03
                                                                                 WHERE      DTHMQ_T03 = 'S'
                                                                                 GROUP BY DCHRM_T03)) > 0
                                                    GROUP BY PERIO_I01, COSTO_I02, DESCR_T03) AS CONSUMO LEFT JOIN
                                                       (SELECT     PERIO_I48, MAQUI_I49, DESCR_T06, CAMPO_T06, SUM(HORAS_I49) AS HORAS_I49
                                                         FROM          TC.DBO.TCI48 INNER JOIN
                                                                                (TC.DBO.TCI49 INNER JOIN
                                                                                TC.DBO.TCT06 ON MAQUI_I49 = CODIG_T06) ON IDCAB_I48 = IDCAB_I49
                                                         WHERE      PERIO_I48 = CAB_MOV_MAQ.PERIO_I48
                                                         GROUP BY PERIO_I48, MAQUI_I49, DESCR_T06, CAMPO_T06) AS HORAS ON CONSUMO.COSTO_I02 = HORAS.CAMPO_T06) 
                      AS COSTO
FROM         dbo.TCI48 CAB_MOV_MAQ INNER JOIN
                      dbo.TCI49 DET_MOV_MAQ INNER JOIN
                      dbo.TCT05 LABORES_MAQ ON DET_MOV_MAQ.LABOR_I49 = LABORES_MAQ.ABREV_T05 INNER JOIN
                      PR.dbo.PRT03 LOTES ON DET_MOV_MAQ.CAMPO_I49 = LOTES.ABREV_T03 ON CAB_MOV_MAQ.IDCAB_I48 = DET_MOV_MAQ.IDCAB_I49 INNER JOIN
                      CB.dbo.CBM0305 FUNDOS ON CAB_MOV_MAQ.FUNDO_I48 = FUNDOS.ABREV_M03
WHERE     (CAB_MOV_MAQ.PERIO_I48 >= '2018-01')
GROUP BY CAB_MOV_MAQ.PERIO_I48, DET_MOV_MAQ.CAMPO_I49, LOTES.DESCR_T03, DET_MOV_MAQ.LABOR_I49, LABORES_MAQ.DESCR_T05
GO
/****** Object:  Table [dbo].[TCT32]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT32](
	[CODIG_T32] [char](3) NOT NULL,
	[DESCR_T32] [varchar](50) NULL,
	[ABREV_T32] [varchar](50) NULL,
 CONSTRAINT [PK_TCT32] PRIMARY KEY CLUSTERED 
(
	[CODIG_T32] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT40]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT40](
	[CODIG_T40] [char](4) NOT NULL,
	[DESCR_T40] [varchar](100) NULL,
	[ABREV_T40] [char](100) NULL,
 CONSTRAINT [PK_TCT40] PRIMARY KEY CLUSTERED 
(
	[CODIG_T40] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT44]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT44](
	[CODIG_T44] [char](2) NOT NULL,
	[DESCR_T44] [varchar](50) NULL,
	[ABREV_T44] [char](10) NULL,
	[CODPL_T44] [varchar](10) NULL,
	[ACTIV_T44] [bit] NULL,
 CONSTRAINT [PK_TCT44] PRIMARY KEY CLUSTERED 
(
	[CODIG_T44] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT36]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT36](
	[CODIG_T36] [char](2) NULL,
	[DESCR_T36] [varchar](50) NULL,
	[ABREV_T36] [char](4) NOT NULL,
	[TIAPL_T36] [char](2) NULL,
	[RQPOZ_T36] [bit] NULL,
	[RQTRA_T36] [bit] NULL,
	[RQMAN_T36] [bit] NULL,
	[STADF_T36] [bit] NULL,
 CONSTRAINT [PK_TCT36] PRIMARY KEY CLUSTERED 
(
	[ABREV_T36] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT37]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT37](
	[CODIG_T37] [char](2) NULL,
	[DESCR_T37] [varchar](50) NULL,
	[ABREV_T37] [char](4) NULL,
	[TIAPL_T37] [char](2) NULL,
	[RQTRA_T37] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI40]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI40](
	[IDCAB_I40] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TIAPL_I40] [char](2) NULL,
	[CLAPL_I40] [char](2) NULL,
	[FEREG_I40] [datetime] NULL,
	[NUAPL_I40] [varchar](8) NULL,
	[FECHA_I40] [datetime] NULL,
	[FEAPL_I40] [datetime] NULL,
	[HAAPL_I40] [float] NULL,
	[CAMPO_I40] [varchar](10) NULL,
	[GTAGU_I40] [float] NULL,
	[TQAPL_I40] [float] NULL,
	[ETAPA_I40] [char](2) NULL,
	[OBSER_I40] [varchar](300) NULL,
	[MEAPL_I40] [char](4) NULL,
	[EQAP1_I40] [char](4) NULL,
	[EQAP2_I40] [char](4) NULL,
	[EQAP3_I40] [char](4) NULL,
	[EQAP4_I40] [char](4) NULL,
	[EQAP5_I40] [char](4) NULL,
	[EQAP6_I40] [char](4) NULL,
	[MAQU1_I40] [char](2) NULL,
	[MAQU2_I40] [char](2) NULL,
	[MAQU3_I40] [char](2) NULL,
	[MAQU4_I40] [char](2) NULL,
	[MAQU5_I40] [char](2) NULL,
	[MAQU6_I40] [char](2) NULL,
	[VLTRA_I40] [float] NULL,
	[RPMMO_I40] [float] NULL,
	[CABOQ_I40] [float] NULL,
	[PRTRA_I40] [float] NULL,
	[TIBOQ_I40] [varchar](30) NULL,
	[TIDIF_I40] [varchar](30) NULL,
	[NUPOL_I40] [float] NULL,
	[RETE1_I40] [char](2) NULL,
	[RETE2_I40] [char](2) NULL,
	[TCEOA_I40] [float] NULL,
	[TCAOA_I40] [float] NULL,
	[OBSMT_I40] [varchar](100) NULL,
	[STAPL_I40] [char](4) NULL,
	[NUPTS_I40] [int] NULL,
	[POZO__I40] [char](2) NULL,
	[OPERA_I40] [char](2) NULL,
	[CREAL_I40] [varchar](8) NULL,
	[OPTR1_I40] [char](2) NULL,
	[OPTR2_I40] [char](2) NULL,
	[OPTR3_I40] [char](2) NULL,
	[OPTR4_I40] [char](2) NULL,
	[OPTR5_I40] [char](2) NULL,
	[OPTR6_I40] [char](2) NULL,
	[TAEOA_I40] [float] NULL,
	[CAMPA_I40] [varchar](20) NULL,
	[IRBPA_I40] [bit] NULL,
	[USUAR_I40] [varchar](20) NULL,
	[FLAPR_I40] [bit] NULL,
	[FAPRO_I40] [datetime] NULL,
	[HAPRO_I40] [datetime] NULL,
	[APROB_I40] [varchar](50) NULL,
	[FLALM_I40] [bit] NULL,
	[USMOD_I40] [varchar](20) NULL,
	[FLATA_I40] [bit] NULL,
	[LOCAL_I40] [varchar](2) NULL,
	[CODAL_I40] [varchar](5) NULL,
	[TRATA_I40] [varchar](2) NULL,
	[COMIN_I40] [float] NULL,
	[COMAX_I40] [float] NULL,
	[CORAL_I40] [float] NULL,
	[PHMIN_I40] [float] NULL,
	[PHMAX_I40] [float] NULL,
	[PHRAL_I40] [float] NULL,
 CONSTRAINT [PK_TCI40] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I40] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT47]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT47](
	[FECHA] [datetime] NULL,
	[HORA] [datetime] NULL,
	[Temp_Out] [float] NULL,
	[Hi_Temp] [float] NULL,
	[Low_Temp] [float] NULL,
	[Out_Hum] [float] NULL,
	[Dew_Pt] [float] NULL,
	[Wind_Speed] [float] NULL,
	[Wind_Dir] [nvarchar](255) NULL,
	[Wind_Run] [float] NULL,
	[Hi_Speed] [float] NULL,
	[Hi_Dir] [nvarchar](255) NULL,
	[Wind_Chill] [float] NULL,
	[Heat_Index] [float] NULL,
	[THW_Index] [float] NULL,
	[THSW_Index] [float] NULL,
	[Bar] [float] NULL,
	[Rain] [float] NULL,
	[Rain_Rate] [float] NULL,
	[Solar_Rad] [float] NULL,
	[Solar_Energy] [float] NULL,
	[Hi_Solar_Rad] [float] NULL,
	[UV_Index] [float] NULL,
	[UV_Dose] [float] NULL,
	[Hi_UV] [float] NULL,
	[Heat_D-D] [float] NULL,
	[Cool_D-D] [float] NULL,
	[In_Temp] [float] NULL,
	[In_Hum] [float] NULL,
	[In_Dew] [float] NULL,
	[In_Heat] [float] NULL,
	[In_EMC] [float] NULL,
	[In_Air_Density] [float] NULL,
	[ET] [float] NULL,
	[Wind_Samp] [float] NULL,
	[Wind_Tx] [float] NULL,
	[ISS_Recept] [float] NULL,
	[Arc_Int] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VIEW_CLIMA]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CLIMA]
AS
SELECT     TOP 100 PERCENT FECHA, ROUND(AVG(Temp_Out), 2) AS Temp_Out, ROUND(AVG(Out_Hum), 2) AS Out_Hum, ROUND(AVG(Wind_Speed), 2) 
                      AS Wind_Speed
FROM         dbo.TCT47
GROUP BY FECHA
ORDER BY FECHA
GO
/****** Object:  Table [dbo].[TCI41]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI41](
	[IDDET_I41] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I41] [int] NULL,
	[CODMA_I41] [char](9) NULL,
	[REING_I41] [float] NULL,
	[CAREN_I41] [float] NULL,
	[CARTX_I41] [varchar](2) NULL,
	[OBJET_I41] [char](3) NULL,
	[DS100_I41] [float] NULL,
	[DSTAN_I41] [float] NULL,
	[DSLTA_I41] [float] NULL,
	[DSLOT_I41] [float] NULL,
	[TQLOT_I41] [float] NULL,
	[LTSAD_I41] [float] NULL,
	[CAMPO_I41] [char](8) NULL,
	[HAS___I41] [float] NULL,
	[CDA___I41] [char](8) NULL,
	[KGXHA_I41] [float] NULL,
	[KGXCA_I41] [float] NULL,
	[PERMI_I41] [char](1) NULL,
	[DSXHA_I41] [float] NULL,
	[TITRA_I41] [varchar](2) NULL,
	[TRATA_I41] [varchar](2) NULL,
 CONSTRAINT [PK_TCI41] PRIMARY KEY CLUSTERED 
(
	[IDDET_I41] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VISTA OAL IBAO V04]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA OAL IBAO V04]
AS
SELECT     TCI40.NUAPL_I40 AS Codigo_Orden, TCI40.CAMPO_I40 AS ID_Lote, PRT03.DESCR_T03 AS Descripcion_Lote, TCI40.FECHA_I40 AS Fecha_Orden, TCI40.FEAPL_I40 AS Fecha_Aplicacion, 
                      TCT36.DESCR_T36 AS Metodo_Aplicacion, 0 AS Ph_Minimo, 0 AS Ph_Maximo, 0 AS Conductividad, 0 AS Tolerancia_Conductividad, TCI40.VLTRA_I40 AS Velocidad_Tractor, 
                      TCI40.RPMMO_I40 AS RPM, TCI40.CABOQ_I40 AS Nro_Boquillas, TCI40.TCEOA_I40 AS Nro_Tancadas_Programadas, TCI41.CODMA_I41 AS ID_Producto, MST21.DESMA_M02 AS Nombre_Producto, 
                      TCT40.DESCR_T40 AS Ingrediente_Activo, MST22.DSITE_T02 AS Tipo_Producto, MST21.UNIDA_M02 AS Unidad_Medida, TCI41.DS100_I41 AS Dosis, TCI41.DSTAN_I41 AS Dosis_Tanque, 
                      TCI41.CAREN_I41 AS Tolerancia_Dosis, TCI40.MAQU1_I40 AS ID_Tractor_1,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06
                            WHERE      (CODIG_T06 = TCI40.MAQU1_I40)) AS Tractor_1, TCI40.OPTR1_I40 AS ID_Operador_Tractor_1,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44
                            WHERE      (CODIG_T44 = TCI40.OPTR1_I40)) AS Operador_Tractor_1, TCI40.MAQU2_I40 AS ID_Tractor_2,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_5
                            WHERE      (CODIG_T06 = TCI40.MAQU2_I40)) AS Tractor_2, TCI40.OPTR2_I40 AS ID_Operador_Tractor_2,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_5
                            WHERE      (CODIG_T44 = TCI40.OPTR2_I40)) AS Operador_Tractor_2, TCI40.MAQU3_I40 AS ID_Tractor_3,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_4
                            WHERE      (CODIG_T06 = TCI40.MAQU3_I40)) AS Tractor_3, TCI40.OPTR3_I40 AS ID_Operador_Tractor_3,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_4
                            WHERE      (CODIG_T44 = TCI40.OPTR3_I40)) AS Operador_Tractor_3, TCI40.MAQU4_I40 AS ID_Tractor_4,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_3
                            WHERE      (CODIG_T06 = TCI40.MAQU4_I40)) AS Tractor_4, TCI40.OPTR4_I40 AS ID_Operador_Tractor_4,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_3
                            WHERE      (CODIG_T44 = TCI40.OPTR4_I40)) AS Operador_Tractor_4, TCI40.MAQU5_I40 AS ID_Tractor_5,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_2
                            WHERE      (CODIG_T06 = TCI40.MAQU5_I40)) AS Tractor_5, TCI40.OPTR5_I40 AS ID_Operador_Tractor_5,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_2
                            WHERE      (CODIG_T44 = TCI40.OPTR5_I40)) AS Operador_Tractor_5, TCI40.MAQU6_I40 AS ID_Tractor_6,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_1
                            WHERE      (CODIG_T06 = TCI40.MAQU6_I40)) AS Tractor_6, TCI40.OPTR6_I40 AS ID_Operador_Tractor_6,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_1
                            WHERE      (CODIG_T44 = TCI40.OPTR6_I40)) AS Operador_Tractor_6, TCI40.EQAP1_I40 AS ID_Fumigador_1,
                          (SELECT     DESCR_T37
                            FROM          dbo.TCT37
                            WHERE      (ABREV_T37 = TCI40.EQAP1_I40)) AS Fumigador_1, TCI40.EQAP2_I40 AS ID_Fumigador_2,
                          (SELECT     DESCR_T37
                            FROM          dbo.TCT37 AS TCT37_5
                            WHERE      (ABREV_T37 = TCI40.EQAP2_I40)) AS Fumigador_2, TCI40.EQAP3_I40 AS ID_Fumigador_3,
                          (SELECT     DESCR_T37
                            FROM          dbo.TCT37 AS TCT37_4
                            WHERE      (ABREV_T37 = TCI40.EQAP3_I40)) AS Fumigador_3, TCI40.EQAP4_I40 AS ID_Fumigador_4,
                          (SELECT     DESCR_T37
                            FROM          dbo.TCT37 AS TCT37_3
                            WHERE      (ABREV_T37 = TCI40.EQAP4_I40)) AS Fumigador_4, TCI40.EQAP5_I40 AS ID_Fumigador_5,
                          (SELECT     DESCR_T37
                            FROM          dbo.TCT37 AS TCT37_2
                            WHERE      (ABREV_T37 = TCI40.EQAP5_I40)) AS Fumigador_5, TCI40.EQAP6_I40 AS ID_Fumigador_6,
                          (SELECT     DESCR_T37
                            FROM          dbo.TCT37 AS TCT37_1
                            WHERE      (ABREV_T37 = TCI40.EQAP6_I40)) AS Fumigador_6, TCI40.GTAGU_I40 AS MOJAMIENTO
FROM         dbo.TCI40 AS TCI40 INNER JOIN
                      dbo.TCI41 AS TCI41 INNER JOIN
                      dbo.TCT32 AS TCT32 ON TCI41.OBJET_I41 = TCT32.CODIG_T32 INNER JOIN
                      MS.dbo.MST21 AS MST21 INNER JOIN
                      MS.dbo.MST26 AS MST26 INNER JOIN
                      dbo.TCT40 AS TCT40 ON MST26.NOTEC_T26 = TCT40.CODIG_T40 ON MST21.IDCAB_M02 = MST26.IDCAB_T26 INNER JOIN
                      MS.dbo.MST22 AS MST22 ON MST21.CLASE_M02 = MST22.CDITE_T02 ON TCI41.CODMA_I41 = MST21.CODMA_M02 ON TCI40.IDCAB_I40 = TCI41.IDCAB_I41 INNER JOIN
                      PR.dbo.PRT03 AS PRT03 INNER JOIN
                      PR.dbo.PRT02 AS PRT02 INNER JOIN
                      PR.dbo.PRT01 AS PRT01 INNER JOIN
                      CB.dbo.CBM0305 AS CBM0305 ON PRT01.COSTO_T01 = CBM0305.ABREV_M03 ON PRT02.NIV01_T02 = PRT01.ABREV_T01 ON PRT03.NIV02_T03 = PRT02.ABREV_T02 ON 
                      TCI40.CAMPO_I40 = PRT03.ABREV_T03 INNER JOIN
                      dbo.TCT36 AS TCT36 ON TCI40.MEAPL_I40 = TCT36.ABREV_T36 LEFT OUTER JOIN
                      PR.dbo.PRT15 AS PRT15 ON TCI40.CAMPA_I40 = PRT15.ABREV_T15 LEFT OUTER JOIN
                      dbo.VIEW_CLIMA AS VIEW_CLIMA ON TCI40.FEAPL_I40 = VIEW_CLIMA.FECHA
WHERE     (TCI40.TIAPL_I40 = '01') AND (TCI40.FEAPL_I40 BETWEEN CONVERT(DATETIME, '01/06/2019', 103) AND CONVERT(DATETIME, '31/12/2030', 103))
GO
/****** Object:  Table [dbo].[TCI52]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI52](
	[IDDET_I52] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I52] [int] NULL,
	[IDPRG_I52] [varchar](10) NULL,
	[EQUIP_I52] [varchar](4) NULL,
	[MAQUI_I52] [varchar](2) NULL,
	[OPERA_I52] [varchar](2) NULL,
	[MARCH_I52] [varchar](4) NULL,
	[VLTRA_I52] [float] NULL,
	[RPMMO_I52] [float] NULL,
	[CABOQ_I52] [float] NULL,
	[PRTRA_I52] [float] NULL,
	[TIBOQ_I52] [varchar](2) NULL,
	[TIDIF_I52] [varchar](2) NULL,
	[NUPOL_I52] [float] NULL,
 CONSTRAINT [PK_TCI52] PRIMARY KEY CLUSTERED 
(
	[IDDET_I52] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VISTA PROGRAMACION DE MAQUINARIAS]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA PROGRAMACION DE MAQUINARIAS]
AS
SELECT     dbo.TCI52.IDDET_I52 AS ID, dbo.TCI52.IDPRG_I52, dbo.TCI40.NUAPL_I40, dbo.TCI52.EQUIP_I52, dbo.TCT37.DESCR_T37, dbo.TCI52.MAQUI_I52, 
                      dbo.TCT06.DESCR_T06, dbo.TCI52.OPERA_I52, dbo.TCT44.DESCR_T44
FROM         dbo.TCI40 INNER JOIN
                      dbo.TCI52 INNER JOIN
                      dbo.TCT37 ON dbo.TCI52.EQUIP_I52 = dbo.TCT37.ABREV_T37 INNER JOIN
                      dbo.TCT06 ON dbo.TCI52.MAQUI_I52 = dbo.TCT06.CODIG_T06 INNER JOIN
                      dbo.TCT44 ON dbo.TCI52.OPERA_I52 = dbo.TCT44.CODIG_T44 ON dbo.TCI40.IDCAB_I40 = dbo.TCI52.IDCAB_I52
GO
/****** Object:  View [dbo].[VISTA_MOV_MAQ_TALLER_BASE_2022_02]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_MOV_MAQ_TALLER_BASE_2022_02]
AS
SELECT     LEFT(CAB_MOV_MAQ.PERIO_I48, 4) AS AÑO_PERIODO, CAB_MOV_MAQ.PERIO_I48 AS MES_PERIODO, CAB_MOV_MAQ.FUNDO_I48 AS FUNDO, DET_MOV_MAQ.CAMPO_I49 AS LOTE, 
                      DET_MOV_MAQ.LABOR_I49 AS LABOR, MAQUINARIAS.CAMPO_T06 AS MAQUINARIA, MAQUINARIAS.DESCR_T06 AS DESC_MAQUINARIA, LTRIM(STR(YEAR(CAB_MOV_MAQ.FECHA_I48))) 
                      + '-' + REPLICATE('0', 2 - LEN(LTRIM(STR(DATEPART(week, CAB_MOV_MAQ.FECHA_I48))))) + LTRIM(STR(DATEPART(week, CAB_MOV_MAQ.FECHA_I48))) AS SEMANA_CRONOLOGICA, 
                      CAB_MOV_MAQ.FECHA_I48 AS FECHA, SUM(DET_MOV_MAQ.HORAS_I49) AS CANTIDAD_ALM, SUM(DET_MOV_MAQ.HORAS_I49) AS HORAS
FROM         dbo.TCI48 AS CAB_MOV_MAQ INNER JOIN
                      dbo.TCI49 AS DET_MOV_MAQ INNER JOIN
                      dbo.TCT06 AS MAQUINARIAS ON DET_MOV_MAQ.MAQUI_I49 = MAQUINARIAS.CODIG_T06 ON CAB_MOV_MAQ.IDCAB_I48 = DET_MOV_MAQ.IDCAB_I49
WHERE     (CAB_MOV_MAQ.PERIO_I48 >= '2019-01')
GROUP BY LEFT(CAB_MOV_MAQ.PERIO_I48, 4), CAB_MOV_MAQ.PERIO_I48, CAB_MOV_MAQ.FUNDO_I48, DET_MOV_MAQ.CAMPO_I49, DET_MOV_MAQ.LABOR_I49, MAQUINARIAS.CAMPO_T06, 
                      MAQUINARIAS.DESCR_T06, LTRIM(STR(YEAR(CAB_MOV_MAQ.FECHA_I48))) + '-' + REPLICATE('0', 2 - LEN(LTRIM(STR(DATEPART(week, CAB_MOV_MAQ.FECHA_I48))))) 
                      + LTRIM(STR(DATEPART(week, CAB_MOV_MAQ.FECHA_I48))), CAB_MOV_MAQ.FECHA_I48
GO
/****** Object:  View [dbo].[VISTA_MOV_MAQ_TALLER_BASE1_2022_02]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_MOV_MAQ_TALLER_BASE1_2022_02]
AS
SELECT     dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.AÑO_PERIODO, dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.MES_PERIODO, dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.FUNDO, 
                      dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.LOTE, dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.LABOR, dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.MAQUINARIA, 
                      dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.DESC_MAQUINARIA, dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.SEMANA_CRONOLOGICA, 
                      dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.FECHA, dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.CANTIDAD_ALM, dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.HORAS, 
                      PR.dbo.PRT15.ABREV_T15 AS CAMPAÑAXLOTE, PR.dbo.PRT15.DESCR_T15 AS DESC_CAMPAÑAXLOTE, PR.dbo.PRT15.DESDE_T15 AS DESDECAMPAÑAXLOTE, 
                      PR.dbo.PRT15.HASTA_T15 AS HASTACAMPAÑAXLOTE
FROM         dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02 INNER JOIN
                      PR.dbo.PRT15 ON dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.LOTE = PR.dbo.PRT15.CAMPO_T15 AND dbo.VISTA_MOV_MAQ_TALLER_BASE_2022_02.FECHA BETWEEN 
                      PR.dbo.PRT15.DESDE_T15 AND PR.dbo.PRT15.HASTA_T15
GO
/****** Object:  View [dbo].[VISTA_MOV_MAQ_TALLER_FINAL_2022_02]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_MOV_MAQ_TALLER_FINAL_2022_02]
AS
SELECT     CAMPAÑA, DESC_CAMPAÑAXLOTE, CAMPAÑA_DESDE, CAMPAÑA_HASTA, CAMPAÑA_CULTIVO_AÑO, AÑO_PERIODO, MES_PERIODO, LOTE, DESC_LOTE, HAS, LABOR, DESC_LABOR, 
                      COMPONENTE, MAQUINARIA, DESC_MAQUINARIA, SEMANA_CRONOLOGICA, SEMANA_CAMPAÑA, CONVERT(INT, RIGHT(SEMANA_CAMPAÑA, 2)) AS SEMANA, SUM(CANTIDAD_ALM / HAS) AS HORAS,
                       SUM(COSTO_ALM / HAS / 4) AS DOLARxHA, SUM(COSTO_ALM) AS SOLES
FROM         (SELECT     CAMPANASXLOTES.ABREV_T15 AS CAMPAÑA, CAMPANASXLOTES.DESCR_T15 AS DESC_CAMPAÑAXLOTE, CAMPANASXLOTES.DESDE_T15 AS CAMPAÑA_DESDE, 
                                              CAMPANASXLOTES.HASTA_T15 AS CAMPAÑA_HASTA, CAMPANASXCULTIVOS.ANIO__T08 AS CAMPAÑA_CULTIVO_AÑO, MOV_MAQ.AÑO_PERIODO, MOV_MAQ.MES_PERIODO, 
                                              MOV_MAQ.LOTE, LOTES.DESCR_T03 AS DESC_LOTE, LOTES.HECTA_T03 AS HAS, MOV_MAQ.LABOR, LABORES.DESCR_T05 AS DESC_LABOR, LABORES.SBTN3_T05 AS COMPONENTE, 
                                              MOV_MAQ.MAQUINARIA, MOV_MAQ.DESC_MAQUINARIA, MOV_MAQ.SEMANA_CRONOLOGICA, LTRIM(STR(CAMPANASXCULTIVOS.ANIO__T08)) 
                                              + '-' + RIGHT('0' + LTRIM(STR(DATEDIFF(day, CAMPANASXLOTES.DESDE_T15, MOV_MAQ.FECHA) / 7 + 1)), 2) AS SEMANA_CAMPAÑA, SUM(MOV_MAQ.HORAS) AS CANTIDAD_ALM, 
                                              SUM(MOV_MAQ.HORAS) *
                                                  (SELECT     SUM(CONSUMO.SOLES_I02) / SUM(HORAS.HORAS_I49) AS CTPHR
                                                    FROM          (SELECT     MTI0105_1.PERIO_I01, MTI0205_1.COSTO_I02, PRT03_2.DESCR_T03, SUM(MTI0205_1.SOLES_I02) AS SOLES_I02
                                                                            FROM          MT.dbo.MTI0105 AS MTI0105_1 INNER JOIN
                                                                                                   MT.dbo.MTI0205 AS MTI0205_1 INNER JOIN
                                                                                                   PR.dbo.PRT03 AS PRT03_2 ON MTI0205_1.COSTO_I02 = PRT03_2.ABREV_T03 ON MTI0105_1.IDCAB_I01 = MTI0205_1.IDCAB_I02
                                                                            WHERE      (MTI0105_1.PERIO_I01 = MOV_MAQ.mes_PERIODO) AND (LEFT(MTI0105_1.TIVOU_I01, 1) = '2') AND (LEFT(MTI0105_1.OPERA_I01, 3) <> '212') AND 
                                                                                                   (PRT03_2.DTHMQ_T03 = 'S') AND (CHARINDEX(LEFT(MTI0205_1.CODMA_I02, 4),
                                                                                                       (SELECT     DCHRM_T03
                                                                                                         FROM          PR.dbo.PRT03 AS PRT03_1
                                                                                                         WHERE      (DTHMQ_T03 = 'S')
                                                                                                         GROUP BY DCHRM_T03)) > 0)
                                                                            GROUP BY MTI0105_1.PERIO_I01, MTI0205_1.COSTO_I02, PRT03_2.DESCR_T03) AS CONSUMO LEFT OUTER JOIN
                                                                               (SELECT     TCI48_1.PERIO_I48, TCI49_1.MAQUI_I49, TCT06_1.DESCR_T06, TCT06_1.CAMPO_T06, SUM(TCI49_1.HORAS_I49) AS HORAS_I49
                                                                                 FROM          dbo.TCI48 AS TCI48_1 INNER JOIN
                                                                                                        dbo.TCI49 AS TCI49_1 INNER JOIN
                                                                                                        dbo.TCT06 AS TCT06_1 ON TCI49_1.MAQUI_I49 = TCT06_1.CODIG_T06 ON TCI48_1.IDCAB_I48 = TCI49_1.IDCAB_I49
                                                                                 WHERE      (TCI48_1.PERIO_I48 = MOV_MAQ.mes_PERIODO)
                                                                                 GROUP BY TCI48_1.PERIO_I48, TCI49_1.MAQUI_I49, TCT06_1.DESCR_T06, TCT06_1.CAMPO_T06) AS HORAS ON CONSUMO.COSTO_I02 = HORAS.CAMPO_T06) 
                                              AS COSTO_ALM
                       FROM          dbo.VISTA_MOV_MAQ_TALLER_BASE1_2022_02 AS MOV_MAQ INNER JOIN
                                              dbo.TCT05 AS LABORES LEFT OUTER JOIN
                                              PP.dbo.PPT04 AS COMPONIVEL3 ON LABORES.SBTN3_T05 = COMPONIVEL3.ABREV_T04 ON MOV_MAQ.LABOR = LABORES.ABREV_T05 INNER JOIN
                                              PR.dbo.PRT03 AS LOTES ON MOV_MAQ.LOTE = LOTES.ABREV_T03 INNER JOIN
                                              PR.dbo.PRT15 AS CAMPANASXLOTES INNER JOIN
                                              PR.dbo.PRT08 AS CAMPANASXCULTIVOS ON CAMPANASXLOTES.CAMPA_T15 = CAMPANASXCULTIVOS.ABREV_T08 ON 
                                              MOV_MAQ.CAMPAÑAXLOTE = CAMPANASXLOTES.ABREV_T15 INNER JOIN
                                              CB.dbo.CBM0305 AS FUNDOS ON MOV_MAQ.FUNDO = FUNDOS.ABREV_M03
                       WHERE      (MOV_MAQ.MES_PERIODO >= '2019-01')
                       GROUP BY CAMPANASXLOTES.ABREV_T15, CAMPANASXLOTES.DESCR_T15, CAMPANASXLOTES.DESDE_T15, CAMPANASXLOTES.HASTA_T15, CAMPANASXCULTIVOS.ANIO__T08, 
                                              MOV_MAQ.AÑO_PERIODO, MOV_MAQ.MES_PERIODO, MOV_MAQ.LOTE, LOTES.DESCR_T03, LOTES.HECTA_T03, MOV_MAQ.LABOR, LABORES.DESCR_T05, LABORES.SBTN3_T05, 
                                              MOV_MAQ.MAQUINARIA, MOV_MAQ.DESC_MAQUINARIA, MOV_MAQ.SEMANA_CRONOLOGICA, LTRIM(STR(CAMPANASXCULTIVOS.ANIO__T08)) 
                                              + '-' + RIGHT('0' + LTRIM(STR(DATEDIFF(day, CAMPANASXLOTES.DESDE_T15, MOV_MAQ.FECHA) / 7 + 1)), 2)) AS REAL_DETALLADO
GROUP BY CAMPAÑA, DESC_CAMPAÑAXLOTE, CAMPAÑA_DESDE, CAMPAÑA_HASTA, CAMPAÑA_CULTIVO_AÑO, AÑO_PERIODO, MES_PERIODO, LOTE, DESC_LOTE, HAS, LABOR, DESC_LABOR, 
                      COMPONENTE, MAQUINARIA, DESC_MAQUINARIA, SEMANA_CRONOLOGICA, SEMANA_CAMPAÑA
GO
/****** Object:  View [dbo].[VISTA_MOV_MAQUINARIA_PPTO_V2022]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_MOV_MAQUINARIA_PPTO_V2022]
AS
SELECT     CAB_MOV_MAQ.FECHA_I48 AS FECHA, CAB_MOV_MAQ.PERIO_I48 AS MES, CAB_MOV_MAQ.FUNDO_I48 AS FUNDO, 
                      DET_MOV_MAQ.CAMPO_I49 AS LOTE, DET_MOV_MAQ.LABOR_I49 AS LABOR, CAB_MOV_MAQ.PERIO_I48 AS PERIODO, 
                      LEFT(CAB_MOV_MAQ.PERIO_I48, 4) AS AÑO_PERIODO, CAB_MOV_MAQ.PERIO_I48 AS MES_PERIODO, 
                      LTRIM(STR(YEAR(CAB_MOV_MAQ.FECHA_I48))) + '-' + REPLICATE('0', 2 - LEN(LTRIM(STR(DATEPART(week, CAB_MOV_MAQ.FECHA_I48))))) 
                      + LTRIM(STR(DATEPART(week, CAB_MOV_MAQ.FECHA_I48))) AS SEMANA_CRONOLOGICA, SUM(DET_MOV_MAQ.HORAS_I49) AS CANTIDAD_ALM, 
                      SUM(DET_MOV_MAQ.HORAS_I49) AS HORAS
FROM         dbo.TCI48 CAB_MOV_MAQ INNER JOIN
                      dbo.TCI49 DET_MOV_MAQ ON CAB_MOV_MAQ.IDCAB_I48 = DET_MOV_MAQ.IDCAB_I49
WHERE     (CAB_MOV_MAQ.PERIO_I48 >= '2018-01')
GROUP BY CAB_MOV_MAQ.FECHA_I48, CAB_MOV_MAQ.PERIO_I48, CAB_MOV_MAQ.FUNDO_I48, DET_MOV_MAQ.CAMPO_I49, DET_MOV_MAQ.LABOR_I49, 
                      CAB_MOV_MAQ.PERIO_I48, LEFT(CAB_MOV_MAQ.PERIO_I48, 4), CAB_MOV_MAQ.PERIO_I48, LTRIM(STR(YEAR(CAB_MOV_MAQ.FECHA_I48))) 
                      + '-' + REPLICATE('0', 2 - LEN(LTRIM(STR(DATEPART(week, CAB_MOV_MAQ.FECHA_I48))))) + LTRIM(STR(DATEPART(week, 
                      CAB_MOV_MAQ.FECHA_I48)))
GO
/****** Object:  Table [dbo].[TCT07]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT07](
	[EMPRE_T07] [char](2) NULL,
	[CODIG_T07] [char](6) NULL,
	[DESCR_T07] [char](50) NULL,
	[ABREV_T07] [char](8) NOT NULL,
	[NIV02_T07] [char](6) NULL,
	[FLLOT_T07] [char](1) NULL,
	[LOTE__T07] [char](3) NULL,
	[FLCAM_T07] [char](1) NULL,
	[CAMPO_T07] [char](8) NULL,
	[HECTA_T07] [float] NULL,
	[DCORT_T07] [char](10) NULL,
	[SCOND_T07] [char](2) NULL,
	[CAMPA_T07] [char](2) NULL,
 CONSTRAINT [PK_TCT07] PRIMARY KEY CLUSTERED 
(
	[ABREV_T07] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT08]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT08](
	[CODPL_T08] [char](8) NULL,
	[CAMPO_T08] [char](8) NULL,
	[DSCAM_T08] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT03]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT03](
	[CODIG_T03] [char](2) NOT NULL,
	[DESCR_T03] [varchar](50) NULL,
	[ABREV_T03] [varchar](50) NULL,
	[CODPL_T03] [char](8) NULL,
	[EMPRE_T03] [char](2) NULL,
 CONSTRAINT [PK_TCT03] PRIMARY KEY CLUSTERED 
(
	[CODIG_T03] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[SELECT JONI DOBLE]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SELECT JONI DOBLE]
AS
SELECT     dbo.TCT07.ABREV_T07, dbo.TCT07.DESCR_T07
FROM         dbo.TCT08 INNER JOIN
                      dbo.TCT03 ON dbo.TCT08.CODPL_T08 = dbo.TCT03.CODPL_T03 INNER JOIN
                      dbo.TCT07 ON dbo.TCT08.CAMPO_T08 = dbo.TCT07.ABREV_T07
WHERE     (dbo.TCT03.CODIG_T03 = '01')
GO
/****** Object:  View [dbo].[VISTA_MOV_MAQUINARIA_PPTO_CONCAMPANA_V2022]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_MOV_MAQUINARIA_PPTO_CONCAMPANA_V2022]
AS
SELECT     dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.FECHA, dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.MES, 
                      dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.FUNDO, dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.LOTE, 
                      dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.LABOR, dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.PERIODO, 
                      dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.AÑO_PERIODO, dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.MES_PERIODO, 
                      dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.SEMANA_CRONOLOGICA, dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.CANTIDAD_ALM, 
                      dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.HORAS, PR.dbo.PRT15.ABREV_T15 AS CAMPAÑAXLOTE, 
                      PR.dbo.PRT15.DESCR_T15 AS DESC_CAMPAÑAXLOTE, PR.dbo.PRT15.DESDE_T15 AS DESDECAMPAÑAXLOTE, 
                      PR.dbo.PRT15.HASTA_T15 AS HASTACAMPAÑAXLOTE
FROM         dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022 INNER JOIN
                      PR.dbo.PRT15 ON dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.LOTE = PR.dbo.PRT15.CAMPO_T15 AND 
                      dbo.VISTA_MOV_MAQUINARIA_PPTO_V2022.FECHA BETWEEN PR.dbo.PRT15.DESDE_T15 AND PR.dbo.PRT15.HASTA_T15
GO
/****** Object:  Table [dbo].[TCI81]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI81](
	[IDDET_I81] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I81] [int] NULL,
	[NUAPL_I81] [varchar](12) NULL,
	[FECHA_I81] [datetime] NULL,
	[METR3_I81] [float] NULL,
	[ING01_I81] [float] NULL,
	[ING02_I81] [float] NULL,
	[ING03_I81] [float] NULL,
	[ING04_I81] [float] NULL,
	[ING05_I81] [float] NULL,
	[ING06_I81] [float] NULL,
	[ING07_I81] [float] NULL,
	[ING08_I81] [float] NULL,
	[ING09_I81] [float] NULL,
	[ING10_I81] [float] NULL,
	[ING11_I81] [float] NULL,
	[ING12_I81] [float] NULL,
	[N1I01_I81] [float] NULL,
	[N2I01_I81] [float] NULL,
	[N1I02_I81] [float] NULL,
	[N1I03_I81] [float] NULL,
	[N2I03_I81] [float] NULL,
	[N1I04_I81] [float] NULL,
	[N2I04_I81] [float] NULL,
	[N1I05_I81] [float] NULL,
	[N2I05_I81] [float] NULL,
	[N1I06_I81] [float] NULL,
	[N2I06_I81] [float] NULL,
	[N1I07_I81] [float] NULL,
	[N2I07_I81] [float] NULL,
	[N1I08_I81] [float] NULL,
	[N2I08_I81] [float] NULL,
	[N1I09_I81] [float] NULL,
	[N2I09_I81] [float] NULL,
	[N1I10_I81] [float] NULL,
	[N2I10_I81] [float] NULL,
	[N1I11_I81] [float] NULL,
	[N2I11_I81] [float] NULL,
	[N3I11_I81] [float] NULL,
	[N1I12_I81] [float] NULL,
	[N2I12_I81] [float] NULL,
	[CERRA_I81] [bit] NULL,
	[ITEM__I81] [varchar](4) NULL,
	[EMITI_I81] [bit] NULL,
	[STATU_I81] [varchar](2) NULL,
 CONSTRAINT [PK_TCI81] PRIMARY KEY CLUSTERED 
(
	[IDDET_I81] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI80]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI80](
	[IDCAB_I80] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CAMPA_I80] [varchar](15) NULL,
	[PERIO_I80] [varchar](7) NULL,
	[FUNDO_I80] [varchar](2) NULL,
	[CULTI_I80] [varchar](4) NULL,
	[VARIE_I80] [varchar](6) NULL,
	[MODUL_I80] [varchar](4) NULL,
	[TURNO_I80] [varchar](6) NULL,
	[AREA__I80] [float] NULL,
	[ETAPA_I80] [varchar](6) NULL,
	[TOTNI_I80] [float] NULL,
	[TOTFO_I80] [float] NULL,
	[TOTPO_I80] [float] NULL,
	[TOTCA_I80] [float] NULL,
	[TOTMA_I80] [float] NULL,
	[TOTZI_I80] [float] NULL,
	[TOTAZ_I80] [float] NULL,
	[LOCAL_I80] [varchar](2) NULL,
 CONSTRAINT [PK_TCI80] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I80] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_PROG_MENS_FERT]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_PROG_MENS_FERT]
AS
SELECT     TOP 100 PERCENT dbo.TCI80.CAMPA_I80 AS CAMPAÑA, dbo.TCI80.PERIO_I80 AS PERIODO, dbo.TCI80.FUNDO_I80 AS CODIGO_FUNDO, dbo.TCI80.CULTI_I80 AS CODIGO_CULTIVO, 
                      dbo.TCI80.VARIE_I80 AS CODIGO_VARIEDAD, dbo.TCI80.MODUL_I80 AS CODIGO_MODULO, dbo.TCI80.TURNO_I80 AS CODIGO_TURNO, dbo.TCI81.ITEM__I81 AS ITEM, 
                      dbo.TCI81.FECHA_I81 AS FECHA, dbo.TCI81.NUAPL_I81 AS NUMERO_OF, dbo.TCI81.METR3_I81 AS M3, dbo.TCI81.ING01_I81 AS NITRADO_AMONIO, dbo.TCI81.ING02_I81 AS ACIDO_FOSFORICO, 
                      dbo.TCI81.ING03_I81 AS NITRATO_POTASIO, dbo.TCI81.ING04_I81 AS SULFATO_MAGNESIO, dbo.TCI81.ING05_I81 AS NITRATO_CALCIO, dbo.TCI81.ING06_I81 AS SULFATO_AMONIO, 
                      dbo.TCI81.ING07_I81 AS SULFATO_POTASIO, dbo.TCI81.ING08_I81 AS SULFATO_ZINC, dbo.TCI81.ING09_I81 AS FOSFATO_MONOAMONICO, dbo.TCI81.ING10_I81 AS FOSFATO_DIAMONICO, 
                      dbo.TCI81.ING11_I81 AS SULFATO_POTASIO_MAGNESIO, dbo.TCI81.ING12_I81 AS NITRATO_MAGNESIO, dbo.TCI81.N1I01_I81 AS NUTRIENTE_01_INGREDIENTE_01, 
                      dbo.TCI81.N2I01_I81 AS NUTRIENTE_02_INGREDIENTE_01, dbo.TCI81.N1I02_I81 AS NUTRIENTE_01_INGREDIENTE_02, dbo.TCI81.N1I03_I81 AS NUTRIENTE_01_INGREDIENTE_03, 
                      dbo.TCI81.N2I03_I81 AS NUTRIENTE_02_INGREDIENTE_03, dbo.TCI81.N1I04_I81 AS NUTRIENTE_01_INGREDIENTE_04, dbo.TCI81.N2I04_I81 AS NUTRIENTE_02_INGREDIENTE_04, 
                      dbo.TCI81.N1I05_I81 AS NUTRIENTE_01_INGREDIENTE_05, dbo.TCI81.N2I05_I81 AS NUTRIENTE_02_INGREDIENTE_05, dbo.TCI81.N1I06_I81 AS NUTRIENTE_01_INGREDIENTE_06, 
                      dbo.TCI81.N2I06_I81 AS NUTRIENTE_02_INGREDIENTE_06, dbo.TCI81.N1I07_I81 AS NUTRIENTE_01_INGREDIENTE_07, dbo.TCI81.N2I07_I81 AS NUTRIENTE_02_INGREDIENTE_07, 
                      dbo.TCI81.N1I08_I81 AS NUTRIENTE_01_INGREDIENTE_08, dbo.TCI81.N2I08_I81 AS NUTRIENTE_02_INGREDIENTE_08, dbo.TCI81.N1I09_I81 AS NUTRIENTE_01_INGREDIENTE_09, 
                      dbo.TCI81.N2I09_I81 AS NUTRIENTE_02_INGREDIENTE_09, dbo.TCI81.N1I10_I81 AS NUTRIENTE_01_INGREDIENTE_10, dbo.TCI81.N2I10_I81 AS NUTRIENTE_02_INGREDIENTE_10, 
                      dbo.TCI81.N1I11_I81 AS NUTRIENTE_01_INGREDIENTE_11, dbo.TCI81.N2I11_I81 AS NUTRIENTE_02_INGREDIENTE_11, dbo.TCI81.N3I11_I81 AS NUTRIENTE_03_INGREDIENTE_11, 
                      dbo.TCI81.N1I12_I81 AS NUTRIENTE_01_INGREDIENTE_12, dbo.TCI81.N2I12_I81 AS NUTRIENTE_02_INGREDIENTE_12, dbo.TCI81.CERRA_I81 AS CERRADO, 
                      dbo.TCI81.N1I01_I81 + dbo.TCI81.N1I03_I81 + dbo.TCI81.N1I05_I81 + dbo.TCI81.N1I06_I81 + dbo.TCI81.N1I09_I81 + dbo.TCI81.N1I10_I81 + dbo.TCI81.N1I12_I81 AS N, 
                      dbo.TCI81.N2I01_I81 + dbo.TCI81.N1I02_I81 + dbo.TCI81.N2I09_I81 + dbo.TCI81.N2I10_I81 AS P205, 
                      dbo.TCI81.N2I01_I81 + dbo.TCI81.N2I03_I81 + dbo.TCI81.N2I07_I81 + dbo.TCI81.N1I11_I81 AS K20, dbo.TCI81.N1I04_I81 + dbo.TCI81.N2I11_I81 + dbo.TCI81.N2I12_I81 AS Mg0, 
                      dbo.TCI81.N2I04_I81 + dbo.TCI81.N2I06_I81 + dbo.TCI81.N2I07_I81 + dbo.TCI81.N2I08_I81 + dbo.TCI81.N3I11_I81 AS S, dbo.TCI81.N2I05_I81 AS Ca0, 0 AS B, 0 AS Cu, dbo.TCI81.N1I08_I81 AS Zn, 
                      dbo.TCI80.IDCAB_I80, dbo.TCI81.IDDET_I81
FROM         dbo.TCI80 INNER JOIN
                      dbo.TCI81 ON dbo.TCI80.IDCAB_I80 = dbo.TCI81.IDCAB_I81
ORDER BY CAMPAÑA, PERIODO, CODIGO_FUNDO, CODIGO_CULTIVO, CODIGO_VARIEDAD, CODIGO_MODULO, CODIGO_TURNO, FECHA, NUMERO_OF
GO
/****** Object:  View [dbo].[VISTA_MOV_MAQ_UNIFICADO_1_V01]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_MOV_MAQ_UNIFICADO_1_V01]
AS
SELECT     CAMPANASXLOTES.ABREV_T15 AS CAMPAÑA, CAMPANASXLOTES.DESDE_T15 AS CAMPAÑA_DESDE, 
                      CAMPANASXLOTES.HASTA_T15 AS CAMPAÑA_HASTA, CAMPANASXCULTIVOS.ANIO__T08 AS CAMPAÑA_CULTIVO_AÑO, MOV_MAQ.MES, 
                      MOV_MAQ.LOTE, LOTES.DESCR_T03 AS DESC_LOTE, LOTES.HECTA_T03 AS HAS, MOV_MAQ.LABOR, LABORES.DESCR_T05 AS DESC_LABOR, 
                      LABORES.SBTN3_T05 AS COMPONENTE, MOV_MAQ.PERIODO, MOV_MAQ.AÑO_PERIODO, MOV_MAQ.MES_PERIODO, 
                      MOV_MAQ.SEMANA_CRONOLOGICA, LTRIM(STR(CAMPANASXCULTIVOS.ANIO__T08)) + '-' + RIGHT('0' + LTRIM(STR(DATEDIFF(day, 
                      CAMPANASXLOTES.DESDE_T15, MOV_MAQ.FECHA) / 7 + 1)), 2) AS SEMANA_CAMPAÑA, SUM(MOV_MAQ.HORAS) AS CANTIDAD_ALM
FROM         dbo.VISTA_MOV_MAQUINARIA_PPTO_CONCAMPANA_V2022 MOV_MAQ INNER JOIN
                      dbo.TCT05 LABORES LEFT OUTER JOIN
                      PP.dbo.PPT04 COMPONIVEL3 ON LABORES.SBTN3_T05 = COMPONIVEL3.ABREV_T04 ON MOV_MAQ.LABOR = LABORES.ABREV_T05 INNER JOIN
                      PR.dbo.PRT03 LOTES ON MOV_MAQ.LOTE = LOTES.ABREV_T03 INNER JOIN
                      PR.dbo.PRT15 CAMPANASXLOTES INNER JOIN
                      PR.dbo.PRT08 CAMPANASXCULTIVOS ON CAMPANASXLOTES.CAMPA_T15 = CAMPANASXCULTIVOS.ABREV_T08 ON 
                      MOV_MAQ.CAMPAÑAXLOTE = CAMPANASXLOTES.ABREV_T15 INNER JOIN
                      CB.dbo.CBM0305 FUNDOS ON MOV_MAQ.FUNDO = FUNDOS.ABREV_M03
WHERE     (MOV_MAQ.PERIODO >= '2018-01')
GROUP BY CAMPANASXLOTES.ABREV_T15, CAMPANASXLOTES.DESDE_T15, CAMPANASXLOTES.HASTA_T15, CAMPANASXCULTIVOS.ANIO__T08, 
                      MOV_MAQ.MES, MOV_MAQ.LOTE, LOTES.DESCR_T03, LOTES.HECTA_T03, MOV_MAQ.LABOR, LABORES.DESCR_T05, LABORES.SBTN3_T05, 
                      MOV_MAQ.PERIODO, MOV_MAQ.AÑO_PERIODO, MOV_MAQ.MES_PERIODO, MOV_MAQ.SEMANA_CRONOLOGICA, 
                      LTRIM(STR(CAMPANASXCULTIVOS.ANIO__T08)) + '-' + RIGHT('0' + LTRIM(STR(DATEDIFF(day, CAMPANASXLOTES.DESDE_T15, MOV_MAQ.FECHA) 
                      / 7 + 1)), 2)
GO
/****** Object:  Table [dbo].[TCI84]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI84](
	[IDDET_I84] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I84] [int] NULL,
	[FECHA_I84] [datetime] NULL,
	[ITEM__I84] [varchar](4) NULL,
	[LOTE__I84] [varchar](8) NULL,
	[AREA__I84] [float] NULL,
	[PRODU_I84] [varchar](9) NULL,
	[UNIDA_I84] [varchar](3) NULL,
	[CANTI_I84] [float] NULL,
	[TRATA_I84] [varchar](7) NULL,
 CONSTRAINT [PK_TCI84] PRIMARY KEY CLUSTERED 
(
	[IDDET_I84] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI83]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI83](
	[IDCAB_I83] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LOCAL_I83] [varchar](2) NULL,
	[CAMPA_I83] [varchar](15) NOT NULL,
	[PERIO_I83] [varchar](7) NULL,
	[FUNDO_I83] [varchar](2) NULL,
	[CULTI_I83] [varchar](4) NULL,
	[VARIE_I83] [varchar](6) NULL,
	[MODUL_I83] [varchar](4) NULL,
	[TURNO_I83] [varchar](6) NULL,
	[AREA__I83] [float] NULL,
	[FECHA_I83] [datetime] NULL,
	[ETAPA_I83] [varchar](6) NULL,
	[NUOAF_I83] [varchar](12) NULL,
	[IDOAF_I83] [int] NULL,
	[STATU_I83] [varchar](4) NULL,
 CONSTRAINT [PK_TCI83] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I83] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT71]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT71](
	[FUNDO_T71] [varchar](2) NULL,
	[CODIG_T71] [varchar](2) NOT NULL,
	[DESCR_T71] [varchar](50) NULL,
	[ABREV_T71] [varchar](4) NOT NULL,
	[ACTIV_T71] [bit] NULL,
	[DEHIL_T71] [float] NULL,
 CONSTRAINT [PK_TCT71] PRIMARY KEY CLUSTERED 
(
	[ABREV_T71] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT72]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT72](
	[MODUL_T72] [varchar](4) NULL,
	[CODIG_T72] [varchar](2) NOT NULL,
	[DESCR_T72] [varchar](50) NULL,
	[ABREV_T72] [varchar](6) NOT NULL,
	[AREA__T72] [float] NULL,
	[CAPRG_T72] [float] NULL,
	[KC____T72] [float] NULL,
	[CAUDA_T72] [float] NULL,
	[ACTIV_T72] [bit] NULL,
 CONSTRAINT [PK_TCT72] PRIMARY KEY CLUSTERED 
(
	[ABREV_T72] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_ORDEN_DE_FERTILIZACION]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ORDEN_DE_FERTILIZACION]
AS
SELECT     TOP 100 PERCENT TCI83.CAMPA_I83 AS CODIGO_CAMPAÑA, PRT15.DESCR_T15 AS CAMPAÑA, TCI83.PERIO_I83 AS PERIODO, TCI83.FUNDO_I83 AS CODIGO_FUNDO, 
                      CBM0305.DESCR_M03 AS FUNDO, TCI83.CULTI_I83 AS CODIGO_CULTIVO, PRT01.DESCR_T01 AS CULTIVO, TCI83.VARIE_I83 AS CODIGO_VARIEDAD, PRT02.DESCR_T02 AS VARIEDAD, 
                      TCI84.LOTE__I84 AS CODIGO_LOTE, PRT03.DESCR_T03 AS LOTE, TCI83.MODUL_I83 AS CODIGO_MODULO, TCT71.DESCR_T71 AS MODULO, TCI83.TURNO_I83 AS CODIGO_TURNO, 
                      TCT72.DESCR_T72 AS TURNO, TCI83.FECHA_I83 AS FECHA, TCI83.NUOAF_I83 AS NUMERO_OF, TCI84.PRODU_I84 AS CODIGO_PRODUCTO, MST21.DESMA_M02 AS PRODUCTO, 
                      TCT40.DESCR_T40 AS CONCENTRACION, TCI83.AREA__I83, TCI84.AREA__I84 AS AREAR_LOTE, TCI84.CANTI_I84 AS CANTxLOTE, TCI84.UNIDA_I84, TCT72.AREA__T72 AS AREA_TURNO, 
                      PRT03.FSIEM_T03 AS FECHA_SIEMBRA, PRT15.FPCOS_T15 AS FECHA_COSECHA, TCI83.IDCAB_I83, TCI84.IDDET_I84
FROM         dbo.TCI83 AS TCI83 INNER JOIN
                      dbo.TCI84 AS TCI84 INNER JOIN
                      MS.dbo.MST21 AS MST21 LEFT OUTER JOIN
                      MS.dbo.MST26 AS MST26 LEFT OUTER JOIN
                      dbo.TCT40 AS TCT40 ON MST26.NOTEC_T26 = TCT40.CODIG_T40 ON MST21.IDCAB_M02 = MST26.IDCAB_T26 ON TCI84.PRODU_I84 = MST21.CODMA_M02 ON 
                      TCI83.IDCAB_I83 = TCI84.IDCAB_I84 INNER JOIN
                      dbo.TCT71 AS TCT71 ON TCI83.MODUL_I83 = TCT71.ABREV_T71 INNER JOIN
                      dbo.TCT72 AS TCT72 ON TCI83.TURNO_I83 = TCT72.ABREV_T72 INNER JOIN
                      CB.dbo.CBM0305 AS CBM0305 ON TCI83.FUNDO_I83 = CBM0305.ABREV_M03 INNER JOIN
                      PR.dbo.PRT01 AS PRT01 ON TCI83.CULTI_I83 = PRT01.ABREV_T01 INNER JOIN
                      PR.dbo.PRT02 AS PRT02 ON TCI83.VARIE_I83 = PRT02.ABREV_T02 INNER JOIN
                      PR.dbo.PRT03 AS PRT03 ON TCI84.LOTE__I84 = PRT03.ABREV_T03 INNER JOIN
                      PR.dbo.PRT15 AS PRT15 ON TCI83.CAMPA_I83 = PRT15.CAMPA_T15 AND TCI84.LOTE__I84 = PRT15.CAMPO_T15 AND TCI83.FECHA_I83 BETWEEN PRT15.DESDE_T15 AND 
                      PRT15.HASTA_T15
ORDER BY CAMPAÑA, PERIODO, CODIGO_FUNDO, CODIGO_CULTIVO, CODIGO_VARIEDAD, CODIGO_LOTE, CODIGO_MODULO, CODIGO_TURNO
GO
/****** Object:  View [dbo].[VISTA_MOV_MAQ_UNIFICADO_2_V01]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_MOV_MAQ_UNIFICADO_2_V01]
AS
SELECT     CAMPANASXLOTES.ABREV_T15 AS CAMPAÑA, CAMPANASXLOTES.DESDE_T15 AS CAMPAÑA_DESDE, 
                      CAMPANASXLOTES.HASTA_T15 AS CAMPAÑA_HASTA, CAMPANASXCULTIVOS.ANIO__T08 AS CAMPAÑA_CULTIVO_AÑO, MOV_MAQ.MES, 
                      MOV_MAQ.LOTE, LOTES.DESCR_T03 AS DESC_LOTE, LOTES.HECTA_T03 AS HAS, MOV_MAQ.LABOR, LABORES.DESCR_T05 AS DESC_LABOR, 
                      LABORES.SBTN3_T05 AS COMPONENTE, MOV_MAQ.PERIODO, MOV_MAQ.AÑO_PERIODO, MOV_MAQ.MES_PERIODO, 
                      MOV_MAQ.SEMANA_CRONOLOGICA, LTRIM(STR(CAMPANASXCULTIVOS.ANIO__T08)) + '-' + RIGHT('0' + LTRIM(STR(DATEDIFF(day, 
                      CAMPANASXLOTES.DESDE_T15, MOV_MAQ.FECHA) / 7 + 1)), 2) AS SEMANA_CAMPAÑA, SUM(MOV_MAQ.HORAS) *
                          (SELECT     SUM(CONSUMO.SOLES_I02) / SUM(HORAS.HORAS_I49) AS CTPHR
                            FROM          (SELECT     MTI0105_1.PERIO_I01, MTI0205_1.COSTO_I02, PRT03_2.DESCR_T03, SUM(MTI0205_1.SOLES_I02) AS SOLES_I02
                                                    FROM          MT.dbo.MTI0105 AS MTI0105_1 INNER JOIN
                                                                           MT.dbo.MTI0205 AS MTI0205_1 INNER JOIN
                                                                           PR.dbo.PRT03 AS PRT03_2 ON MTI0205_1.COSTO_I02 = PRT03_2.ABREV_T03 ON 
                                                                           MTI0105_1.IDCAB_I01 = MTI0205_1.IDCAB_I02
                                                    WHERE      (MTI0105_1.PERIO_I01 = MOV_MAQ.PERIODO) AND (LEFT(MTI0105_1.TIVOU_I01, 1) = '2') AND (LEFT(MTI0105_1.OPERA_I01, 
                                                                           3) <> '212') AND (PRT03_2.DTHMQ_T03 = 'S') AND (CHARINDEX(LEFT(MTI0205_1.CODMA_I02, 4),
                                                                               (SELECT     DCHRM_T03
                                                                                 FROM          PR.dbo.PRT03 AS PRT03_1
                                                                                 WHERE      (DTHMQ_T03 = 'S')
                                                                                 GROUP BY DCHRM_T03)) > 0)
                                                    GROUP BY MTI0105_1.PERIO_I01, MTI0205_1.COSTO_I02, PRT03_2.DESCR_T03) AS CONSUMO LEFT OUTER JOIN
                                                       (SELECT     TCI48_1.PERIO_I48, TCI49_1.MAQUI_I49, TCT06_1.DESCR_T06, TCT06_1.CAMPO_T06, SUM(TCI49_1.HORAS_I49) 
                                                                                AS HORAS_I49
                                                         FROM          TC.dbo.TCI48 AS TCI48_1 INNER JOIN
                                                                                TC.dbo.TCI49 AS TCI49_1 INNER JOIN
                                                                                TC.dbo.TCT06 AS TCT06_1 ON TCI49_1.MAQUI_I49 = TCT06_1.CODIG_T06 ON 
                                                                                TCI48_1.IDCAB_I48 = TCI49_1.IDCAB_I49
                                                         WHERE      (TCI48_1.PERIO_I48 = MOV_MAQ.PERIODO)
                                                         GROUP BY TCI48_1.PERIO_I48, TCI49_1.MAQUI_I49, TCT06_1.DESCR_T06, TCT06_1.CAMPO_T06) AS HORAS ON 
                                                   CONSUMO.COSTO_I02 = HORAS.CAMPO_T06) AS COSTO_ALM
FROM         dbo.VISTA_MOV_MAQUINARIA_PPTO_CONCAMPANA_V2022 MOV_MAQ INNER JOIN
                      dbo.TCT05 LABORES LEFT OUTER JOIN
                      PP.dbo.PPT04 COMPONIVEL3 ON LABORES.SBTN3_T05 = COMPONIVEL3.ABREV_T04 ON MOV_MAQ.LABOR = LABORES.ABREV_T05 INNER JOIN
                      PR.dbo.PRT03 LOTES ON MOV_MAQ.LOTE = LOTES.ABREV_T03 INNER JOIN
                      PR.dbo.PRT15 CAMPANASXLOTES INNER JOIN
                      PR.dbo.PRT08 CAMPANASXCULTIVOS ON CAMPANASXLOTES.CAMPA_T15 = CAMPANASXCULTIVOS.ABREV_T08 ON 
                      MOV_MAQ.CAMPAÑAXLOTE = CAMPANASXLOTES.ABREV_T15 INNER JOIN
                      CB.dbo.CBM0305 FUNDOS ON MOV_MAQ.FUNDO = FUNDOS.ABREV_M03
WHERE     (MOV_MAQ.PERIODO >= '2018-01')
GROUP BY CAMPANASXLOTES.ABREV_T15, CAMPANASXLOTES.DESDE_T15, CAMPANASXLOTES.HASTA_T15, CAMPANASXCULTIVOS.ANIO__T08, 
                      MOV_MAQ.MES, MOV_MAQ.LOTE, LOTES.DESCR_T03, LOTES.HECTA_T03, MOV_MAQ.LABOR, LABORES.DESCR_T05, LABORES.SBTN3_T05, 
                      MOV_MAQ.PERIODO, MOV_MAQ.AÑO_PERIODO, MOV_MAQ.MES_PERIODO, MOV_MAQ.SEMANA_CRONOLOGICA, 
                      LTRIM(STR(CAMPANASXCULTIVOS.ANIO__T08)) + '-' + RIGHT('0' + LTRIM(STR(DATEDIFF(day, CAMPANASXLOTES.DESDE_T15, MOV_MAQ.FECHA) 
                      / 7 + 1)), 2)
GO
/****** Object:  View [dbo].[View_FORMATO_REGISTRO_DE_FERTILIZACION_CERTIFICACIONES_V03]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_FORMATO_REGISTRO_DE_FERTILIZACION_CERTIFICACIONES_V03]
AS
SELECT     TOP 100 PERCENT dbo.View_ORDEN_DE_FERTILIZACION.CAMPAÑA, dbo.View_ORDEN_DE_FERTILIZACION.PERIODO, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_FUNDO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.FUNDO, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_CULTIVO, dbo.View_ORDEN_DE_FERTILIZACION.CULTIVO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_VARIEDAD, dbo.View_ORDEN_DE_FERTILIZACION.VARIEDAD, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_MODULO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.MODULO, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_TURNO, dbo.View_ORDEN_DE_FERTILIZACION.TURNO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_LOTE, dbo.View_ORDEN_DE_FERTILIZACION.LOTE, dbo.View_ORDEN_DE_FERTILIZACION.FECHA, 
                      dbo.View_ORDEN_DE_FERTILIZACION.NUMERO_OF, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_PRODUCTO, dbo.View_ORDEN_DE_FERTILIZACION.PRODUCTO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.CONCENTRACION, dbo.View_PROG_MENS_FERT.M3, dbo.View_PROG_MENS_FERT.NITRADO_AMONIO, dbo.View_PROG_MENS_FERT.ACIDO_FOSFORICO, 
                      dbo.View_PROG_MENS_FERT.NITRATO_POTASIO, dbo.View_PROG_MENS_FERT.SULFATO_MAGNESIO, dbo.View_PROG_MENS_FERT.NITRATO_CALCIO, 
                      dbo.View_PROG_MENS_FERT.SULFATO_AMONIO, dbo.View_PROG_MENS_FERT.SULFATO_POTASIO, dbo.View_PROG_MENS_FERT.SULFATO_ZINC, 
                      dbo.View_PROG_MENS_FERT.FOSFATO_MONOAMONICO, dbo.View_PROG_MENS_FERT.FOSFATO_DIAMONICO, dbo.View_PROG_MENS_FERT.SULFATO_POTASIO_MAGNESIO, 
                      dbo.View_PROG_MENS_FERT.NITRATO_MAGNESIO, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_01, dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_01, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_02, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_03, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_03, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_04, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_04, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_05, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_05, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_06, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_06, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_07, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_07, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_08, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_08, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_09, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_09, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_10, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_10, dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_11, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_11, dbo.View_PROG_MENS_FERT.NUTRIENTE_03_INGREDIENTE_11, 
                      dbo.View_PROG_MENS_FERT.NUTRIENTE_01_INGREDIENTE_12, dbo.View_PROG_MENS_FERT.NUTRIENTE_02_INGREDIENTE_12, dbo.View_PROG_MENS_FERT.N, 
                      dbo.View_PROG_MENS_FERT.P205, dbo.View_PROG_MENS_FERT.K20, dbo.View_PROG_MENS_FERT.Mg0, dbo.View_PROG_MENS_FERT.S, dbo.View_PROG_MENS_FERT.Ca0, 
                      dbo.View_PROG_MENS_FERT.B, dbo.View_PROG_MENS_FERT.Cu, dbo.View_PROG_MENS_FERT.Zn, dbo.View_ORDEN_DE_FERTILIZACION.AREA_TURNO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.FECHA_SIEMBRA, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_CAMPAÑA, dbo.View_ORDEN_DE_FERTILIZACION.FECHA_COSECHA, 
                      dbo.View_ORDEN_DE_FERTILIZACION.AREAR_LOTE, dbo.View_ORDEN_DE_FERTILIZACION.CANTxLOTE
FROM         dbo.View_ORDEN_DE_FERTILIZACION INNER JOIN
                      dbo.View_PROG_MENS_FERT ON dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_CAMPAÑA = dbo.View_PROG_MENS_FERT.CAMPAÑA AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.PERIODO = dbo.View_PROG_MENS_FERT.PERIODO AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_FUNDO = dbo.View_PROG_MENS_FERT.CODIGO_FUNDO AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_CULTIVO = dbo.View_PROG_MENS_FERT.CODIGO_CULTIVO AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_VARIEDAD = dbo.View_PROG_MENS_FERT.CODIGO_VARIEDAD AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_MODULO = dbo.View_PROG_MENS_FERT.CODIGO_MODULO AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_TURNO = dbo.View_PROG_MENS_FERT.CODIGO_TURNO AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.FECHA = dbo.View_PROG_MENS_FERT.FECHA AND 
                      dbo.View_ORDEN_DE_FERTILIZACION.NUMERO_OF = dbo.View_PROG_MENS_FERT.NUMERO_OF
ORDER BY dbo.View_ORDEN_DE_FERTILIZACION.CAMPAÑA, dbo.View_ORDEN_DE_FERTILIZACION.PERIODO, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_FUNDO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_CULTIVO, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_VARIEDAD, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_MODULO, 
                      dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_TURNO, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_LOTE, dbo.View_ORDEN_DE_FERTILIZACION.FECHA, 
                      dbo.View_ORDEN_DE_FERTILIZACION.NUMERO_OF, dbo.View_ORDEN_DE_FERTILIZACION.CODIGO_PRODUCTO
GO
/****** Object:  View [dbo].[View_NUMERACION_OF]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_NUMERACION_OF]
AS
SELECT     TOP 100 PERCENT dbo.TCI80.FUNDO_I80, dbo.TCI80.CULTI_I80, dbo.TCI80.VARIE_I80, dbo.TCI80.MODUL_I80, dbo.TCI81.FECHA_I81, dbo.TCI81.NUAPL_I81
FROM         dbo.TCI80 INNER JOIN
                      dbo.TCI81 ON dbo.TCI80.IDCAB_I80 = dbo.TCI81.IDCAB_I81
WHERE     (dbo.TCI81.FECHA_I81 >= CONVERT(DATETIME, '01/01/2023', 103))
GROUP BY dbo.TCI80.FUNDO_I80, dbo.TCI80.CULTI_I80, dbo.TCI80.VARIE_I80, dbo.TCI80.MODUL_I80, dbo.TCI81.FECHA_I81, dbo.TCI81.NUAPL_I81
ORDER BY dbo.TCI80.FUNDO_I80, dbo.TCI80.CULTI_I80, dbo.TCI80.VARIE_I80, dbo.TCI80.MODUL_I80, dbo.TCI81.FECHA_I81, dbo.TCI81.NUAPL_I81
GO
/****** Object:  Table [dbo].[TCI42]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI42](
	[IDDET_I42] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I42] [int] NULL,
	[GRUPO_I42] [char](2) NULL,
	[FECHA_I42] [datetime] NULL,
	[FEFIN_I42] [datetime] NULL,
	[CAMPO_I42] [char](8) NULL,
	[CARGA_I42] [float] NULL,
	[LTSAD_I42] [float] NULL,
	[TISAL_I42] [char](2) NULL,
	[TRABA_I42] [varchar](80) NULL,
	[DSTRA_I42] [varchar](250) NULL,
	[HINI1_I42] [datetime] NULL,
	[HFIN1_I42] [datetime] NULL,
	[HINI2_I42] [datetime] NULL,
	[HFIN2_I42] [datetime] NULL,
	[EQAP1_I42] [varchar](4) NULL,
	[MAQU1_I42] [varchar](2) NULL,
	[OPTR1_I42] [varchar](2) NULL,
	[CORL1_I42] [float] NULL,
	[PHRL1_I42] [float] NULL,
	[EQAP2_I42] [varchar](4) NULL,
	[MAQU2_I42] [varchar](2) NULL,
	[OPTR2_I42] [varchar](2) NULL,
	[CORL2_I42] [float] NULL,
	[PHRL2_I42] [float] NULL,
	[EQAP3_I42] [varchar](4) NULL,
	[MAQU3_I42] [varchar](2) NULL,
	[OPTR3_I42] [varchar](2) NULL,
	[CORL3_I42] [float] NULL,
	[PHRL3_I42] [float] NULL,
	[EQAP4_I42] [varchar](4) NULL,
	[MAQU4_I42] [varchar](2) NULL,
	[OPTR4_I42] [varchar](2) NULL,
	[CORL4_I42] [float] NULL,
	[PHRL4_I42] [float] NULL,
	[EQAP5_I42] [varchar](4) NULL,
	[MAQU5_I42] [varchar](2) NULL,
	[OPTR5_I42] [varchar](2) NULL,
	[CORL5_I42] [float] NULL,
	[PHRL5_I42] [float] NULL,
	[EQAP6_I42] [varchar](4) NULL,
	[MAQU6_I42] [varchar](2) NULL,
	[OPTR6_I42] [varchar](2) NULL,
	[CORL6_I42] [float] NULL,
	[PHRL6_I42] [float] NULL,
	[EQAP7_I42] [varchar](4) NULL,
	[MAQU7_I42] [varchar](2) NULL,
	[OPTR7_I42] [varchar](2) NULL,
	[CORL7_I42] [float] NULL,
	[PHRL7_I42] [float] NULL,
	[EQAP8_I42] [varchar](4) NULL,
	[MAQU8_I42] [varchar](2) NULL,
	[OPTR8_I42] [varchar](2) NULL,
	[CORL8_I42] [float] NULL,
	[PHRL8_I42] [float] NULL,
	[EQAP9_I42] [varchar](4) NULL,
	[MAQU9_I42] [varchar](2) NULL,
	[OPTR9_I42] [varchar](2) NULL,
	[CORL9_I42] [float] NULL,
	[PHRL9_I42] [float] NULL,
	[EQAPA_I42] [varchar](4) NULL,
	[MAQUA_I42] [varchar](2) NULL,
	[OPTRA_I42] [varchar](2) NULL,
	[CORLA_I42] [float] NULL,
	[PHRLA_I42] [float] NULL,
	[EQAPB_I42] [varchar](4) NULL,
	[MAQUB_I42] [varchar](2) NULL,
	[OPTRB_I42] [varchar](2) NULL,
	[CORLB_I42] [float] NULL,
	[PHRLB_I42] [float] NULL,
	[EQAPC_I42] [varchar](4) NULL,
	[MAQUC_I42] [varchar](2) NULL,
	[OPTRC_I42] [varchar](2) NULL,
	[CORLC_I42] [float] NULL,
	[PHRLC_I42] [float] NULL,
	[OBSER_I42] [varchar](100) NULL,
	[CLTEM_I42] [varchar](10) NULL,
	[CLHUM_I42] [varchar](10) NULL,
	[CLVIE_I42] [varchar](10) NULL,
 CONSTRAINT [PK_TCI42] PRIMARY KEY CLUSTERED 
(
	[IDDET_I42] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[APL_PEND_EJECUCION_VIEW]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[APL_PEND_EJECUCION_VIEW]
AS
SELECT     TOP 100 PERCENT dbo.TCI40.TIAPL_I40 AS TIPO_DE_APLICACION, dbo.TCI40.CAMPO_I40 AS CAMPO, 
                      PR.dbo.PRT03.DESCR_T03 AS DESCRIPCION_CAMPO, dbo.TCI40.CLAPL_I40 AS CLASE_DE_APLICACION, 
                      dbo.TCI40.NUAPL_I40 AS NUMERO_DE_ORDEN_DE_APLICACION, dbo.TCI40.FEAPL_I40 AS FECHA_APLICACION, 
                      dbo.TCI41.CODMA_I41 AS PRODUCTO, MS.dbo.MST21.DESMA_M02 AS DESCRIPCION_PRODUCTO, dbo.TCI41.REING_I41 AS REINGRESO_A_CAMPO, 
                      dbo.TCI41.CAREN_I41 AS CARENCIA, dbo.TCI41.OBJET_I41 AS OBJETIVO, UPPER(dbo.TCT32.DESCR_T32) AS DESCRIPCION_OBJETIVO, 
                      dbo.TCI41.DS100_I41, dbo.TCI41.DSTAN_I41, dbo.TCI41.DSLTA_I41, dbo.TCI41.DSLOT_I41, dbo.TCI41.TQLOT_I41, dbo.TCI41.LTSAD_I41, 
                      dbo.TCI41.DSXHA_I41
FROM         dbo.TCI40 INNER JOIN
                      dbo.TCI41 INNER JOIN
                      MS.dbo.MST21 ON dbo.TCI41.CODMA_I41 = MS.dbo.MST21.CODMA_M02 INNER JOIN
                      dbo.TCT32 ON dbo.TCI41.OBJET_I41 = dbo.TCT32.CODIG_T32 ON dbo.TCI40.IDCAB_I40 = dbo.TCI41.IDCAB_I41 LEFT OUTER JOIN
                      dbo.TCI42 ON dbo.TCI40.IDCAB_I40 = dbo.TCI42.IDCAB_I42 INNER JOIN
                      PR.dbo.PRT03 ON dbo.TCI40.CAMPO_I40 = PR.dbo.PRT03.ABREV_T03
WHERE     (dbo.TCI42.IDDET_I42 IS NULL) AND (dbo.TCI40.TIAPL_I40 = '01')
ORDER BY dbo.TCI40.TIAPL_I40, dbo.TCI40.CAMPO_I40, dbo.TCI40.CLAPL_I40, dbo.TCI40.NUAPL_I40, dbo.TCI40.FECHA_I40, dbo.TCI41.CODMA_I41
GO
/****** Object:  View [dbo].[VISTA_OAL]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_OAL]
AS
SELECT     TOP 100 PERCENT TCI40.NUAPL_I40, TCI40.HAAPL_I40, TCI40.GTAGU_I40, TCI40.TQAPL_I40, TCI40.TCEOA_I40, TCI40.TAEOA_I40, TCI41.CAREN_I41, 
                      TCI41.DS100_I41, TCI41.TQLOT_I41, TCI42.FECHA_I42, TCI42.FEFIN_I42, TCI42.CARGA_I42, TCI42.LTSAD_I42, ISNULL(TCI42.TRABA_I42, '') 
                      AS TRABA_I42, TCI42.HINI1_I42, TCI42.HFIN1_I42, ISNULL(TCI42.OPTR1_I42, '') AS OPTR1_I42, ISNULL(TCI42.OPTR2_I42, '') AS OPTR2_I42, 
                      TCI42.OBSER_I42, ISNULL(TCI42.EQAP1_I42, '') AS EQAP1_I42, ISNULL(TCI42.EQAP2_I42, '') AS EQAP2_I42, ISNULL(TCI42.EQAP3_I42, '') 
                      AS EQAP3_I42, ISNULL(TCI42.EQAP4_I42, '') AS EQAP4_I42, ISNULL(TCI42.EQAP5_I42, '') AS EQAP5_I42, ISNULL(TCI42.EQAP6_I42, '') AS EQAP6_I42, 
                      ISNULL(TCI42.MAQU1_I42, '') AS MAQU1_I42, ISNULL(TCI42.MAQU2_I42, '') AS MAQU2_I42, ISNULL(TCI42.MAQU3_I42, '') AS MAQU3_I42, 
                      ISNULL(TCI42.MAQU4_I42, '') AS MAQU4_I42, ISNULL(TCI42.MAQU5_I42, '') AS MAQU5_I42, ISNULL(TCI42.MAQU6_I42, '') AS MAQU6_I42, 
                      ISNULL(TCI42.OPTR3_I42, '') AS OPTR3_I42, ISNULL(TCI42.OPTR4_I42, '') AS OPTR4_I42, ISNULL(TCI42.OPTR5_I42, '') AS OPTR5_I42, 
                      ISNULL(TCI42.OPTR6_I42, '') AS OPTR6_I42, ISNULL(TCI42.CLTEM_I42, '') AS CLTEM_I42, ISNULL(TCI42.CLHUM_I42, '') AS CLHUM_I42, 
                      ISNULL(TCI42.CLVIE_I42, '') AS CLVIE_I42, TCT36.DESCR_T36, PRT03.DESCR_T03, PRT03.HECTA_T03, PRT03.FSIEM_T03, PRT15.DESCR_T15, 
                      PRT15.CDESD_T15, PRT15.FPCOS_T15, MST21.DESMA_M02, MST21.UNIDA_M02, TCT37.DESCR_T37, TCT06.DESCR_T06, TCT44.DESCR_T44, 
                      PRT02.DESCR_T02, TCT37_1.DESCR_T37 AS Expr1, TCT44_1.DESCR_T44 AS Expr2, TCT06_1.DESCR_T06 AS Expr3, TCT32.DESCR_T32, 
                      PRT01.DESCR_T01, MST26.REING_T26, MST22.DSITE_T02, CBM0305.DESCR_M03, TCT40.DESCR_T40, ISNULL(VIEW_CLIMA.Temp_Out, '') 
                      AS Temp_Out, ISNULL(VIEW_CLIMA.Out_Hum, '') AS Out_Hum, ISNULL(VIEW_CLIMA.Wind_Speed, '') AS Wind_Speed, TCT37_2.DESCR_T37 AS Expr4, 
                      TCT37_3.DESCR_T37 AS Expr5, TCT37_4.DESCR_T37 AS Expr6, TCT37_5.DESCR_T37 AS Expr7
FROM         dbo.TCI40 TCI40 INNER JOIN
                      dbo.TCI41 TCI41 ON TCI40.IDCAB_I40 = TCI41.IDCAB_I41 AND TCI40.IDCAB_I40 = TCI41.IDCAB_I41 INNER JOIN
                      dbo.TCI42 TCI42 ON TCI40.IDCAB_I40 = TCI42.IDCAB_I42 INNER JOIN
                      PR.dbo.PRT03 PRT03 ON TCI40.CAMPO_I40 = PRT03.ABREV_T03 INNER JOIN
                      PR.dbo.PRT02 PRT02 ON PRT03.NIV02_T03 = PRT02.ABREV_T02 INNER JOIN
                      PR.dbo.PRT01 PRT01 ON PRT02.NIV01_T02 = PRT01.ABREV_T01 INNER JOIN
                      CB.dbo.CBM0305 CBM0305 ON PRT01.COSTO_T01 = CBM0305.ABREV_M03 INNER JOIN
                      dbo.TCT36 TCT36 ON TCI40.MEAPL_I40 = TCT36.ABREV_T36 INNER JOIN
                      dbo.TCT32 TCT32 ON TCI41.OBJET_I41 = TCT32.CODIG_T32 INNER JOIN
                      MS.dbo.MST21 MST21 ON TCI41.CODMA_I41 = MST21.CODMA_M02 INNER JOIN
                      MS.dbo.MST26 MST26 ON MST21.IDCAB_M02 = MST26.IDCAB_T26 INNER JOIN
                      dbo.TCT40 TCT40 ON MST26.NOTEC_T26 = TCT40.CODIG_T40 INNER JOIN
                      MS.dbo.MST22 MST22 ON MST21.CLASE_M02 = MST22.CDITE_T02 LEFT OUTER JOIN
                      dbo.TCT37 TCT37 ON TCI42.EQAP1_I42 = TCT37.ABREV_T37 LEFT OUTER JOIN
                      dbo.TCT37 TCT37_1 ON TCI42.EQAP2_I42 = TCT37_1.ABREV_T37 LEFT OUTER JOIN
                      dbo.TCT06 TCT06 ON TCI42.MAQU1_I42 = TCT06.CODIG_T06 LEFT OUTER JOIN
                      dbo.TCT06 TCT06_1 ON TCI42.MAQU2_I42 = TCT06_1.CODIG_T06 LEFT OUTER JOIN
                      dbo.TCT44 TCT44 ON TCI42.OPTR1_I42 = TCT44.CODIG_T44 LEFT OUTER JOIN
                      dbo.TCT44 TCT44_1 ON TCI42.OPTR2_I42 = TCT44_1.CODIG_T44 LEFT OUTER JOIN
                      PR.dbo.PRT15 PRT15 ON TCI40.CAMPA_I40 = PRT15.ABREV_T15 LEFT OUTER JOIN
                      dbo.TCT37 TCT37_2 ON TCI42.EQAP3_I42 = TCT37_2.ABREV_T37 LEFT OUTER JOIN
                      dbo.TCT37 TCT37_3 ON TCI42.EQAP4_I42 = TCT37_3.ABREV_T37 LEFT OUTER JOIN
                      dbo.TCT37 TCT37_4 ON TCI42.EQAP5_I42 = TCT37_4.ABREV_T37 LEFT OUTER JOIN
                      dbo.TCT37 TCT37_5 ON TCI42.EQAP6_I42 = TCT37_5.ABREV_T37 LEFT OUTER JOIN
                      dbo.VIEW_CLIMA VIEW_CLIMA ON TCI42.FECHA_I42 = VIEW_CLIMA.FECHA
WHERE     (TCI42.FECHA_I42 BETWEEN CONVERT(DATETIME, '01/06/2019', 103) AND CONVERT(DATETIME, '31/12/2020', 103))
ORDER BY TCI42.FECHA_I42, TCI42.HINI1_I42, TCI40.NUAPL_I40
GO
/****** Object:  View [dbo].[VISTA OAL IBAO V02]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA OAL IBAO V02]
AS
SELECT     TOP 100 PERCENT TCI40.NUAPL_I40 AS Codigo_Orden, TCI40.CAMPO_I40 AS ID_Lote, PRT03.DESCR_T03 AS Descripcion_Lote, 
                      TCI40.FECHA_I40 AS Fecha_Orden, TCI40.FEAPL_I40 AS Fecha_Aplicacion, TCT36.DESCR_T36 AS Metodo_Aplicacion, 0 AS Ph_Minimo, 
                      0 AS Ph_Maximo, 0 AS Conductividad, 0 AS Tolerancia_Conductividad, TCI40.VLTRA_I40 AS Velocidad_Tractor, TCI40.RPMMO_I40 AS RPM, 
                      TCI40.CABOQ_I40 AS Nro_Boquillas, TCI40.TCEOA_I40 AS Nro_Tancadas_Programadas, TCI41.CODMA_I41 AS ID_Producto, 
                      MST21.DESMA_M02 AS Nombre_Producto, TCT40.DESCR_T40 AS Ingrediente_Activo, MST22.DSITE_T02 AS Tipo_Producto, 
                      MST21.UNIDA_M02 AS Unidad_Medida, TCI41.DS100_I41 AS Dosis, TCI41.CAREN_I41 AS Tolerancia_Dosis
FROM         dbo.TCI40 TCI40 INNER JOIN
                      dbo.TCI41 TCI41 INNER JOIN
                      dbo.TCT32 TCT32 ON TCI41.OBJET_I41 = TCT32.CODIG_T32 INNER JOIN
                      MS.dbo.MST21 MST21 INNER JOIN
                      MS.dbo.MST26 MST26 INNER JOIN
                      dbo.TCT40 TCT40 ON MST26.NOTEC_T26 = TCT40.CODIG_T40 ON MST21.IDCAB_M02 = MST26.IDCAB_T26 INNER JOIN
                      MS.dbo.MST22 MST22 ON MST21.CLASE_M02 = MST22.CDITE_T02 ON TCI41.CODMA_I41 = MST21.CODMA_M02 ON 
                      TCI40.IDCAB_I40 = TCI41.IDCAB_I41 INNER JOIN
                      PR.dbo.PRT03 PRT03 INNER JOIN
                      PR.dbo.PRT02 PRT02 INNER JOIN
                      PR.dbo.PRT01 PRT01 INNER JOIN
                      CB.dbo.CBM0305 CBM0305 ON PRT01.COSTO_T01 = CBM0305.ABREV_M03 ON PRT02.NIV01_T02 = PRT01.ABREV_T01 ON 
                      PRT03.NIV02_T03 = PRT02.ABREV_T02 ON TCI40.CAMPO_I40 = PRT03.ABREV_T03 INNER JOIN
                      dbo.TCT36 TCT36 ON TCI40.MEAPL_I40 = TCT36.ABREV_T36 LEFT OUTER JOIN
                      PR.dbo.PRT15 PRT15 ON TCI40.CAMPA_I40 = PRT15.ABREV_T15 LEFT OUTER JOIN
                      dbo.VIEW_CLIMA VIEW_CLIMA ON TCI40.FEAPL_I40 = VIEW_CLIMA.FECHA
WHERE     (TCI40.TIAPL_I40 = '01') AND (TCI40.FEAPL_I40 BETWEEN CONVERT(DATETIME, '01/06/2019', 103) AND CONVERT(DATETIME, '31/12/2030', 103))
ORDER BY TCI40.NUAPL_I40, TCI40.CAMPO_I40, PRT03.DESCR_T03, TCI40.FECHA_I40, TCI40.FEAPL_I40, TCT36.DESCR_T36
GO
/****** Object:  View [dbo].[VISTA OAL IBAO V03]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA OAL IBAO V03]
AS
SELECT     TOP 100 PERCENT TCI40.NUAPL_I40 AS Codigo_Orden, TCI40.CAMPO_I40 AS ID_Lote, PRT03.DESCR_T03 AS Descripcion_Lote, 
                      TCI40.FECHA_I40 AS Fecha_Orden, TCI40.FEAPL_I40 AS Fecha_Aplicacion, TCT36.DESCR_T36 AS Metodo_Aplicacion, 0 AS Ph_Minimo, 
                      0 AS Ph_Maximo, 0 AS Conductividad, 0 AS Tolerancia_Conductividad, TCI40.VLTRA_I40 AS Velocidad_Tractor, TCI40.RPMMO_I40 AS RPM, 
                      TCI40.CABOQ_I40 AS Nro_Boquillas, TCI40.TCEOA_I40 AS Nro_Tancadas_Programadas, TCI41.CODMA_I41 AS ID_Producto, 
                      MST21.DESMA_M02 AS Nombre_Producto, TCT40.DESCR_T40 AS Ingrediente_Activo, MST22.DSITE_T02 AS Tipo_Producto, 
                      MST21.UNIDA_M02 AS Unidad_Medida, TCI41.DS100_I41 AS Dosis, TCI41.CAREN_I41 AS Tolerancia_Dosis, TCI40.MAQU1_I40 AS ID_Tractor_1,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06
                            WHERE      (CODIG_T06 = TCI40.MAQU1_I40)) AS Tractor_1, TCI40.OPTR1_I40 AS ID_Operador_Tractor_1,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44
                            WHERE      (CODIG_T44 = TCI40.OPTR1_I40)) AS Operador_Tractor_1, TCI40.MAQU2_I40 AS ID_Tractor_2,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_5
                            WHERE      (CODIG_T06 = TCI40.MAQU2_I40)) AS Tractor_2, TCI40.OPTR2_I40 AS ID_Operador_Tractor_2,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_5
                            WHERE      (CODIG_T44 = TCI40.OPTR2_I40)) AS Operador_Tractor_2, TCI40.MAQU3_I40 AS ID_Tractor_3,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_4
                            WHERE      (CODIG_T06 = TCI40.MAQU3_I40)) AS Tractor_3, TCI40.OPTR3_I40 AS ID_Operador_Tractor_3,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_4
                            WHERE      (CODIG_T44 = TCI40.OPTR3_I40)) AS Operador_Tractor_3, TCI40.MAQU4_I40 AS ID_Tractor_4,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_3
                            WHERE      (CODIG_T06 = TCI40.MAQU4_I40)) AS Tractor_4, TCI40.OPTR4_I40 AS ID_Operador_Tractor_4,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_3
                            WHERE      (CODIG_T44 = TCI40.OPTR4_I40)) AS Operador_Tractor_4, TCI40.MAQU5_I40 AS ID_Tractor_5,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_2
                            WHERE      (CODIG_T06 = TCI40.MAQU5_I40)) AS Tractor_5, TCI40.OPTR5_I40 AS ID_Operador_Tractor_5,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_2
                            WHERE      (CODIG_T44 = TCI40.OPTR5_I40)) AS Operador_Tractor_5, TCI40.MAQU6_I40 AS ID_Tractor_6,
                          (SELECT     DESCR_T06
                            FROM          dbo.TCT06 AS TCT06_1
                            WHERE      (CODIG_T06 = TCI40.MAQU6_I40)) AS Tractor_6, TCI40.OPTR6_I40 AS ID_Operador_Tractor_6,
                          (SELECT     DESCR_T44
                            FROM          dbo.TCT44 AS TCT44_1
                            WHERE      (CODIG_T44 = TCI40.OPTR6_I40)) AS Operador_Tractor_6
FROM         dbo.TCI40 TCI40 INNER JOIN
                      dbo.TCI41 TCI41 INNER JOIN
                      dbo.TCT32 TCT32 ON TCI41.OBJET_I41 = TCT32.CODIG_T32 INNER JOIN
                      MS.dbo.MST21 MST21 INNER JOIN
                      MS.dbo.MST26 MST26 INNER JOIN
                      dbo.TCT40 TCT40 ON MST26.NOTEC_T26 = TCT40.CODIG_T40 ON MST21.IDCAB_M02 = MST26.IDCAB_T26 INNER JOIN
                      MS.dbo.MST22 MST22 ON MST21.CLASE_M02 = MST22.CDITE_T02 ON TCI41.CODMA_I41 = MST21.CODMA_M02 ON 
                      TCI40.IDCAB_I40 = TCI41.IDCAB_I41 INNER JOIN
                      PR.dbo.PRT03 PRT03 INNER JOIN
                      PR.dbo.PRT02 PRT02 INNER JOIN
                      PR.dbo.PRT01 PRT01 INNER JOIN
                      CB.dbo.CBM0305 CBM0305 ON PRT01.COSTO_T01 = CBM0305.ABREV_M03 ON PRT02.NIV01_T02 = PRT01.ABREV_T01 ON 
                      PRT03.NIV02_T03 = PRT02.ABREV_T02 ON TCI40.CAMPO_I40 = PRT03.ABREV_T03 INNER JOIN
                      dbo.TCT36 TCT36 ON TCI40.MEAPL_I40 = TCT36.ABREV_T36 LEFT OUTER JOIN
                      PR.dbo.PRT15 PRT15 ON TCI40.CAMPA_I40 = PRT15.ABREV_T15 LEFT OUTER JOIN
                      dbo.VIEW_CLIMA VIEW_CLIMA ON TCI40.FEAPL_I40 = VIEW_CLIMA.FECHA
WHERE     (TCI40.TIAPL_I40 = '01') AND (TCI40.FEAPL_I40 BETWEEN CONVERT(DATETIME, '01/06/2019', 103) AND CONVERT(DATETIME, '31/12/2030', 103))
ORDER BY Codigo_Orden, ID_Lote, Descripcion_Lote, Fecha_Orden, Fecha_Aplicacion, Metodo_Aplicacion
GO
/****** Object:  View [dbo].[VISTA COSTO LABORES DE MAQUINA-x]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA COSTO LABORES DE MAQUINA-x]
AS
SELECT     TOP 100 PERCENT MES, LOTE, DESC_LOTE, LABOR, DESC_LABOR, HORAS_MAQ, HORAS_MAQ *
                          (SELECT     SUM(CONSUMO.SOLES_I02) / SUM(HORAS.HORAS_I49) AS CTPHR
                            FROM          (SELECT     PERIO_I01, COSTO_I02, DESCR_T03, SUM(SOLES_I02) AS SOLES_I02
                                                    FROM          MT.DBO.MTI0105 INNER JOIN
                                                                           (MT.DBO.MTI0205 INNER JOIN
                                                                           PR.dbo.PRT03 ON COSTO_I02 = ABREV_T03) ON IDCAB_I01 = IDCAB_I02
                                                    WHERE      PERIO_I01 = '2019-12' AND LEFT(TIVOU_I01, 1) = '2' AND LEFT(OPERA_I01, 3) <> '212' AND DTHMQ_T03 = 'S' AND 
                                                                           CHARINDEX(LEFT(CODMA_I02, 4),
                                                                               (SELECT     DCHRM_T03
                                                                                 FROM          PR.DBO.PRT03
                                                                                 WHERE      DTHMQ_T03 = 'S'
                                                                                 GROUP BY DCHRM_T03)) > 0
                                                    GROUP BY PERIO_I01, COSTO_I02, DESCR_T03) AS CONSUMO LEFT JOIN
                                                       (SELECT     PERIO_I48, MAQUI_I49, DESCR_T06, CAMPO_T06, SUM(HORAS_I49) AS HORAS_I49
                                                         FROM          TC.DBO.TCI48 INNER JOIN
                                                                                (TC.DBO.TCI49 INNER JOIN
                                                                                TC.DBO.TCT06 ON MAQUI_I49 = CODIG_T06) ON IDCAB_I48 = IDCAB_I49
                                                         WHERE      PERIO_I48 = '2019-12'
                                                         GROUP BY PERIO_I48, MAQUI_I49, DESCR_T06, CAMPO_T06) AS HORAS ON CONSUMO.COSTO_I02 = HORAS.CAMPO_T06) 
                      AS COSTO
FROM         (SELECT     PERIO_I48 AS MES, CAMPO_I49 AS LOTE, DESCR_T03 AS DESC_LOTE, LABOR_I49 AS LABOR, DESCR_T05 AS DESC_LABOR, 
                                              SUM(HORAS_I49) AS HORAS_MAQ
                       FROM          TCI48 INNER JOIN
                                              (TCI49 INNER JOIN
                                              TCT05 ON LABOR_I49 = ABREV_T05 INNER JOIN
                                              PR.DBO.PRT03 ON CAMPO_I49 = ABREV_T03) ON IDCAB_I48 = IDCAB_I49 INNER JOIN
                                              CB.DBO.CBM0305 ON FUNDO_I48 = ABREV_M03
                       WHERE      PERIO_I48 = '2019-12'
                       GROUP BY PERIO_I48, CAMPO_I49, DESCR_T03, LABOR_I49, DESCR_T05) XXXX
ORDER BY MES, LOTE, DESC_LOTE, LABOR, DESC_LABOR
GO
/****** Object:  View [dbo].[VISTA_CAMPANAS_LOTES_ANOS_V01]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTA_CAMPANAS_LOTES_ANOS_V01]
AS
SELECT     TOP 100 PERCENT PRT08.DESCR_T08 AS CAMAPAÑA_CULTIVO, PRT15.DESCR_T15 AS CAMPAÑA_LOTE, PRT15.DESDE_T15 AS DESDE, 
                      PRT15.HASTA_T15 AS HASTA
FROM         PR.dbo.PRT15 PRT15 INNER JOIN
                      PR.dbo.PRT08 PRT08 ON PRT15.CAMPA_T15 = PRT08.ABREV_T08
WHERE     (PRT08.ANIO__T08 >= '2018')
ORDER BY PRT08.DESCR_T08, PRT15.DESCR_T15
GO
/****** Object:  Table [dbo].['24012020$']    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['24012020$'](
	[FECHA] [smalldatetime] NULL,
	[HORA] [smalldatetime] NULL,
	[Temp_Out] [float] NULL,
	[Hi_Temp] [float] NULL,
	[Low_Temp] [float] NULL,
	[Out_Hum] [float] NULL,
	[Dew_Pt] [float] NULL,
	[Wind_Speed] [float] NULL,
	[Wind_Dir] [nvarchar](255) NULL,
	[Wind_Run] [float] NULL,
	[Hi_Speed] [float] NULL,
	[Hi_Dir] [nvarchar](255) NULL,
	[Wind_Chill] [float] NULL,
	[Heat_Index] [float] NULL,
	[THW_Index] [float] NULL,
	[THSW_Index] [float] NULL,
	[Bar  ] [float] NULL,
	[Rain] [float] NULL,
	[Rain_Rate] [float] NULL,
	[Solar_Rad] [float] NULL,
	[Solar_Energy] [float] NULL,
	[Hi_Solar_Rad] [float] NULL,
	[UV_Index] [float] NULL,
	[UV_Dose] [float] NULL,
	[Hi_UV ] [float] NULL,
	[Heat_D-D ] [float] NULL,
	[Cool_D-D ] [float] NULL,
	[In_Temp] [float] NULL,
	[In_Hum] [float] NULL,
	[In_Dew] [float] NULL,
	[In_Heat] [float] NULL,
	[In_EMC] [float] NULL,
	[In_Air_Density] [float] NULL,
	[ET ] [float] NULL,
	[Wind_Samp] [float] NULL,
	[Wind_Tx ] [float] NULL,
	[ISS_Recept] [float] NULL,
	[Arc_Int] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENERO]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENERO](
	[FECHA] [smalldatetime] NULL,
	[HORA] [smalldatetime] NULL,
	[Temp_Out] [float] NULL,
	[Hi_Temp] [float] NULL,
	[Low_Temp] [float] NULL,
	[Out_Hum] [float] NULL,
	[Dew_Pt] [float] NULL,
	[Wind_Speed] [float] NULL,
	[Wind_Dir] [nvarchar](255) NULL,
	[Wind_Run] [float] NULL,
	[Hi_Speed] [float] NULL,
	[Hi_Dir] [nvarchar](255) NULL,
	[Wind_Chill] [float] NULL,
	[Heat_Index] [float] NULL,
	[THW_Index] [float] NULL,
	[THSW_Index] [float] NULL,
	[Bar  ] [float] NULL,
	[Rain] [float] NULL,
	[Rain_Rate] [float] NULL,
	[Solar_Rad] [float] NULL,
	[Solar_Energy] [float] NULL,
	[Hi_Solar_Rad] [float] NULL,
	[UV_Index] [float] NULL,
	[UV_Dose] [float] NULL,
	[Hi_UV ] [float] NULL,
	[Heat_D-D ] [float] NULL,
	[Cool_D-D ] [float] NULL,
	[In_Temp] [float] NULL,
	[In_Hum] [float] NULL,
	[In_Dew] [float] NULL,
	[In_Heat] [float] NULL,
	[In_EMC] [float] NULL,
	[In_Air_Density] [float] NULL,
	[ET ] [float] NULL,
	[Wind_Samp] [float] NULL,
	[Wind_Tx ] [float] NULL,
	[ISS_Recept] [float] NULL,
	[Arc_Int] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoja1$]    Script Date: 18/02/2023 19:53:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoja1$](
	[FECHA] [smalldatetime] NULL,
	[HORA] [smalldatetime] NULL,
	[Temp_Out] [float] NULL,
	[Hi_Temp] [float] NULL,
	[Low_Temp] [float] NULL,
	[Out_Hum] [float] NULL,
	[Dew_Pt] [float] NULL,
	[Wind_Speed] [float] NULL,
	[Wind_Dir] [nvarchar](255) NULL,
	[Wind_Run] [float] NULL,
	[Hi_Speed] [float] NULL,
	[Hi_Dir] [nvarchar](255) NULL,
	[Wind_Chill] [float] NULL,
	[Heat_Index] [float] NULL,
	[THW_Index] [float] NULL,
	[THSW_Index] [float] NULL,
	[Bar  ] [float] NULL,
	[Rain] [float] NULL,
	[Rain_Rate] [float] NULL,
	[Solar_Rad] [float] NULL,
	[Solar_Energy] [float] NULL,
	[Hi_Solar_Rad] [float] NULL,
	[UV_Index] [float] NULL,
	[UV_Dose] [float] NULL,
	[Hi_UV ] [float] NULL,
	[Heat_D-D ] [float] NULL,
	[Cool_D-D ] [float] NULL,
	[In_Temp] [float] NULL,
	[In_Hum] [float] NULL,
	[In_Dew] [float] NULL,
	[In_Heat] [float] NULL,
	[In_EMC] [float] NULL,
	[In_Air_Density] [float] NULL,
	[ET ] [float] NULL,
	[Wind_Samp] [float] NULL,
	[Wind_Tx ] [float] NULL,
	[ISS_Recept] [float] NULL,
	[Arc_Int] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI01]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI01](
	[IDCAB_I01] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SEMAN_I01] [char](3) NULL,
	[TPROG_I01] [char](2) NULL,
	[CAMPO_I01] [char](8) NULL,
	[SUPER_I01] [char](2) NULL,
	[TOLUN_I01] [float] NULL,
	[TOMAR_I01] [float] NULL,
	[TOMIE_I01] [float] NULL,
	[TOJUE_I01] [float] NULL,
	[TOVIE_I01] [float] NULL,
	[TOSAB_I01] [float] NULL,
	[TODOM_I01] [float] NULL,
	[TOSEM_I01] [float] NULL,
 CONSTRAINT [PK_TCI01] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I01] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI02]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI02](
	[IDDET_I02] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I02] [int] NULL,
	[LABOR_I02] [char](6) NULL,
	[DSLAB_I02] [varchar](50) NULL,
	[TOLUN_I02] [float] NULL,
	[TOMAR_I02] [float] NULL,
	[TOMIE_I02] [float] NULL,
	[TOJUE_I02] [float] NULL,
	[TOVIE_I02] [float] NULL,
	[TOSAB_I02] [float] NULL,
	[TODOM_I02] [float] NULL,
	[TOSEM_I02] [float] NULL,
 CONSTRAINT [PK_TCI02] PRIMARY KEY CLUSTERED 
(
	[IDDET_I02] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI03]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI03](
	[IDDET_I03] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I03] [int] NULL,
	[FECHA_I03] [datetime] NULL,
	[COLUM_I03] [char](14) NULL,
	[OBRER_I03] [char](8) NULL,
	[NOMBR_I03] [varchar](50) NULL,
	[EMPRE_I03] [varchar](20) NULL,
	[FLCCA_I03] [char](1) NULL,
	[CCALT_I03] [char](8) NULL,
	[HORAS_I03] [float] NULL,
 CONSTRAINT [PK_TCI03] PRIMARY KEY CLUSTERED 
(
	[IDDET_I03] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI04]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI04](
	[IDDET_I04] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I04] [int] NULL,
	[FECHA_I04] [datetime] NULL,
	[COLUM_I04] [char](14) NULL,
	[MAQUI_I04] [char](2) NULL,
	[DESCR_I04] [varchar](50) NULL,
	[EMPRE_I04] [varchar](20) NULL,
	[FLCCA_I04] [char](1) NULL,
	[CCALT_I04] [char](8) NULL,
	[HORAS_I04] [float] NULL,
 CONSTRAINT [PK_TCI04] PRIMARY KEY CLUSTERED 
(
	[IDDET_I04] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI30]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI30](
	[IDCAB_I30] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FEREG_I30] [datetime] NULL,
	[FECHA_I30] [datetime] NULL,
	[VOUCH_I30] [char](7) NULL,
	[CAMPO_I30] [char](8) NULL,
	[STATU_I30] [char](1) NULL,
 CONSTRAINT [PK_TCI30] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I30] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI31]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI31](
	[IDDET_I31] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I31] [int] NULL,
	[CODMA_I31] [char](9) NULL,
	[N_I31] [float] NULL,
	[P_I31] [float] NULL,
	[K_I31] [float] NULL,
	[M_I31] [float] NULL,
	[S_I31] [float] NULL,
	[C_I31] [float] NULL,
	[B_I31] [float] NULL,
 CONSTRAINT [PK_TCI31] PRIMARY KEY CLUSTERED 
(
	[IDDET_I31] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI32]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI32](
	[IDDET_I32] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I32] [int] NULL,
	[NUTRI_I32] [char](2) NULL,
	[UNIDA_I32] [float] NULL,
 CONSTRAINT [PK_TCI32] PRIMARY KEY CLUSTERED 
(
	[IDDET_I32] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI33]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI33](
	[IDDET_I33] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I33] [int] NULL,
	[ETAPA_I33] [char](2) NULL,
	[DIAS__I33] [int] NULL,
	[DIASA_I33] [int] NULL,
	[N_I33] [float] NULL,
	[P_I33] [float] NULL,
	[K_I33] [float] NULL,
	[M_I33] [float] NULL,
	[S_I33] [float] NULL,
	[C_I33] [float] NULL,
	[B_I33] [float] NULL,
 CONSTRAINT [PK_TCI33] PRIMARY KEY CLUSTERED 
(
	[IDDET_I33] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI34]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI34](
	[IDDET_I34] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I34] [int] NULL,
	[ETAPA_I34] [char](2) NULL,
	[DIAS__I34] [int] NULL,
	[DIASA_I34] [int] NULL,
	[N_I34] [float] NULL,
	[P_I34] [float] NULL,
	[K_I34] [float] NULL,
	[M_I34] [float] NULL,
	[S_I34] [float] NULL,
	[C_I34] [float] NULL,
	[B_I34] [float] NULL,
 CONSTRAINT [PK_TCI34] PRIMARY KEY CLUSTERED 
(
	[IDDET_I34] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI35]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI35](
	[IDDET_I35] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I35] [int] NULL,
	[CODMA_I35] [char](9) NULL,
	[ETAP0_I35] [float] NULL,
	[ETAP1_I35] [float] NULL,
	[ETAP2_I35] [float] NULL,
	[ETAP3_I35] [float] NULL,
	[ETAP4_I35] [float] NULL,
	[ETAP5_I35] [float] NULL,
	[TOTAL_I35] [float] NULL,
	[DOLUN_I35] [float] NULL,
	[DOLTO_I35] [float] NULL,
 CONSTRAINT [PK_TCI35] PRIMARY KEY CLUSTERED 
(
	[IDDET_I35] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI43]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI43](
	[IDDET_I43] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I43] [int] NULL,
	[CODMA_I43] [char](9) NULL,
	[REING_I43] [float] NULL,
	[CAREN_I43] [float] NULL,
	[OBJET_I43] [char](2) NULL,
	[DS100_I43] [float] NULL,
	[DSTAN_I43] [float] NULL,
	[DSLTA_I43] [float] NULL,
	[DSLOT_I43] [float] NULL,
	[TQLOT_I43] [float] NULL,
	[LTSAD_I43] [float] NULL,
	[CAMPO_I43] [char](8) NULL,
	[HAS___I43] [float] NULL,
	[CDA___I43] [char](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI44]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI44](
	[IDDET_I44] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I44] [int] NULL,
	[CODTR_I44] [char](4) NULL,
	[FECHA_I44] [datetime] NULL,
	[GRUPO_I44] [char](2) NULL,
	[CAMPO_I44] [char](8) NULL,
	[IDGEN_I44] [int] NULL,
 CONSTRAINT [PK_TCI44] PRIMARY KEY CLUSTERED 
(
	[IDDET_I44] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI45]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI45](
	[IDCAB_I45] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PERIO_I45] [varchar](7) NULL,
	[FEREG_I45] [datetime] NULL,
	[NUCTR_I45] [varchar](8) NULL,
	[FECHA_I45] [datetime] NULL,
	[OPERA_I45] [varchar](2) NULL,
	[POZO__I45] [varchar](2) NULL,
	[OBSER_I45] [varchar](100) NULL,
	[USUAR_I45] [varchar](20) NULL,
	[NUODA_I45] [varchar](8) NULL,
 CONSTRAINT [PK_TCI45] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I45] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI46]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI46](
	[IDDET_I46] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I46] [int] NULL,
	[CAMPO_I46] [varchar](10) NULL,
	[HRINI_I46] [datetime] NULL,
	[HRFIN_I46] [datetime] NULL,
	[HORAS_I46] [float] NULL,
	[CMA01_I46] [varchar](9) NULL,
	[CAN01_I46] [float] NULL,
	[CMA02_I46] [varchar](9) NULL,
	[CAN02_I46] [float] NULL,
	[CMA03_I46] [varchar](9) NULL,
	[CAN03_I46] [float] NULL,
	[CMA04_I46] [varchar](9) NULL,
	[CAN04_I46] [float] NULL,
	[CMA05_I46] [varchar](9) NULL,
	[CAN05_I46] [float] NULL,
	[CMA06_I46] [varchar](9) NULL,
	[CAN06_I46] [float] NULL,
	[REFER_I46] [varchar](50) NULL,
 CONSTRAINT [PK_TCI46] PRIMARY KEY CLUSTERED 
(
	[IDDET_I46] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI47]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI47](
	[IDDET_I47] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I47] [int] NULL,
	[PRODU_I47] [varchar](9) NULL,
	[CANTI_I47] [float] NULL,
 CONSTRAINT [PK_TCI47] PRIMARY KEY CLUSTERED 
(
	[IDDET_I47] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI50]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI50](
	[IDCAB_I50] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FECHA_I50] [datetime] NULL,
	[FUNDO_I50] [varchar](2) NULL,
	[IDPRG_I50] [varchar](10) NULL,
	[PERIO_I50] [varchar](7) NULL,
	[USUAR_I50] [varchar](50) NULL,
	[FEREG_I50] [datetime] NULL,
	[FLASO_I50] [bit] NULL,
	[LOCAL_I50] [varchar](2) NULL,
 CONSTRAINT [PK_TCI50] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I50] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI51]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI51](
	[IDDET_I51] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I51] [int] NULL,
	[EQUIP_I51] [varchar](4) NULL,
	[MAQUI_I51] [varchar](2) NULL,
	[OPERA_I51] [varchar](2) NULL,
	[MARCH_I51] [varchar](4) NULL,
	[VLTRA_I51] [float] NULL,
	[RPMMO_I51] [float] NULL,
	[CABOQ_I51] [float] NULL,
	[PRTRA_I51] [float] NULL,
	[TIBOQ_I51] [varchar](2) NULL,
	[TIDIF_I51] [varchar](2) NULL,
	[NUPOL_I51] [float] NULL,
	[REFER_I51] [varchar](50) NULL,
	[FLASO_I51] [bit] NULL,
 CONSTRAINT [PK_TCI51] PRIMARY KEY CLUSTERED 
(
	[IDDET_I51] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI70]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI70](
	[IDCAB_I70] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FUNDO_I70] [varchar](2) NULL,
	[CULTI_I70] [varchar](4) NULL,
	[VARIE_I70] [varchar](6) NULL,
	[MODUL_I70] [varchar](4) NULL,
	[PERIO_I70] [varchar](7) NULL,
	[NUMER_I70] [varchar](8) NULL,
	[FECHA_I70] [datetime] NULL,
	[NDIAS_I70] [int] NULL,
	[ETAPA_I70] [varchar](50) NULL,
	[OBJET_I70] [varchar](50) NULL,
 CONSTRAINT [PK_TCI70] PRIMARY KEY CLUSTERED 
(
	[IDCAB_I70] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI71]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI71](
	[IDDET_I71] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I71] [int] NULL,
	[TURNO_I71] [varchar](6) NULL,
	[AREA__I71] [float] NULL,
	[DIA01_I71] [bit] NULL,
	[DIA02_I71] [bit] NULL,
	[DIA03_I71] [bit] NULL,
	[DIA04_I71] [bit] NULL,
	[DIA05_I71] [bit] NULL,
	[DIA06_I71] [bit] NULL,
	[DIA07_I71] [bit] NULL,
	[DIA08_I71] [bit] NULL,
	[DIA09_I71] [bit] NULL,
	[DIA10_I71] [bit] NULL,
	[DIA11_I71] [bit] NULL,
	[DIA12_I71] [bit] NULL,
	[DIA13_I71] [bit] NULL,
	[DIA14_I71] [bit] NULL,
	[DIA15_I71] [bit] NULL,
	[DIA16_I71] [bit] NULL,
	[DIA17_I71] [bit] NULL,
	[DIA18_I71] [bit] NULL,
	[DIA19_I71] [bit] NULL,
	[DIA20_I71] [bit] NULL,
	[DIA21_I71] [bit] NULL,
	[DIA22_I71] [bit] NULL,
	[DIA23_I71] [bit] NULL,
	[DIA24_I71] [bit] NULL,
	[DIA25_I71] [bit] NULL,
	[DIA26_I71] [bit] NULL,
	[DIA27_I71] [bit] NULL,
	[DIA28_I71] [bit] NULL,
	[DIA29_I71] [bit] NULL,
	[DIA30_I71] [bit] NULL,
	[DIA31_I71] [bit] NULL,
 CONSTRAINT [PK_TCI71] PRIMARY KEY CLUSTERED 
(
	[IDDET_I71] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI72]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI72](
	[IDDET_I72] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I72] [int] NULL,
	[CONCE_I72] [varchar](4) NULL,
	[TURNO_I72] [varchar](6) NULL,
	[UNIDA_I72] [varchar](20) NULL,
	[DIA01_I72] [float] NULL,
	[DIA02_I72] [float] NULL,
	[DIA03_I72] [float] NULL,
	[DIA04_I72] [float] NULL,
	[DIA05_I72] [float] NULL,
	[DIA06_I72] [float] NULL,
	[DIA07_I72] [float] NULL,
	[DIA08_I72] [float] NULL,
	[DIA09_I72] [float] NULL,
	[DIA10_I72] [float] NULL,
	[DIA11_I72] [float] NULL,
	[DIA12_I72] [float] NULL,
	[DIA13_I72] [float] NULL,
	[DIA14_I72] [float] NULL,
	[DIA15_I72] [float] NULL,
	[DIA16_I72] [float] NULL,
	[DIA17_I72] [float] NULL,
	[DIA18_I72] [float] NULL,
	[DIA19_I72] [float] NULL,
	[DIA20_I72] [float] NULL,
	[DIA21_I72] [float] NULL,
	[DIA22_I72] [float] NULL,
	[DIA23_I72] [float] NULL,
	[DIA24_I72] [float] NULL,
	[DIA25_I72] [float] NULL,
	[DIA26_I72] [float] NULL,
	[DIA27_I72] [float] NULL,
	[DIA28_I72] [float] NULL,
	[DIA29_I72] [float] NULL,
	[DIA30_I72] [float] NULL,
	[DIA31_I72] [float] NULL,
 CONSTRAINT [PK_TCI72] PRIMARY KEY CLUSTERED 
(
	[IDDET_I72] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI73]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI73](
	[IDDET_I73] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I73] [int] NULL,
	[CONCE_I73] [varchar](4) NULL,
	[TURNO_I73] [varchar](6) NULL,
	[UNIDA_I73] [varchar](20) NULL,
	[DIA01_I73] [float] NULL,
	[DIA02_I73] [float] NULL,
	[DIA03_I73] [float] NULL,
	[DIA04_I73] [float] NULL,
	[DIA05_I73] [float] NULL,
	[DIA06_I73] [float] NULL,
	[DIA07_I73] [float] NULL,
	[DIA08_I73] [float] NULL,
	[DIA09_I73] [float] NULL,
	[DIA10_I73] [float] NULL,
	[DIA11_I73] [float] NULL,
	[DIA12_I73] [float] NULL,
	[DIA13_I73] [float] NULL,
	[DIA14_I73] [float] NULL,
	[DIA15_I73] [float] NULL,
	[DIA16_I73] [float] NULL,
	[DIA17_I73] [float] NULL,
	[DIA18_I73] [float] NULL,
	[DIA19_I73] [float] NULL,
	[DIA20_I73] [float] NULL,
	[DIA21_I73] [float] NULL,
	[DIA22_I73] [float] NULL,
	[DIA23_I73] [float] NULL,
	[DIA24_I73] [float] NULL,
	[DIA25_I73] [float] NULL,
	[DIA26_I73] [float] NULL,
	[DIA27_I73] [float] NULL,
	[DIA28_I73] [float] NULL,
	[DIA29_I73] [float] NULL,
	[DIA30_I73] [float] NULL,
	[DIA31_I73] [float] NULL,
 CONSTRAINT [PK_TCI73] PRIMARY KEY CLUSTERED 
(
	[IDDET_I73] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI74]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI74](
	[IDDET_I74] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I74] [int] NULL,
	[CONCE_I74] [varchar](4) NULL,
	[TURNO_I74] [varchar](6) NULL,
	[UNIDA_I74] [varchar](20) NULL,
	[DIA01_I74] [float] NULL,
	[DIA02_I74] [float] NULL,
	[DIA03_I74] [float] NULL,
	[DIA04_I74] [float] NULL,
	[DIA05_I74] [float] NULL,
	[DIA06_I74] [float] NULL,
	[DIA07_I74] [float] NULL,
	[DIA08_I74] [float] NULL,
	[DIA09_I74] [float] NULL,
	[DIA10_I74] [float] NULL,
	[DIA11_I74] [float] NULL,
	[DIA12_I74] [float] NULL,
	[DIA13_I74] [float] NULL,
	[DIA14_I74] [float] NULL,
	[DIA15_I74] [float] NULL,
	[DIA16_I74] [float] NULL,
	[DIA17_I74] [float] NULL,
	[DIA18_I74] [float] NULL,
	[DIA19_I74] [float] NULL,
	[DIA20_I74] [float] NULL,
	[DIA21_I74] [float] NULL,
	[DIA22_I74] [float] NULL,
	[DIA23_I74] [float] NULL,
	[DIA24_I74] [float] NULL,
	[DIA25_I74] [float] NULL,
	[DIA26_I74] [float] NULL,
	[DIA27_I74] [float] NULL,
	[DIA28_I74] [float] NULL,
	[DIA29_I74] [float] NULL,
	[DIA30_I74] [float] NULL,
	[DIA31_I74] [float] NULL,
 CONSTRAINT [PK_TCI74] PRIMARY KEY CLUSTERED 
(
	[IDDET_I74] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI75]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI75](
	[IDDET_I75] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I75] [int] NULL,
	[CONCE_I75] [varchar](4) NULL,
	[TURNO_I75] [varchar](6) NULL,
	[UNIDA_I75] [varchar](20) NULL,
	[DIA01_I75] [float] NULL,
	[DIA02_I75] [float] NULL,
	[DIA03_I75] [float] NULL,
	[DIA04_I75] [float] NULL,
	[DIA05_I75] [float] NULL,
	[DIA06_I75] [float] NULL,
	[DIA07_I75] [float] NULL,
	[DIA08_I75] [float] NULL,
	[DIA09_I75] [float] NULL,
	[DIA10_I75] [float] NULL,
	[DIA11_I75] [float] NULL,
	[DIA12_I75] [float] NULL,
	[DIA13_I75] [float] NULL,
	[DIA14_I75] [float] NULL,
	[DIA15_I75] [float] NULL,
	[DIA16_I75] [float] NULL,
	[DIA17_I75] [float] NULL,
	[DIA18_I75] [float] NULL,
	[DIA19_I75] [float] NULL,
	[DIA20_I75] [float] NULL,
	[DIA21_I75] [float] NULL,
	[DIA22_I75] [float] NULL,
	[DIA23_I75] [float] NULL,
	[DIA24_I75] [float] NULL,
	[DIA25_I75] [float] NULL,
	[DIA26_I75] [float] NULL,
	[DIA27_I75] [float] NULL,
	[DIA28_I75] [float] NULL,
	[DIA29_I75] [float] NULL,
	[DIA30_I75] [float] NULL,
	[DIA31_I75] [float] NULL,
 CONSTRAINT [PK_TCI75] PRIMARY KEY CLUSTERED 
(
	[IDDET_I75] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI76]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI76](
	[IDDET_I76] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I76] [int] NULL,
	[CONCE_I76] [varchar](4) NULL,
	[TURNO_I76] [varchar](6) NULL,
	[UNIDA_I76] [varchar](20) NULL,
	[DIA01_I76] [float] NULL,
	[DIA02_I76] [float] NULL,
	[DIA03_I76] [float] NULL,
	[DIA04_I76] [float] NULL,
	[DIA05_I76] [float] NULL,
	[DIA06_I76] [float] NULL,
	[DIA07_I76] [float] NULL,
	[DIA08_I76] [float] NULL,
	[DIA09_I76] [float] NULL,
	[DIA10_I76] [float] NULL,
	[DIA11_I76] [float] NULL,
	[DIA12_I76] [float] NULL,
	[DIA13_I76] [float] NULL,
	[DIA14_I76] [float] NULL,
	[DIA15_I76] [float] NULL,
	[DIA16_I76] [float] NULL,
	[DIA17_I76] [float] NULL,
	[DIA18_I76] [float] NULL,
	[DIA19_I76] [float] NULL,
	[DIA20_I76] [float] NULL,
	[DIA21_I76] [float] NULL,
	[DIA22_I76] [float] NULL,
	[DIA23_I76] [float] NULL,
	[DIA24_I76] [float] NULL,
	[DIA25_I76] [float] NULL,
	[DIA26_I76] [float] NULL,
	[DIA27_I76] [float] NULL,
	[DIA28_I76] [float] NULL,
	[DIA29_I76] [float] NULL,
	[DIA30_I76] [float] NULL,
	[DIA31_I76] [float] NULL,
 CONSTRAINT [PK_TCI76] PRIMARY KEY CLUSTERED 
(
	[IDDET_I76] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI77]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI77](
	[IDDET_I77] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDCAB_I77] [int] NULL,
	[CONCE_I77] [varchar](4) NULL,
	[TURNO_I77] [varchar](6) NULL,
	[UNIDA_I77] [varchar](20) NULL,
	[DIA01_I77] [float] NULL,
	[DIA02_I77] [float] NULL,
	[DIA03_I77] [float] NULL,
	[DIA04_I77] [float] NULL,
	[DIA05_I77] [float] NULL,
	[DIA06_I77] [float] NULL,
	[DIA07_I77] [float] NULL,
	[DIA08_I77] [float] NULL,
	[DIA09_I77] [float] NULL,
	[DIA10_I77] [float] NULL,
	[DIA11_I77] [float] NULL,
	[DIA12_I77] [float] NULL,
	[DIA13_I77] [float] NULL,
	[DIA14_I77] [float] NULL,
	[DIA15_I77] [float] NULL,
	[DIA16_I77] [float] NULL,
	[DIA17_I77] [float] NULL,
	[DIA18_I77] [float] NULL,
	[DIA19_I77] [float] NULL,
	[DIA20_I77] [float] NULL,
	[DIA21_I77] [float] NULL,
	[DIA22_I77] [float] NULL,
	[DIA23_I77] [float] NULL,
	[DIA24_I77] [float] NULL,
	[DIA25_I77] [float] NULL,
	[DIA26_I77] [float] NULL,
	[DIA27_I77] [float] NULL,
	[DIA28_I77] [float] NULL,
	[DIA29_I77] [float] NULL,
	[DIA30_I77] [float] NULL,
	[DIA31_I77] [float] NULL,
 CONSTRAINT [PK_TCI77] PRIMARY KEY CLUSTERED 
(
	[IDDET_I77] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCI82]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCI82](
	[IDOAF_I82] [int] NOT NULL,
	[IDDET_I82] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ITEM__I82] [varchar](4) NOT NULL,
	[ITMCB_I82] [varchar](4) NOT NULL,
	[FECHA_I82] [datetime] NOT NULL,
	[LOTE__I82] [varchar](8) NULL,
	[AREA__I82] [float] NULL,
	[PRO01_I82] [varchar](9) NULL,
	[ING01_I82] [float] NULL,
	[PRO02_I82] [varchar](9) NULL,
	[ING02_I82] [float] NULL,
	[PRO03_I82] [varchar](9) NULL,
	[ING03_I82] [float] NULL,
	[PRO04_I82] [varchar](9) NULL,
	[ING04_I82] [float] NULL,
	[PRO05_I82] [varchar](9) NULL,
	[ING05_I82] [float] NULL,
	[PRO06_I82] [varchar](9) NULL,
	[ING06_I82] [float] NULL,
	[PRO07_I82] [varchar](9) NULL,
	[ING07_I82] [float] NULL,
	[PRO08_I82] [varchar](9) NULL,
	[ING08_I82] [float] NULL,
	[PRO09_I82] [varchar](9) NULL,
	[ING09_I82] [float] NULL,
	[PRO10_I82] [varchar](9) NULL,
	[ING10_I82] [float] NULL,
	[PRO11_I82] [varchar](9) NULL,
	[ING11_I82] [float] NULL,
	[PRO12_I82] [varchar](9) NULL,
	[ING12_I82] [float] NULL,
	[EMITI_I82] [bit] NULL,
	[NUAPL_I82] [varchar](12) NULL,
 CONSTRAINT [PK_TCI82] PRIMARY KEY CLUSTERED 
(
	[IDDET_I82] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT01]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT01](
	[CODIG_T01] [char](2) NOT NULL,
	[DESCR_T01] [varchar](20) NULL,
	[ABREV_T01] [char](3) NULL,
	[DESDE_T01] [datetime] NULL,
	[HASTA_T01] [datetime] NULL,
	[STATU_T01] [char](1) NULL,
	[TRDIS_T01] [int] NULL,
 CONSTRAINT [PK_TCT01] PRIMARY KEY CLUSTERED 
(
	[CODIG_T01] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT02]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT02](
	[CODIG_T02] [char](2) NULL,
	[DESCR_T02] [varchar](40) NULL,
	[ABREV_T02] [char](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT04]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT04](
	[CODIG_T04] [char](2) NULL,
	[DESCR_T04] [varchar](40) NULL,
	[ABREV_T04] [char](4) NOT NULL,
	[COSTO_T04] [char](8) NULL,
	[FLAPL_T04] [bit] NULL,
 CONSTRAINT [PK_TCT04] PRIMARY KEY CLUSTERED 
(
	[ABREV_T04] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT09]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT09](
	[CODIG_T09] [char](2) NULL,
	[DESCR_T09] [varchar](50) NULL,
	[ABREV_T09] [char](2) NOT NULL,
 CONSTRAINT [PK_TCT09] PRIMARY KEY CLUSTERED 
(
	[ABREV_T09] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT10]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT10](
	[IDDET_T10] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ABREV_T10] [char](6) NULL,
	[CAMPO_T10] [char](8) NULL,
	[DSCAM_T10] [varchar](50) NULL,
 CONSTRAINT [PK_TCT10] PRIMARY KEY CLUSTERED 
(
	[IDDET_T10] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT30]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT30](
	[CODIG_T30] [char](2) NULL,
	[DESCR_T30] [varchar](50) NULL,
	[ABREV_T30] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT31]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT31](
	[CODIG_T31] [char](2) NULL,
	[DESCR_T31] [varchar](50) NULL,
	[ABREV_T31] [varchar](7) NULL,
	[CULTI_I31] [char](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT33]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT33](
	[CODIG_T33] [char](2) NULL,
	[DESCR_T33] [varchar](50) NULL,
	[ABREV_T33] [char](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT34]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT34](
	[CODIG_T34] [char](4) NOT NULL,
	[DESCR_T34] [varchar](50) NULL,
	[INSTR_T34] [varchar](30) NULL,
	[ABREV_T34] [char](2) NULL,
	[GRUPO_T34] [char](2) NULL,
	[CODPL_T34] [varchar](8) NULL,
 CONSTRAINT [PK_TCT34] PRIMARY KEY CLUSTERED 
(
	[CODIG_T34] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT35]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT35](
	[CODIG_T35] [char](2) NULL,
	[DESCR_T35] [varchar](50) NULL,
	[ABREV_T35] [char](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT38]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT38](
	[CODIG_T38] [char](2) NULL,
	[DESCR_T38] [varchar](50) NULL,
	[ABREV_T38] [varchar](50) NULL,
	[ACTIV_T38] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT39]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT39](
	[CODIG_T39] [char](2) NOT NULL,
	[DESCR_T39] [varchar](50) NULL,
	[ABREV_T39] [char](2) NULL,
 CONSTRAINT [PK_TCT39] PRIMARY KEY CLUSTERED 
(
	[CODIG_T39] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT41]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT41](
	[CODIG_T41] [char](2) NULL,
	[DESCR_T41] [varchar](50) NULL,
	[ABREV_T41] [char](4) NULL,
	[TIAPL_T41] [char](2) NULL,
	[AEPTS_T41] [bit] NULL,
	[STADF_T41] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT42]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT42](
	[CODIG_T42] [varchar](2) NOT NULL,
	[DESCR_T42] [varchar](50) NULL,
	[ABREV_T42] [varchar](5) NULL,
	[OPERA_T42] [char](2) NULL,
 CONSTRAINT [PK_TCT42] PRIMARY KEY CLUSTERED 
(
	[CODIG_T42] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT43]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT43](
	[CODIG_T43] [char](2) NOT NULL,
	[DESCR_T43] [varchar](50) NULL,
	[ABREV_T43] [varchar](10) NULL,
	[ACTIV_T43] [bit] NULL,
 CONSTRAINT [PK_TCT43] PRIMARY KEY CLUSTERED 
(
	[CODIG_T43] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT45]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT45](
	[CODIG_T45] [varchar](2) NOT NULL,
	[DESCR_T45] [varchar](50) NULL,
	[ABREV_T45] [varchar](20) NULL,
	[CODMA_T45] [varchar](9) NOT NULL,
 CONSTRAINT [PK_TCT45] PRIMARY KEY CLUSTERED 
(
	[CODIG_T45] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT46]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT46](
	[POZO__T46] [varchar](2) NOT NULL,
	[CAMPO_T46] [varchar](12) NULL,
	[DSCAM_T46] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].['TCT47']    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['TCT47'](
	[FECHA] [smalldatetime] NULL,
	[HORA] [smalldatetime] NULL,
	[Temp_Out] [float] NULL,
	[Hi_Temp] [float] NULL,
	[Low_Temp] [float] NULL,
	[Out_Hum] [float] NULL,
	[Dew_Pt] [float] NULL,
	[Wind_Speed] [float] NULL,
	[Wind_Dir] [nvarchar](255) NULL,
	[Wind_Run] [float] NULL,
	[Hi_Speed] [float] NULL,
	[Hi_Dir] [nvarchar](255) NULL,
	[Wind_Chill] [float] NULL,
	[Heat_Index] [float] NULL,
	[THW_Index] [float] NULL,
	[THSW_Index] [float] NULL,
	[Bar  ] [float] NULL,
	[Rain] [float] NULL,
	[Rain_Rate] [float] NULL,
	[Solar_Rad] [float] NULL,
	[Solar_Energy] [float] NULL,
	[Hi_Solar_Rad] [float] NULL,
	[UV_Index] [float] NULL,
	[UV_Dose] [float] NULL,
	[Hi_UV ] [float] NULL,
	[Heat_D-D ] [float] NULL,
	[Cool_D-D ] [float] NULL,
	[In_Temp] [float] NULL,
	[In_Hum] [float] NULL,
	[In_Dew] [float] NULL,
	[In_Heat] [float] NULL,
	[In_EMC] [float] NULL,
	[In_Air_Density] [float] NULL,
	[ET ] [float] NULL,
	[Wind_Samp] [float] NULL,
	[Wind_Tx ] [float] NULL,
	[ISS_Recept] [float] NULL,
	[Arc_Int] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT47xxx]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT47xxx](
	[FECHA] [datetime] NULL,
	[HORA] [datetime] NULL,
	[Temp_Out] [float] NULL,
	[Hi_Temp] [float] NULL,
	[Low_Temp] [float] NULL,
	[Out_Hum] [float] NULL,
	[Dew_Pt] [float] NULL,
	[Wind_Speed] [float] NULL,
	[Wind_Dir] [nvarchar](255) NULL,
	[Wind_Run] [float] NULL,
	[Hi_Speed] [float] NULL,
	[Hi_Dir] [nvarchar](255) NULL,
	[Wind_Chill] [float] NULL,
	[Heat_Index] [float] NULL,
	[THW_Index] [float] NULL,
	[THSW_Index] [float] NULL,
	[Bar  ] [float] NULL,
	[Rain] [float] NULL,
	[Rain_Rate] [float] NULL,
	[Solar_Rad] [float] NULL,
	[Solar_Energy] [float] NULL,
	[Hi_Solar_Rad] [float] NULL,
	[UV_Index] [float] NULL,
	[UV_Dose] [float] NULL,
	[Hi_UV ] [float] NULL,
	[Heat_D-D ] [float] NULL,
	[Cool_D-D ] [float] NULL,
	[In_Temp] [float] NULL,
	[In_Hum] [float] NULL,
	[In_Dew] [float] NULL,
	[In_Heat] [float] NULL,
	[In_EMC] [float] NULL,
	[In_Air_Density] [float] NULL,
	[ET ] [float] NULL,
	[Wind_Samp] [float] NULL,
	[Wind_Tx ] [float] NULL,
	[ISS_Recept] [float] NULL,
	[Arc_Int] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT48]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT48](
	[CODIG_T48] [varchar](2) NOT NULL,
	[DESCR_T48] [varchar](50) NULL,
	[ABREV_T48] [varchar](2) NULL,
 CONSTRAINT [PK_TCT48] PRIMARY KEY CLUSTERED 
(
	[CODIG_T48] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT49]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT49](
	[CODIG_T49] [varchar](2) NOT NULL,
	[DESCR_T49] [varchar](50) NULL,
	[ABREV_T49] [varchar](10) NULL,
 CONSTRAINT [PK_TCT49] PRIMARY KEY CLUSTERED 
(
	[CODIG_T49] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT50]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT50](
	[MARCA_T50] [varchar](2) NULL,
	[CODIG_T50] [varchar](2) NULL,
	[DESCR_T50] [varchar](50) NULL,
	[MARCH_T50] [varchar](4) NOT NULL,
 CONSTRAINT [PK_TCT50] PRIMARY KEY CLUSTERED 
(
	[MARCH_T50] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT51]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT51](
	[CODIG_T51] [varchar](2) NOT NULL,
	[DESCR_T51] [varchar](50) NULL,
	[ABREV_T51] [varchar](10) NULL,
 CONSTRAINT [PK_TCT51] PRIMARY KEY CLUSTERED 
(
	[CODIG_T51] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT52]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT52](
	[CODIG_T52] [varchar](2) NOT NULL,
	[DESCR_T52] [varchar](50) NULL,
	[ABREV_T52] [varchar](10) NULL,
 CONSTRAINT [PK_TCT52] PRIMARY KEY CLUSTERED 
(
	[CODIG_T52] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT73]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT73](
	[TURNO_T73] [varchar](6) NOT NULL,
	[CAMPO_T73] [varchar](8) NOT NULL,
	[CODIG_T73] [varchar](2) NULL,
	[DESCR_T73] [varchar](50) NULL,
	[AREA__T73] [float] NULL,
	[ACTIV_T73] [bit] NULL,
	[ABREV_T73] [varchar](16) NULL,
	[IDCAB_T73] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_TCT73] PRIMARY KEY CLUSTERED 
(
	[TURNO_T73] ASC,
	[CAMPO_T73] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT74]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT74](
	[TURNO_T74] [varchar](6) NOT NULL,
	[VALVU_T74] [varchar](2) NOT NULL,
	[CODIG_T74] [varchar](2) NULL,
	[DESCR_T74] [varchar](50) NULL,
	[ACTIV_T74] [bit] NULL,
	[ABREV_T74] [varchar](8) NULL,
 CONSTRAINT [PK_TCT74] PRIMARY KEY CLUSTERED 
(
	[TURNO_T74] ASC,
	[VALVU_T74] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT75]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT75](
	[CODIG_T75] [varchar](2) NOT NULL,
	[DESCR_T75] [varchar](50) NULL,
	[ABREV_T75] [varchar](2) NULL,
	[TABLA_T75] [varchar](50) NULL,
	[ACTIV_T75] [bit] NULL,
 CONSTRAINT [PK_TCT75] PRIMARY KEY CLUSTERED 
(
	[CODIG_T75] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT76]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT76](
	[CONCE_T76] [varchar](2) NULL,
	[CODIG_T76] [varchar](2) NULL,
	[DESCR_T76] [varchar](50) NULL,
	[ABREV_T76] [varchar](4) NOT NULL,
	[FLCAL_T76] [bit] NULL,
	[FORMU_T76] [varchar](200) NULL,
	[UNIDA_T76] [varchar](50) NULL,
	[TURNO_T76] [bit] NULL,
	[ACTIV_T76] [bit] NULL,
 CONSTRAINT [PK_TCT76] PRIMARY KEY CLUSTERED 
(
	[ABREV_T76] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT77]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT77](
	[CODIG_T77] [varchar](2) NULL,
	[DESCR_T77] [varchar](100) NULL,
	[ABREV_T77] [varchar](8) NOT NULL,
	[VARIE_T77] [varchar](6) NULL,
	[NLMES_T77] [varchar](20) NULL,
	[NCMES_T77] [varchar](3) NULL,
	[DSETA_T77] [varchar](20) NULL,
 CONSTRAINT [PK_TCT77] PRIMARY KEY CLUSTERED 
(
	[ABREV_T77] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TCT81]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCT81](
	[CODIG_T81] [varchar](2) NOT NULL,
	[DESCR_T81] [varchar](50) NULL,
	[ABREV_T81] [varchar](20) NULL,
	[N01NB_T81] [varchar](2) NULL,
	[N01PO_T81] [float] NULL,
	[N02NB_T81] [varchar](2) NULL,
	[N02PO_T81] [float] NULL,
	[N03NB_T81] [varchar](2) NULL,
	[N03PO_T81] [float] NULL,
	[N04NB_T81] [varchar](2) NULL,
	[N04PO_T81] [float] NULL,
	[N05NB_T81] [varchar](2) NULL,
	[N05PO_T81] [float] NULL,
	[N06NB_T81] [varchar](2) NULL,
	[N06PO_T81] [float] NULL,
	[N07NB_T81] [varchar](2) NULL,
	[N07PO_T81] [float] NULL,
	[N08NB_T81] [varchar](2) NULL,
	[N08PO_T81] [float] NULL,
 CONSTRAINT [PK_TCT81] PRIMARY KEY CLUSTERED 
(
	[CODIG_T81] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMPTCI03]    Script Date: 18/02/2023 19:53:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMPTCI03](
	[IDDET_I03] [int] NULL,
	[IDCAB_I03] [int] NULL,
	[FECHA_I03] [datetime] NULL,
	[COLUM_I03] [char](12) NULL,
	[CODIG_I03] [char](8) NULL,
	[NOMBR_I03] [varchar](50) NULL,
	[EMPRE_I03] [char](2) NULL,
	[FLCCA_I03] [char](1) NULL,
	[CCALT_I03] [char](8) NULL,
	[HORAS_I03] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TOLUN_I01]  DEFAULT (0) FOR [TOLUN_I01]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TOMAR_I01]  DEFAULT (0) FOR [TOMAR_I01]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TOMIE_I01]  DEFAULT (0) FOR [TOMIE_I01]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TOJUE_I01]  DEFAULT (0) FOR [TOJUE_I01]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TOVIE_I01]  DEFAULT (0) FOR [TOVIE_I01]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TOSAB_I01]  DEFAULT (0) FOR [TOSAB_I01]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TODOM_I01]  DEFAULT (0) FOR [TODOM_I01]
GO
ALTER TABLE [dbo].[TCI01] ADD  CONSTRAINT [DF_TCI01_TOSEM_I01]  DEFAULT (0) FOR [TOSEM_I01]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TOLUN_I02]  DEFAULT (0) FOR [TOLUN_I02]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TOMAR_I02]  DEFAULT (0) FOR [TOMAR_I02]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TOMIE_I02]  DEFAULT (0) FOR [TOMIE_I02]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TOJUE_I02]  DEFAULT (0) FOR [TOJUE_I02]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TOVIE_I02]  DEFAULT (0) FOR [TOVIE_I02]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TOSAB_I02]  DEFAULT (0) FOR [TOSAB_I02]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TODOM_I02]  DEFAULT (0) FOR [TODOM_I02]
GO
ALTER TABLE [dbo].[TCI02] ADD  CONSTRAINT [DF_TCI02_TOSEM_I02]  DEFAULT (0) FOR [TOSEM_I02]
GO
ALTER TABLE [dbo].[TCI03] ADD  CONSTRAINT [DF_TCI03_HORAS_I03]  DEFAULT (0) FOR [HORAS_I03]
GO
ALTER TABLE [dbo].[TCI31] ADD  CONSTRAINT [DF_TCI31_N_I31]  DEFAULT (0) FOR [N_I31]
GO
ALTER TABLE [dbo].[TCI31] ADD  CONSTRAINT [DF_TCI31_P_I31]  DEFAULT (0) FOR [P_I31]
GO
ALTER TABLE [dbo].[TCI31] ADD  CONSTRAINT [DF_TCI31_K_I31]  DEFAULT (0) FOR [K_I31]
GO
ALTER TABLE [dbo].[TCI31] ADD  CONSTRAINT [DF_TCI31_M_I31]  DEFAULT (0) FOR [M_I31]
GO
ALTER TABLE [dbo].[TCI31] ADD  CONSTRAINT [DF_TCI31_S_I31]  DEFAULT (0) FOR [S_I31]
GO
ALTER TABLE [dbo].[TCI31] ADD  CONSTRAINT [DF_TCI31_C_I31]  DEFAULT (0) FOR [C_I31]
GO
ALTER TABLE [dbo].[TCI31] ADD  CONSTRAINT [DF_TCI31_B_I31]  DEFAULT (0) FOR [B_I31]
GO
ALTER TABLE [dbo].[TCI32] ADD  CONSTRAINT [DF_Tabla1_UNIDA_I32]  DEFAULT (0) FOR [UNIDA_I32]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_DIAS__I33]  DEFAULT (0) FOR [DIAS__I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_DIASA_I33]  DEFAULT (0) FOR [DIASA_I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_N_I33]  DEFAULT (0) FOR [N_I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_P_I33]  DEFAULT (0) FOR [P_I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_K_I33]  DEFAULT (0) FOR [K_I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_M_I33]  DEFAULT (0) FOR [M_I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_S_I33]  DEFAULT (0) FOR [S_I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_C_I33]  DEFAULT (0) FOR [C_I33]
GO
ALTER TABLE [dbo].[TCI33] ADD  CONSTRAINT [DF_TCI33_B_I33]  DEFAULT (0) FOR [B_I33]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_DIAS__I34]  DEFAULT (0) FOR [DIAS__I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_DIASA_I34]  DEFAULT (0) FOR [DIASA_I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_N_I34]  DEFAULT (0) FOR [N_I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_P_I34]  DEFAULT (0) FOR [P_I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_K_I34]  DEFAULT (0) FOR [K_I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_M_I34]  DEFAULT (0) FOR [M_I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_S_I34]  DEFAULT (0) FOR [S_I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_C_I34]  DEFAULT (0) FOR [C_I34]
GO
ALTER TABLE [dbo].[TCI34] ADD  CONSTRAINT [DF_TCI34_B_I34]  DEFAULT (0) FOR [B_I34]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_ETAP0_I35]  DEFAULT (0) FOR [ETAP0_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_ETAP1_I35]  DEFAULT (0) FOR [ETAP1_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_ETAP2_I35]  DEFAULT (0) FOR [ETAP2_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_ETAP3_I35]  DEFAULT (0) FOR [ETAP3_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_ETAP4_I35]  DEFAULT (0) FOR [ETAP4_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_ETAP5_I35]  DEFAULT (0) FOR [ETAP5_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_TOTAL_I35]  DEFAULT (0) FOR [TOTAL_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_DOLUN_I35]  DEFAULT (0) FOR [DOLUN_I35]
GO
ALTER TABLE [dbo].[TCI35] ADD  CONSTRAINT [DF_TCI35_DOLTO_I35]  DEFAULT (0) FOR [DOLTO_I35]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_CLAPL_I40]  DEFAULT (' ') FOR [CLAPL_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_HAAPL_I40]  DEFAULT (0) FOR [HAAPL_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_ETAPA_I40]  DEFAULT (' ') FOR [ETAPA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_TCEOA_I40]  DEFAULT (0) FOR [TCEOA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_TCAOA_I40]  DEFAULT (0) FOR [TCAOA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_OBSMT_I40]  DEFAULT (' ') FOR [OBSMT_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_STAPL_I40]  DEFAULT (' ') FOR [STAPL_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_NUPTS_I40]  DEFAULT (0) FOR [NUPTS_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_POZO__I40]  DEFAULT (' ') FOR [POZO__I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_OPERA_I40]  DEFAULT (' ') FOR [OPERA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_CREAL_I40]  DEFAULT (' ') FOR [CREAL_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_OPTR1_I40]  DEFAULT (' ') FOR [OPTR1_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_OPTR2_I40]  DEFAULT (' ') FOR [OPTR2_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_TAEOA_I40]  DEFAULT (0) FOR [TAEOA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_CAMPA_I40]  DEFAULT (' ') FOR [CAMPA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_IRBPA_I40]  DEFAULT (0) FOR [IRBPA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_USUAR_I40]  DEFAULT (' ') FOR [USUAR_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_FLAPR_I40]  DEFAULT (0) FOR [FLAPR_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_APROB_I40]  DEFAULT (' ') FOR [APROB_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_FLALM_I40]  DEFAULT (0) FOR [FLALM_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_USMOD_I40]  DEFAULT (' ') FOR [USMOD_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_FLATA_I40]  DEFAULT (0) FOR [FLATA_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_COMIN_I40]  DEFAULT (0) FOR [COMIN_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_COMAX_I40]  DEFAULT (0) FOR [COMAX_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_CORAL_I40]  DEFAULT (0) FOR [CORAL_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_PHMIN_I40]  DEFAULT (0) FOR [PHMIN_I40]
GO
ALTER TABLE [dbo].[TCI40] ADD  CONSTRAINT [DF_TCI40_PHRAL_I40]  DEFAULT (0) FOR [PHRAL_I40]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_IDCAB_I41]  DEFAULT (0) FOR [IDCAB_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_CODMA_I41]  DEFAULT (' ') FOR [CODMA_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_REING_I41]  DEFAULT (0) FOR [REING_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_CAREN_I41]  DEFAULT (0) FOR [CAREN_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_CARTX_I41]  DEFAULT (' ') FOR [CARTX_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_OBJET_I41]  DEFAULT (' ') FOR [OBJET_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_DS100_I41]  DEFAULT (0) FOR [DS100_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_DSTAN_I41]  DEFAULT (0) FOR [DSTAN_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_DSLTA_I41]  DEFAULT (0) FOR [DSLTA_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_DSLOT_I41]  DEFAULT (0) FOR [DSLOT_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_TQLOT_I41]  DEFAULT (0) FOR [TQLOT_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_LTSAD_I41]  DEFAULT (0) FOR [LTSAD_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_CAMPO_I41]  DEFAULT (' ') FOR [CAMPO_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_HAS___I41]  DEFAULT (0) FOR [HAS___I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_CDA___I41]  DEFAULT (' ') FOR [CDA___I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_KGXHA_I41]  DEFAULT (0) FOR [KGXHA_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_KGXCA_I41]  DEFAULT (0) FOR [KGXCA_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_PERMI_I41]  DEFAULT (' ') FOR [PERMI_I41]
GO
ALTER TABLE [dbo].[TCI41] ADD  CONSTRAINT [DF_TCI41_DSXHA_I41]  DEFAULT (0) FOR [DSXHA_I41]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_GRUPO_I42]  DEFAULT (' ') FOR [GRUPO_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CAMPO_I42]  DEFAULT (' ') FOR [CAMPO_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CARGA_I42]  DEFAULT (0) FOR [CARGA_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_LTSAD_I42]  DEFAULT (0) FOR [LTSAD_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_TISAL_I42]  DEFAULT (' ') FOR [TISAL_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_TRABA_I42]  DEFAULT (' ') FOR [TRABA_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_DSTRA_I42]  DEFAULT (' ') FOR [DSTRA_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_MAQUI_I42]  DEFAULT (' ') FOR [MAQU1_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_OPERA_I42]  DEFAULT (' ') FOR [OPTR1_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL1_I42]  DEFAULT (0) FOR [CORL1_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL1_I42]  DEFAULT (0) FOR [PHRL1_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_EQAP2_I42]  DEFAULT (' ') FOR [EQAP2_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_MAQU1_I421]  DEFAULT (' ') FOR [MAQU2_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_OPTR1_I421]  DEFAULT (' ') FOR [OPTR2_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL2_I42]  DEFAULT (0) FOR [CORL2_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL2_I42]  DEFAULT (0) FOR [PHRL2_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL3_I42]  DEFAULT (0) FOR [CORL3_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL3_I42]  DEFAULT (0) FOR [PHRL3_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL4_I42]  DEFAULT (0) FOR [CORL4_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL4_I42]  DEFAULT (0) FOR [PHRL4_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL5_I42]  DEFAULT (0) FOR [CORL5_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL6_I42]  DEFAULT (0) FOR [CORL6_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL6_I42]  DEFAULT (0) FOR [PHRL6_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL7_I42]  DEFAULT (0) FOR [CORL7_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL7_I42]  DEFAULT (0) FOR [PHRL7_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL8_I42]  DEFAULT (0) FOR [CORL8_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL8_I42]  DEFAULT (0) FOR [PHRL8_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORL9_I42]  DEFAULT (0) FOR [CORL9_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRL9_I42]  DEFAULT (0) FOR [PHRL9_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORLA_I42]  DEFAULT (0) FOR [CORLA_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRLA_I42]  DEFAULT (0) FOR [PHRLA_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORLB_I42]  DEFAULT (0) FOR [CORLB_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRLB_I42]  DEFAULT (0) FOR [PHRLB_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_CORLC_I42]  DEFAULT (0) FOR [CORLC_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_PHRLC_I42]  DEFAULT (0) FOR [PHRLC_I42]
GO
ALTER TABLE [dbo].[TCI42] ADD  CONSTRAINT [DF_TCI42_OBSER_I42]  DEFAULT (' ') FOR [OBSER_I42]
GO
ALTER TABLE [dbo].[TCI44] ADD  CONSTRAINT [DF_TCI44_GRUPO_I44]  DEFAULT (' ') FOR [GRUPO_I44]
GO
ALTER TABLE [dbo].[TCI44] ADD  CONSTRAINT [DF_TCI44_CAMPO_I44]  DEFAULT ('  ') FOR [CAMPO_I44]
GO
ALTER TABLE [dbo].[TCI44] ADD  CONSTRAINT [DF_TCI44_IDGEN_I44]  DEFAULT (0) FOR [IDGEN_I44]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CAMPO_I46]  DEFAULT (' ') FOR [CAMPO_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_HORAS_I46]  DEFAULT (0) FOR [HORAS_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CMA01_I46]  DEFAULT (' ') FOR [CMA01_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CAN01_I46]  DEFAULT (0) FOR [CAN01_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CMA02_I46]  DEFAULT (' ') FOR [CMA02_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CAN02_I46]  DEFAULT (0) FOR [CAN02_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CMA03_I46]  DEFAULT (' ') FOR [CMA03_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CAN03_I46]  DEFAULT (0) FOR [CAN03_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CMA04_I46]  DEFAULT (' ') FOR [CMA04_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CAN04_I46]  DEFAULT (0) FOR [CAN04_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CMA05_I46]  DEFAULT (' ') FOR [CMA05_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CAN05_I46]  DEFAULT (0) FOR [CAN05_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CMA06_I46]  DEFAULT (' ') FOR [CMA06_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_CAN06_I46]  DEFAULT (0) FOR [CAN06_I46]
GO
ALTER TABLE [dbo].[TCI46] ADD  CONSTRAINT [DF_TCI46_REFER_I46]  DEFAULT (' ') FOR [REFER_I46]
GO
ALTER TABLE [dbo].[TCI47] ADD  CONSTRAINT [DF_TCI47_PRODU_I47]  DEFAULT (' ') FOR [PRODU_I47]
GO
ALTER TABLE [dbo].[TCI47] ADD  CONSTRAINT [DF_TCI47_CANTI_I47]  DEFAULT (0) FOR [CANTI_I47]
GO
ALTER TABLE [dbo].[TCI50] ADD  CONSTRAINT [DF_TCI50_FLASO_I50]  DEFAULT (0) FOR [FLASO_I50]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_MARCH_I51]  DEFAULT (' ') FOR [MARCH_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_VLTRA_I51]  DEFAULT (0) FOR [VLTRA_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_RPMMO_I51]  DEFAULT (0) FOR [RPMMO_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_CABOQ_I51]  DEFAULT (0) FOR [CABOQ_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_PRTRA_I51]  DEFAULT (0) FOR [PRTRA_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_TIBOQ_I51]  DEFAULT (' ') FOR [TIBOQ_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_TIDIF_I51]  DEFAULT (' ') FOR [TIDIF_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_NUPOL_I51]  DEFAULT (0) FOR [NUPOL_I51]
GO
ALTER TABLE [dbo].[TCI51] ADD  CONSTRAINT [DF_TCI51_FLASO_I51]  DEFAULT (0) FOR [FLASO_I51]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_MARCH_I52]  DEFAULT (' ') FOR [MARCH_I52]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_VLTRA_I52]  DEFAULT (0) FOR [VLTRA_I52]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_RPMMO_I52]  DEFAULT (0) FOR [RPMMO_I52]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_CABOQ_I52]  DEFAULT (0) FOR [CABOQ_I52]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_PRTRA_I52]  DEFAULT (0) FOR [PRTRA_I52]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_TIBOQ_I52]  DEFAULT (' ') FOR [TIBOQ_I52]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_TIDIF_I52]  DEFAULT (' ') FOR [TIDIF_I52]
GO
ALTER TABLE [dbo].[TCI52] ADD  CONSTRAINT [DF_TCI52_NUPOL_I52]  DEFAULT (0) FOR [NUPOL_I52]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_AREA__I71]  DEFAULT (0) FOR [AREA__I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA01_I71]  DEFAULT (0) FOR [DIA01_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA02_I71]  DEFAULT (0) FOR [DIA02_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA03_I71]  DEFAULT (0) FOR [DIA03_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA04_I71]  DEFAULT (0) FOR [DIA04_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA05_I71]  DEFAULT (0) FOR [DIA05_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA06_I71]  DEFAULT (0) FOR [DIA06_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA07_I71]  DEFAULT (0) FOR [DIA07_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA08_I71]  DEFAULT (0) FOR [DIA08_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA09_I71]  DEFAULT (0) FOR [DIA09_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA10_I71]  DEFAULT (0) FOR [DIA10_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA11_I71]  DEFAULT (0) FOR [DIA11_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA12_I71]  DEFAULT (0) FOR [DIA12_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA13_I71]  DEFAULT (0) FOR [DIA13_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA14_I71]  DEFAULT (0) FOR [DIA14_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA15_I71]  DEFAULT (0) FOR [DIA15_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA16_I71]  DEFAULT (0) FOR [DIA16_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA17_I71]  DEFAULT (0) FOR [DIA17_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA18_I71]  DEFAULT (0) FOR [DIA18_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA19_I71]  DEFAULT (0) FOR [DIA19_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA20_I71]  DEFAULT (0) FOR [DIA20_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA21_I71]  DEFAULT (0) FOR [DIA21_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA22_I71]  DEFAULT (0) FOR [DIA22_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA23_I71]  DEFAULT (0) FOR [DIA23_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA24_I71]  DEFAULT (0) FOR [DIA24_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA25_I71]  DEFAULT (0) FOR [DIA25_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA26_I71]  DEFAULT (0) FOR [DIA26_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA27_I71]  DEFAULT (0) FOR [DIA27_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA28_I71]  DEFAULT (0) FOR [DIA28_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA29_I71]  DEFAULT (0) FOR [DIA29_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA30_I71]  DEFAULT (0) FOR [DIA30_I71]
GO
ALTER TABLE [dbo].[TCI71] ADD  CONSTRAINT [DF_TCI71_DIA31_I71]  DEFAULT (0) FOR [DIA31_I71]
GO
ALTER TABLE [dbo].[TCI81] ADD  CONSTRAINT [DF_TCI81_CERRA_I81]  DEFAULT (' ') FOR [CERRA_I81]
GO
ALTER TABLE [dbo].[TCI81] ADD  CONSTRAINT [DF_TCI81_EMITI_I81]  DEFAULT (0) FOR [EMITI_I81]
GO
ALTER TABLE [dbo].[TCI81] ADD  CONSTRAINT [DF_TCI81_STATU_I81]  DEFAULT ('01') FOR [STATU_I81]
GO
ALTER TABLE [dbo].[TCI82] ADD  CONSTRAINT [DF_TCI82_EMITI_I82]  DEFAULT (0) FOR [EMITI_I82]
GO
ALTER TABLE [dbo].[TCI83] ADD  CONSTRAINT [DF_TCI83_AREA__I83]  DEFAULT (0) FOR [AREA__I83]
GO
ALTER TABLE [dbo].[TCI83] ADD  CONSTRAINT [DF_TCI83_STATU_I83]  DEFAULT ('01') FOR [STATU_I83]
GO
ALTER TABLE [dbo].[TCI84] ADD  CONSTRAINT [DF_TCI84_AREA__I84]  DEFAULT (0) FOR [AREA__I84]
GO
ALTER TABLE [dbo].[TCI84] ADD  CONSTRAINT [DF_TCI84_CANTI_I84]  DEFAULT (0) FOR [CANTI_I84]
GO
ALTER TABLE [dbo].[TCT01] ADD  CONSTRAINT [DF_TCT01_TRDIS_T01]  DEFAULT (0) FOR [TRDIS_T01]
GO
ALTER TABLE [dbo].[TCT04] ADD  CONSTRAINT [DF_TCT04_FLAPL_T04]  DEFAULT (0) FOR [FLAPL_T04]
GO
ALTER TABLE [dbo].[TCT05] ADD  CONSTRAINT [DF_TCT05_FLMAQ_T05]  DEFAULT ('N') FOR [FLMAQ_T05]
GO
ALTER TABLE [dbo].[TCT05] ADD  CONSTRAINT [DF_TCT05_FLCAM_T05]  DEFAULT ('N') FOR [FLCAM_T05]
GO
ALTER TABLE [dbo].[TCT06] ADD  CONSTRAINT [DF_TCT06_CODIG_T06]  DEFAULT (' ') FOR [CODIG_T06]
GO
ALTER TABLE [dbo].[TCT06] ADD  CONSTRAINT [DF_TCT06_DESCR_T06]  DEFAULT (' ') FOR [DESCR_T06]
GO
ALTER TABLE [dbo].[TCT06] ADD  CONSTRAINT [DF_TCT06_ABREV_T06]  DEFAULT (' ') FOR [ABREV_T06]
GO
ALTER TABLE [dbo].[TCT06] ADD  CONSTRAINT [DF_TCT06_PLACA_T06]  DEFAULT (' ') FOR [PLACA_T06]
GO
ALTER TABLE [dbo].[TCT06] ADD  CONSTRAINT [DF_TCT06_XEMPR_T06]  DEFAULT (' ') FOR [XEMPR_T06]
GO
ALTER TABLE [dbo].[TCT06] ADD  CONSTRAINT [DF_TCT06_EMPRE_T06]  DEFAULT (' ') FOR [EMPRE_T06]
GO
ALTER TABLE [dbo].[TCT06] ADD  CONSTRAINT [DF_TCT06_OPERA_T06]  DEFAULT (' ') FOR [OPERA_T06]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_FLLOT_T07]  DEFAULT ('N') FOR [FLLOT_T07]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_LOTE__T07]  DEFAULT (' ') FOR [LOTE__T07]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_FLCAM_T07]  DEFAULT ('N') FOR [FLCAM_T07]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_CAMPO_T07]  DEFAULT (' ') FOR [CAMPO_T07]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_HECTA_T07]  DEFAULT (0) FOR [HECTA_T07]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_DCORT_T07]  DEFAULT (' ') FOR [DCORT_T07]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_SCOND_T07]  DEFAULT (' ') FOR [SCOND_T07]
GO
ALTER TABLE [dbo].[TCT07] ADD  CONSTRAINT [DF_TCT07_CAMPA_T07]  DEFAULT (' ') FOR [CAMPA_T07]
GO
ALTER TABLE [dbo].[TCT32] ADD  CONSTRAINT [DF_TCT32_ABREV_T32]  DEFAULT (' ') FOR [ABREV_T32]
GO
ALTER TABLE [dbo].[TCT34] ADD  CONSTRAINT [DF_TCT34_CODIG_T34]  DEFAULT (' ') FOR [CODIG_T34]
GO
ALTER TABLE [dbo].[TCT34] ADD  CONSTRAINT [DF_TCT34_DESCR_T34]  DEFAULT (' ') FOR [DESCR_T34]
GO
ALTER TABLE [dbo].[TCT34] ADD  CONSTRAINT [DF_TCT34_INSTR_T34]  DEFAULT (' ') FOR [INSTR_T34]
GO
ALTER TABLE [dbo].[TCT34] ADD  CONSTRAINT [DF_TCT34_ABREV_T34]  DEFAULT (' ') FOR [ABREV_T34]
GO
ALTER TABLE [dbo].[TCT34] ADD  CONSTRAINT [DF_TCT34_GRUPO_T34]  DEFAULT ('A') FOR [GRUPO_T34]
GO
ALTER TABLE [dbo].[TCT34] ADD  CONSTRAINT [DF_TCT34_CODPL_T34]  DEFAULT (' ') FOR [CODPL_T34]
GO
ALTER TABLE [dbo].[TCT36] ADD  CONSTRAINT [DF_TCT36_CODIG_T36]  DEFAULT (' ') FOR [CODIG_T36]
GO
ALTER TABLE [dbo].[TCT36] ADD  CONSTRAINT [DF_TCT36_DESCR_T36]  DEFAULT (' ') FOR [DESCR_T36]
GO
ALTER TABLE [dbo].[TCT36] ADD  CONSTRAINT [DF_TCT36_ABREV_T36]  DEFAULT (' ') FOR [ABREV_T36]
GO
ALTER TABLE [dbo].[TCT36] ADD  CONSTRAINT [DF_TCT36_TIAPL_T36]  DEFAULT (' ') FOR [TIAPL_T36]
GO
ALTER TABLE [dbo].[TCT36] ADD  CONSTRAINT [DF_TCT36_RQPOZ_T36]  DEFAULT (0) FOR [RQPOZ_T36]
GO
ALTER TABLE [dbo].[TCT36] ADD  CONSTRAINT [DF_TCT36_RQTRA_T36]  DEFAULT (0) FOR [RQTRA_T36]
GO
ALTER TABLE [dbo].[TCT36] ADD  CONSTRAINT [DF_TCT36_RQMAN_T36]  DEFAULT (0) FOR [RQMAN_T36]
GO
ALTER TABLE [dbo].[TCT37] ADD  CONSTRAINT [DF_TCT37_RQTRA_T37]  DEFAULT (0) FOR [RQTRA_T37]
GO
ALTER TABLE [dbo].[TCT38] ADD  CONSTRAINT [DF_TCT38_ACTIV_T38]  DEFAULT (1) FOR [ACTIV_T38]
GO
ALTER TABLE [dbo].[TCT41] ADD  CONSTRAINT [DF_TCT41_CODIG_T41]  DEFAULT (' ') FOR [CODIG_T41]
GO
ALTER TABLE [dbo].[TCT41] ADD  CONSTRAINT [DF_TCT41_DESCR_T41]  DEFAULT (' ') FOR [DESCR_T41]
GO
ALTER TABLE [dbo].[TCT41] ADD  CONSTRAINT [DF_TCT41_ABREV_T41]  DEFAULT (' ') FOR [ABREV_T41]
GO
ALTER TABLE [dbo].[TCT41] ADD  CONSTRAINT [DF_TCT41_TIAPL_T41]  DEFAULT (' ') FOR [TIAPL_T41]
GO
ALTER TABLE [dbo].[TCT41] ADD  CONSTRAINT [DF_TCT41_AEPTS_T41]  DEFAULT (0) FOR [AEPTS_T41]
GO
ALTER TABLE [dbo].[TCT41] ADD  CONSTRAINT [DF_TCT41_STADF_T41]  DEFAULT (0) FOR [STADF_T41]
GO
ALTER TABLE [dbo].[TCT42] ADD  CONSTRAINT [DF_TCT42_DESCR_T42]  DEFAULT (' ') FOR [DESCR_T42]
GO
ALTER TABLE [dbo].[TCT42] ADD  CONSTRAINT [DF_TCT42_ABREV_T42]  DEFAULT (' ') FOR [ABREV_T42]
GO
ALTER TABLE [dbo].[TCT42] ADD  CONSTRAINT [DF_TCT42_OPERA_T42]  DEFAULT (' ') FOR [OPERA_T42]
GO
ALTER TABLE [dbo].[TCT43] ADD  CONSTRAINT [DF_TCT43_CODIG_T43]  DEFAULT (' ') FOR [CODIG_T43]
GO
ALTER TABLE [dbo].[TCT43] ADD  CONSTRAINT [DF_TCT43_DESCR_T43]  DEFAULT (' ') FOR [DESCR_T43]
GO
ALTER TABLE [dbo].[TCT43] ADD  CONSTRAINT [DF_TCT43_ABREV_T43]  DEFAULT (' ') FOR [ABREV_T43]
GO
ALTER TABLE [dbo].[TCT43] ADD  CONSTRAINT [DF_TCT43_ACTIV_T43]  DEFAULT (1) FOR [ACTIV_T43]
GO
ALTER TABLE [dbo].[TCT44] ADD  CONSTRAINT [DF_TCT44_CODIG_T44]  DEFAULT (' ') FOR [CODIG_T44]
GO
ALTER TABLE [dbo].[TCT44] ADD  CONSTRAINT [DF_TCT44_DESCR_T44]  DEFAULT (' ') FOR [DESCR_T44]
GO
ALTER TABLE [dbo].[TCT44] ADD  CONSTRAINT [DF_TCT44_ABREV_T44]  DEFAULT (' ') FOR [ABREV_T44]
GO
ALTER TABLE [dbo].[TCT44] ADD  CONSTRAINT [DF_TCT44_ACTIV_T44]  DEFAULT (1) FOR [ACTIV_T44]
GO
ALTER TABLE [dbo].[TCT45] ADD  CONSTRAINT [DF_TCT45_DESCR_T45]  DEFAULT (' ') FOR [DESCR_T45]
GO
ALTER TABLE [dbo].[TCT45] ADD  CONSTRAINT [DF_TCT45_ABREV_T45]  DEFAULT (' ') FOR [ABREV_T45]
GO
ALTER TABLE [dbo].[TCT45] ADD  CONSTRAINT [DF_TCT45_CODMA_T45]  DEFAULT (' ') FOR [CODMA_T45]
GO
ALTER TABLE [dbo].[TCT71] ADD  CONSTRAINT [DF_TCT71_ACTIV_T71]  DEFAULT (1) FOR [ACTIV_T71]
GO
ALTER TABLE [dbo].[TCT71] ADD  CONSTRAINT [DF_TCT71_DEHIL_T71]  DEFAULT (0) FOR [DEHIL_T71]
GO
ALTER TABLE [dbo].[TCT72] ADD  CONSTRAINT [DF_TCT72_ACTIV_T72]  DEFAULT (1) FOR [ACTIV_T72]
GO
ALTER TABLE [dbo].[TCT73] ADD  CONSTRAINT [DF_TCT73_ACTIV_T73]  DEFAULT (1) FOR [ACTIV_T73]
GO
ALTER TABLE [dbo].[TCT74] ADD  CONSTRAINT [DF_TCT74_ACTIV_T74]  DEFAULT (1) FOR [ACTIV_T74]
GO
ALTER TABLE [dbo].[TCT75] ADD  CONSTRAINT [DF_TCT75_ACTIV_T75]  DEFAULT (1) FOR [ACTIV_T75]
GO
ALTER TABLE [dbo].[TCT76] ADD  CONSTRAINT [DF_TCT76_ACTIV_T76]  DEFAULT (1) FOR [ACTIV_T76]
GO
ALTER TABLE [dbo].[TCI02]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI02_TCI01] FOREIGN KEY([IDCAB_I02])
REFERENCES [dbo].[TCI01] ([IDCAB_I01])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI02] CHECK CONSTRAINT [FK_TCI02_TCI01]
GO
ALTER TABLE [dbo].[TCI03]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI03_TCI02] FOREIGN KEY([IDCAB_I03])
REFERENCES [dbo].[TCI02] ([IDDET_I02])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI03] CHECK CONSTRAINT [FK_TCI03_TCI02]
GO
ALTER TABLE [dbo].[TCI04]  WITH CHECK ADD  CONSTRAINT [FK_TCI04_TCI02] FOREIGN KEY([IDCAB_I04])
REFERENCES [dbo].[TCI02] ([IDDET_I02])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI04] CHECK CONSTRAINT [FK_TCI04_TCI02]
GO
ALTER TABLE [dbo].[TCI31]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI31_TCI30] FOREIGN KEY([IDCAB_I31])
REFERENCES [dbo].[TCI30] ([IDCAB_I30])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI31] CHECK CONSTRAINT [FK_TCI31_TCI30]
GO
ALTER TABLE [dbo].[TCI32]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI32_TCI30] FOREIGN KEY([IDCAB_I32])
REFERENCES [dbo].[TCI30] ([IDCAB_I30])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI32] CHECK CONSTRAINT [FK_TCI32_TCI30]
GO
ALTER TABLE [dbo].[TCI33]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI33_TCI30] FOREIGN KEY([IDCAB_I33])
REFERENCES [dbo].[TCI30] ([IDCAB_I30])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI33] CHECK CONSTRAINT [FK_TCI33_TCI30]
GO
ALTER TABLE [dbo].[TCI34]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI34_TCI30] FOREIGN KEY([IDCAB_I34])
REFERENCES [dbo].[TCI30] ([IDCAB_I30])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI34] CHECK CONSTRAINT [FK_TCI34_TCI30]
GO
ALTER TABLE [dbo].[TCI35]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI35_TCI30] FOREIGN KEY([IDCAB_I35])
REFERENCES [dbo].[TCI30] ([IDCAB_I30])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI35] CHECK CONSTRAINT [FK_TCI35_TCI30]
GO
ALTER TABLE [dbo].[TCI41]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI41_TCI40] FOREIGN KEY([IDCAB_I41])
REFERENCES [dbo].[TCI40] ([IDCAB_I40])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI41] CHECK CONSTRAINT [FK_TCI41_TCI40]
GO
ALTER TABLE [dbo].[TCI42]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI42_TCI40] FOREIGN KEY([IDCAB_I42])
REFERENCES [dbo].[TCI40] ([IDCAB_I40])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI42] CHECK CONSTRAINT [FK_TCI42_TCI40]
GO
ALTER TABLE [dbo].[TCI44]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI44_TCI42] FOREIGN KEY([IDCAB_I44])
REFERENCES [dbo].[TCI42] ([IDDET_I42])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI44] CHECK CONSTRAINT [FK_TCI44_TCI42]
GO
ALTER TABLE [dbo].[TCI46]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI46_TCI45] FOREIGN KEY([IDCAB_I46])
REFERENCES [dbo].[TCI45] ([IDCAB_I45])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI46] CHECK CONSTRAINT [FK_TCI46_TCI45]
GO
ALTER TABLE [dbo].[TCI49]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI49_TCI48] FOREIGN KEY([IDCAB_I49])
REFERENCES [dbo].[TCI48] ([IDCAB_I48])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI49] CHECK CONSTRAINT [FK_TCI49_TCI48]
GO
ALTER TABLE [dbo].[TCI51]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI51_TCI50] FOREIGN KEY([IDCAB_I51])
REFERENCES [dbo].[TCI50] ([IDCAB_I50])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI51] CHECK CONSTRAINT [FK_TCI51_TCI50]
GO
ALTER TABLE [dbo].[TCI52]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI52_TCI40] FOREIGN KEY([IDCAB_I52])
REFERENCES [dbo].[TCI40] ([IDCAB_I40])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI52] CHECK CONSTRAINT [FK_TCI52_TCI40]
GO
ALTER TABLE [dbo].[TCI71]  WITH CHECK ADD  CONSTRAINT [FK_TCI71_TCI70] FOREIGN KEY([IDCAB_I71])
REFERENCES [dbo].[TCI70] ([IDCAB_I70])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI71] CHECK CONSTRAINT [FK_TCI71_TCI70]
GO
ALTER TABLE [dbo].[TCI72]  WITH CHECK ADD  CONSTRAINT [FK_TCI72_TCI70] FOREIGN KEY([IDCAB_I72])
REFERENCES [dbo].[TCI70] ([IDCAB_I70])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI72] CHECK CONSTRAINT [FK_TCI72_TCI70]
GO
ALTER TABLE [dbo].[TCI73]  WITH CHECK ADD  CONSTRAINT [FK_TCI73_TCI70] FOREIGN KEY([IDCAB_I73])
REFERENCES [dbo].[TCI70] ([IDCAB_I70])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI73] CHECK CONSTRAINT [FK_TCI73_TCI70]
GO
ALTER TABLE [dbo].[TCI74]  WITH CHECK ADD  CONSTRAINT [FK_TCI74_TCI70] FOREIGN KEY([IDCAB_I74])
REFERENCES [dbo].[TCI70] ([IDCAB_I70])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI74] CHECK CONSTRAINT [FK_TCI74_TCI70]
GO
ALTER TABLE [dbo].[TCI75]  WITH CHECK ADD  CONSTRAINT [FK_TCI75_TCI70] FOREIGN KEY([IDCAB_I75])
REFERENCES [dbo].[TCI70] ([IDCAB_I70])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI75] CHECK CONSTRAINT [FK_TCI75_TCI70]
GO
ALTER TABLE [dbo].[TCI75]  WITH CHECK ADD  CONSTRAINT [FK_TCI75_TCI75] FOREIGN KEY([IDDET_I75])
REFERENCES [dbo].[TCI75] ([IDDET_I75])
GO
ALTER TABLE [dbo].[TCI75] CHECK CONSTRAINT [FK_TCI75_TCI75]
GO
ALTER TABLE [dbo].[TCI76]  WITH CHECK ADD  CONSTRAINT [FK_TCI76_TCI70] FOREIGN KEY([IDCAB_I76])
REFERENCES [dbo].[TCI70] ([IDCAB_I70])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI76] CHECK CONSTRAINT [FK_TCI76_TCI70]
GO
ALTER TABLE [dbo].[TCI77]  WITH CHECK ADD  CONSTRAINT [FK_TCI77_TCI70] FOREIGN KEY([IDCAB_I77])
REFERENCES [dbo].[TCI70] ([IDCAB_I70])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI77] CHECK CONSTRAINT [FK_TCI77_TCI70]
GO
ALTER TABLE [dbo].[TCI81]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI81_TCI80] FOREIGN KEY([IDCAB_I81])
REFERENCES [dbo].[TCI80] ([IDCAB_I80])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI81] CHECK CONSTRAINT [FK_TCI81_TCI80]
GO
ALTER TABLE [dbo].[TCI84]  WITH NOCHECK ADD  CONSTRAINT [FK_TCI84_TCI83] FOREIGN KEY([IDCAB_I84])
REFERENCES [dbo].[TCI83] ([IDCAB_I83])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCI84] CHECK CONSTRAINT [FK_TCI84_TCI83]
GO
ALTER TABLE [dbo].[TCT46]  WITH NOCHECK ADD  CONSTRAINT [FK_TCT46_TCT42] FOREIGN KEY([POZO__T46])
REFERENCES [dbo].[TCT42] ([CODIG_T42])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TCT46] CHECK CONSTRAINT [FK_TCT46_TCT42]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'hectareas a aplicar' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'HAAPL_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TOTAL DE CARGAS ESTA ORDEN DE APLICACION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'TCEOA_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TOTAL DE CARGASSEGUN ALMACEN PARA ESTA  ORDEN DE APLICACION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'TCAOA_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OBSERVACIONES AREA E ALMACEN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'OBSMT_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SUB TIPO DE APLICACION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'STAPL_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NUMERO DE PLANTAS A APLICAR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'NUPTS_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CODIGO DE POZO DE RIEGO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'POZO__I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CODIGO DE OPERARIO DE POZO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'OPERA_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OPERADOR DE TRACTOR 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'OPTR1_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OPERADOR DE TRACTOR 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'OPTR2_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TOTAL LITROS ASICIONALES' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'TAEOA_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'INCLUIR EN REPORTE BPA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'IRBPA_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FLAG ATENDIDO POR ALMACEN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'FLATA_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CONDUCTIVIDAD MINIMA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'COMIN_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CONDUCTIVIDAD MAXIMA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'COMAX_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CONDUCTIVIDAD REAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'CORAL_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PH MINIMO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'PHMIN_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PH 0MAXIMO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'PHMAX_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PH REAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI40', @level2type=N'COLUMN',@level2name=N'PHRAL_I40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CARENCIA EN TEXTO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI41', @level2type=N'COLUMN',@level2name=N'CARTX_I41'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOSIS EN 100 LITROS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI41', @level2type=N'COLUMN',@level2name=N'DS100_I41'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOSIS X HECTAREA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI41', @level2type=N'COLUMN',@level2name=N'DSXHA_I41'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CONDUCTIVIDAD REAL 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI42', @level2type=N'COLUMN',@level2name=N'CORL1_I42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PH REAL 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI42', @level2type=N'COLUMN',@level2name=N'PHRL1_I42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TEMPERATURA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI42', @level2type=N'COLUMN',@level2name=N'CLTEM_I42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HUMEDAD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI42', @level2type=N'COLUMN',@level2name=N'CLHUM_I42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VIENTO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI42', @level2type=N'COLUMN',@level2name=N'CLVIE_I42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MARCHA SEGUN MARCA DE TRACTOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'MARCH_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VELOCIDAD DE TRACTOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'VLTRA_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RPM MOTOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'RPMMO_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CANTIDAD DE BOQUILLAS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'CABOQ_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PRESION DE TRABAJO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'PRTRA_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO DE BOQUILLA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'TIBOQ_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO DE DIFUSOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'TIDIF_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NUMERO DE POLEAS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI51', @level2type=N'COLUMN',@level2name=N'NUPOL_I51'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MARCHA SEGUN MARCA TRACTOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'MARCH_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VELOCIDAD DE TRACTOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'VLTRA_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RPM MOTOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'RPMMO_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CANTIDAD DE BOQUILLAS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'CABOQ_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PRESION DE TRABAJO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'PRTRA_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO DE BOQUILLA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'TIBOQ_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO DE DIFUSOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'TIDIF_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NUMERO DE POLEAS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI52', @level2type=N'COLUMN',@level2name=N'NUPOL_I52'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ESTADO DE LA ORDEN DE FERTILIZACION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI81', @level2type=N'COLUMN',@level2name=N'STATU_I81'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DE ENLACE CON TCI82' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI83', @level2type=N'COLUMN',@level2name=N'IDOAF_I83'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ESTADO OF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCI83', @level2type=N'COLUMN',@level2name=N'STATU_I83'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EELL-00001' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT03', @level2type=N'COLUMN',@level2name=N'CODPL_T03'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DESCRIPCION CORTA PARA TRAZABILIDAD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT07', @level2type=N'COLUMN',@level2name=N'DCORT_T07'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT07', @level2type=N'COLUMN',@level2name=N'CAMPA_T07'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CODIGO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'CODIG_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DESCRIPCION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'DESCR_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ABREVIATURA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'ABREV_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO DE APLICACION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'TIAPL_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FLAG INDICA SI REQUIERE POZO PARA REALZIAR EL METODO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'RQPOZ_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FLAG INDICA SI REQUIERE TRACTOR PARA REALZIAR EL METODO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'RQTRA_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FLAG INDICA SI REQUIERE MANUAL PARA REALZIAR EL METODO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'RQMAN_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SUB TIPO DE APL X DEFECTO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT36', @level2type=N'COLUMN',@level2name=N'STADF_T36'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FLAG REQUIERE TACTOR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT37', @level2type=N'COLUMN',@level2name=N'RQTRA_T37'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FLAG PARA INDICAR SI SE APLICA EN BASE A PLANTAS O NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT41', @level2type=N'COLUMN',@level2name=N'AEPTS_T41'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SUB TIPO DE APLICACION X DEFECTO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT41', @level2type=N'COLUMN',@level2name=N'STADF_T41'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CODIGO DEL POZO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT42', @level2type=N'COLUMN',@level2name=N'CODIG_T42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DESCRIPCION DEL POZO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT42', @level2type=N'COLUMN',@level2name=N'DESCR_T42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ABREVIATURA DEL POZO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT42', @level2type=N'COLUMN',@level2name=N'ABREV_T42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CODIGO DE OPERARIO DEL POZO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT42', @level2type=N'COLUMN',@level2name=N'OPERA_T42'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CODIGO DE OPERARIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT43', @level2type=N'COLUMN',@level2name=N'CODIG_T43'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DESCRIPCION DEL OPERARIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT43', @level2type=N'COLUMN',@level2name=N'DESCR_T43'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ABREVIATURA DEL OPERARIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TCT43', @level2type=N'COLUMN',@level2name=N'ABREV_T43'
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
         Begin Table = "View_ORDEN_DE_FERTILIZACION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "View_PROG_MENS_FERT"
            Begin Extent = 
               Top = 6
               Left = 268
               Bottom = 126
               Right = 522
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FORMATO_REGISTRO_DE_FERTILIZACION_CERTIFICACIONES_V03'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FORMATO_REGISTRO_DE_FERTILIZACION_CERTIFICACIONES_V03'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[16] 4[10] 2[24] 3) )"
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
         Begin Table = "TCI80"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCI81"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 126
               Right = 428
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
         Width = 1050
         Width = 960
         Width = 975
         Width = 1050
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_NUMERACION_OF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_NUMERACION_OF'
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
         Begin Table = "TCI83"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCI84"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MST21"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 126
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MST26"
            Begin Extent = 
               Top = 6
               Left = 632
               Bottom = 126
               Right = 792
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCT40"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 231
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCT71"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 246
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCT72"
            Begin Extent = 
               Top = 126
               Left = 434
               Bottom = 246
               Right = 594
            End
            DisplayFlags = 280
            TopC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ORDEN_DE_FERTILIZACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'olumn = 0
         End
         Begin Table = "CBM0305"
            Begin Extent = 
               Top = 126
               Left = 632
               Bottom = 246
               Right = 792
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT01"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 354
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT02"
            Begin Extent = 
               Top = 246
               Left = 236
               Bottom = 366
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT03"
            Begin Extent = 
               Top = 246
               Left = 434
               Bottom = 366
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT15"
            Begin Extent = 
               Top = 246
               Left = 632
               Bottom = 366
               Right = 792
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ORDEN_DE_FERTILIZACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ORDEN_DE_FERTILIZACION'
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
         Begin Table = "TCI80"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCI81"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PROG_MENS_FERT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PROG_MENS_FERT'
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
         Begin Table = "TCI40"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCI41"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCT32"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 231
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MST21"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 246
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MST26"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 354
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCT40"
            Begin Extent = 
               Top = 246
               Left = 236
               Bottom = 351
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MST22"
            Begin Extent = 
               Top = 354
               Left = 38
               Bottom = 474
               Right = 198
            End
            DisplayFlags = 280
            To' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA OAL IBAO V04'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'pColumn = 0
         End
         Begin Table = "PRT03"
            Begin Extent = 
               Top = 354
               Left = 236
               Bottom = 474
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT02"
            Begin Extent = 
               Top = 474
               Left = 38
               Bottom = 594
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT01"
            Begin Extent = 
               Top = 474
               Left = 236
               Bottom = 594
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CBM0305"
            Begin Extent = 
               Top = 594
               Left = 38
               Bottom = 714
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TCT36"
            Begin Extent = 
               Top = 594
               Left = 236
               Bottom = 714
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT15"
            Begin Extent = 
               Top = 714
               Left = 38
               Bottom = 834
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VIEW_CLIMA"
            Begin Extent = 
               Top = 714
               Left = 236
               Bottom = 834
               Right = 396
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA OAL IBAO V04'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA OAL IBAO V04'
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
         Begin Table = "CAB_MOV_MAQ"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DET_MOV_MAQ"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 126
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MAQUINARIAS"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 246
               Right = 214
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
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_MOV_MAQ_TALLER_BASE_2022_02'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_MOV_MAQ_TALLER_BASE_2022_02'
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
         Begin Table = "VISTA_MOV_MAQ_TALLER_BASE_2022_02"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PRT15 (PR.dbo)"
            Begin Extent = 
               Top = 6
               Left = 287
               Bottom = 126
               Right = 447
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_MOV_MAQ_TALLER_BASE1_2022_02'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_MOV_MAQ_TALLER_BASE1_2022_02'
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
         Begin Table = "REAL_DETALLADO"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 269
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
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_MOV_MAQ_TALLER_FINAL_2022_02'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VISTA_MOV_MAQ_TALLER_FINAL_2022_02'
GO
USE [master]
GO
ALTER DATABASE [TC] SET  READ_WRITE 
GO
