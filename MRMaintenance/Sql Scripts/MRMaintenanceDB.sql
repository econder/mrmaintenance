USE [master]
GO
/****** Object:  Database [MRMaintenance]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE DATABASE [MRMaintenance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MRMaintenance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MRMaintenance.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MRMaintenance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\MRMaintenance_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MRMaintenance] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MRMaintenance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MRMaintenance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MRMaintenance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MRMaintenance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MRMaintenance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MRMaintenance] SET ARITHABORT OFF 
GO
ALTER DATABASE [MRMaintenance] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MRMaintenance] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MRMaintenance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MRMaintenance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MRMaintenance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MRMaintenance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MRMaintenance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MRMaintenance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MRMaintenance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MRMaintenance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MRMaintenance] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MRMaintenance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MRMaintenance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MRMaintenance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MRMaintenance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MRMaintenance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MRMaintenance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MRMaintenance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MRMaintenance] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MRMaintenance] SET  MULTI_USER 
GO
ALTER DATABASE [MRMaintenance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MRMaintenance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MRMaintenance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MRMaintenance] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'DVAiJ1MwGy0gHzIZRrk8MurrmVmwfpYhYXsH8x93Dhk=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'LsN+lNAH9lUW3Y8HFW/iZ6BZQOlaN/fYaXsWZYe14iI=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'QehknpBq/BuIIlgX4UKac2PssRFC6Bco3x+1FX/Clps=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'EBUtC1JzSyMfYzyhQk1kCht7u38LNUHw3r/FXX5vHu4=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [NT SERVICE\ReportServer] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'mqOJVS7eBI26cHUUcB/nXs/4G1Tx5MWS0BkP0efy/Qs=', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [ECVM-WW2014\mrsystems] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [ECVM-WW2014\ASBService] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaUsers]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [ECVM-WW2014\aaUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaPowerUsers]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [ECVM-WW2014\aaPowerUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [ECVM-WW2014\aaAdministrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'ov1Oa27VJEFjwAkrNl5ECXzwFgEwUbElOg2CbZ9EQs0=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'bpayZI/fao+CpFt+BM9fnO2ary+P93rvYIvlUSqA6zE=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'Wulh/WUPnjqEZ/4g89zWYlNx4GLge8wWeGAsrQOeruc=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'7DI1WD9A2hngtjhjYhIyT6ycIFEtBGwsYpGHIAKHkJ8=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'cSrw3Uw8mdukCw8Tv4MdE1i5lr96xbFGO6OjzmEwYVI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'R7Esc9AR8TxuZJ3koD1a0y2Yj5wL5YCfYRDTXHzMet0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[MRMaintenance] TO [ECVM-WW2014\mrsystems]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\mrsystems]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\ASBService]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\aaAdministrators]
GO
USE [MRMaintenance]
GO
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 3/4/2015 11:28:08 AM ******/
/* To avoid disclosure of passwords, the password is generated in script. */
declare @idx as int
declare @randomPwd as nvarchar(64)
declare @rnd as float
select @idx = 0
select @randomPwd = N''
select @rnd = rand((@@CPU_BUSY % 100) + ((@@IDLE % 100) * 100) + 
       (DATEPART(ss, GETDATE()) * 10000) + ((cast(DATEPART(ms, GETDATE()) as int) % 100) * 1000000))
while @idx < 64
begin
   select @randomPwd = @randomPwd + char((cast((@rnd * 83) as int) + 43))
   select @idx = @idx + 1
select @rnd = rand()
end
declare @statement nvarchar(4000)
select @statement = N'CREATE APPLICATION ROLE [MRMaintenanceApp] WITH DEFAULT_SCHEMA = [guest], ' + N'PASSWORD = N' + QUOTENAME(@randomPwd,'''')
EXEC dbo.sp_executesql @statement

GO
/****** Object:  User [mrsystems]    Script Date: 3/4/2015 11:28:08 AM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrder]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-08-06
-- Description:	Creates work order from work order request
-- =============================================
CREATE PROCEDURE [dbo].[spCreateWorkOrder]
	@reqId bigint = NULL,
	@woDateDue datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.WorkOrders(reqId, woDateCreated, woDateDue) 
	VALUES(@reqId, GETDATE(), @woDateDue)
END


GO
ALTER AUTHORIZATION ON [dbo].[spCreateWorkOrder] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrderRequest]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-08-06
-- Description:	Creates work order request
-- =============================================
CREATE PROCEDURE [dbo].[spCreateWorkOrderRequest]
	@reqName nvarchar(255) = NULL,
	@reqDescr nvarchar(4000) = NULL,
	@equipId bigint = NULL,
	@deptId bigint = NULL,
	@reqStartDate datetime = NULL,
	@timeFreq int = NULL,
	@intId bigint = NULL,
	@enabled bit = 1,
	@priorityId int = NULL
AS
BEGIN
	SET NOCOUNT ON;

	--lastCompleted field is set to the same date as reqStartDate, otherwise 
	--there's no baseline date to calculate the time intervals from
	INSERT INTO dbo.WorkOrderRequests(reqName, reqDescr, equipId, deptId, reqStartDate, timeFreq, intId, lastCompleted, enabled, priorityId) 
	VALUES(@reqName, @reqDescr, @equipId, @deptId, @reqStartDate, @timeFreq, @intId, @reqStartDate, @enabled, @priorityId)
END


GO
ALTER AUTHORIZATION ON [dbo].[spCreateWorkOrderRequest] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spLogCycles]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================================
-- Author:		Eric Conder
-- Create date: 2014-08-07
-- Description:	Inserts equipment cycles into Cycles table using
--				the equipment cycles tagname.
-- ======================================================================
CREATE PROCEDURE [dbo].[spLogCycles]
	@equipCycTag nvarchar(255) = null,
	@cycles int = null,
	@isPrevDay bit = 1
AS
DECLARE
	@cyclesDate datetime

BEGIN
	SET NOCOUNT ON;
	
	--If runtime corresponds to today
	IF @isPrevDay = 0 SET @cyclesDate = GETDATE()
	
	--If runtime corresponds to yesterday
	IF @isPrevDay = 1 SET @cyclesDate = GETDATE()-1
	

	INSERT INTO Cycles(equipId, cyclesDate, cycles)
	VALUES((SELECT equipId FROM Equipment WHERE hmiCyclesTagname=@equipCycTag), @cyclesDate, @cycles)
END


GO
ALTER AUTHORIZATION ON [dbo].[spLogCycles] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spLogRuntime]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ======================================================================
-- Author:		Eric Conder
-- Create date: 2014-08-07
-- Description:	Inserts equipment runtimes into Runtimes table using
--				the equipment runtime tagname.
-- ======================================================================
CREATE PROCEDURE [dbo].[spLogRuntime]
	@equipRtTag nvarchar(255) = null,
	@runtime float = null,
	@isPrevDay bit = 1
AS
DECLARE
	@runtimeDate datetime

BEGIN
	SET NOCOUNT ON;
	
	--If runtime corresponds to today
	IF @isPrevDay = 0 SET @runtimeDate = GETDATE()
	
	--If runtime corresponds to yesterday
	IF @isPrevDay = 1 SET @runtimeDate = GETDATE()-1
	

	INSERT INTO Runtimes(equipId, runtimeDate, runtime)
	VALUES((SELECT equipId FROM Equipment WHERE hmiRuntimeTagname=@equipRtTag), @runtimeDate, @runtime)
END


GO
ALTER AUTHORIZATION ON [dbo].[spLogRuntime] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderMarkComplete]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spWorkOrderMarkComplete]
	@workOrderId bigint = NULL
AS

BEGIN
	SET NOCOUNT ON;

	/* Update lastcompleted field in WOSchedules */
	UPDATE WorkOrders SET woComplete=1, woDateCompleted=GETDATE() WHERE woId=@workOrderId
END


GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrderMarkComplete] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDue]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-10
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrderRequestsDue]
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM v_WorkOrderRequests
	WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
END


GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrderRequestsDue] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cycles](
	[cycleId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[cyclesDate] [datetime] NULL,
	[cycles] [bigint] NOT NULL,
 CONSTRAINT [PK_Cycles] PRIMARY KEY CLUSTERED 
(
	[cycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Cycles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[deptId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[deptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Departments] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeAccessLevels](
	[levelId] [bigint] IDENTITY(1,1) NOT NULL,
	[levelName] [nvarchar](50) NOT NULL,
	[levelDesc] [nvarchar](255) NULL,
	[levelCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeAccessLevels] PRIMARY KEY CLUSTERED 
(
	[levelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EmployeeAccessLevels] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[empId] [bigint] IDENTITY(1,1) NOT NULL,
	[facId] [bigint] NOT NULL,
	[levelId] [bigint] NOT NULL,
	[deptId] [bigint] NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[middleName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[empNumber] [nvarchar](255) NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [nvarchar](255) NULL,
	[phone1] [nvarchar](15) NULL,
	[phone2] [nvarchar](15) NULL,
	[email] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Employees] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipId] [bigint] IDENTITY(1,1) NOT NULL,
	[locId] [bigint] NOT NULL,
	[equipTypeId] [bigint] NOT NULL,
	[manId] [bigint] NOT NULL,
	[vendorId] [bigint] NULL,
	[modelId] [bigint] NULL,
	[equipNumber] [nvarchar](255) NULL,
	[equipName] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NULL,
	[equipSerial] [nvarchar](255) NULL,
	[hmiRuntimeTagname] [nvarchar](255) NULL,
	[hmiCyclesTagname] [nvarchar](255) NULL,
	[equipMccLoc] [nvarchar](255) NULL,
	[equipMccPanel] [nvarchar](255) NULL,
	[hmiRuntimeCont] [bit] NOT NULL CONSTRAINT [DF_Equipment_hmiRuntimeCont]  DEFAULT ((0)),
	[hmiCyclesCont] [bit] NOT NULL CONSTRAINT [DF_Equipment_hmiCyclesCont]  DEFAULT ((0)),
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Equipment] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentDocs](
	[equipDocId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[equipDocName] [nvarchar](50) NOT NULL,
	[equipDocLink] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_EquipmentDocs] PRIMARY KEY CLUSTERED 
(
	[equipDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EquipmentDocs] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[EquipmentModels]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentModels](
	[modelId] [bigint] IDENTITY(1,1) NOT NULL,
	[modelName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_EquipmentModels] PRIMARY KEY CLUSTERED 
(
	[modelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EquipmentModels] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentTypes](
	[typeId] [bigint] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_EquipmentTypes] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EquipmentTypes] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facilities](
	[facId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [varchar](11) NULL,
	[lat] [float] NULL,
	[long] [float] NULL,
	[phone1] [nvarchar](15) NULL,
	[phone2] [nvarchar](15) NULL,
	[fax] [nvarchar](15) NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[facId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Facilities] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[invId] [bigint] IDENTITY(1,1) NOT NULL,
	[invLocId] [bigint] NOT NULL,
	[partId] [bigint] NOT NULL,
	[qty] [float] NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[invId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Inventory] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryLocations](
	[invLocId] [bigint] IDENTITY(1,1) NOT NULL,
	[facId] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_InventoryLocations] PRIMARY KEY CLUSTERED 
(
	[invLocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[InventoryLocations] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Locations](
	[locId] [bigint] IDENTITY(1,1) NOT NULL,
	[facId] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [varchar](11) NULL,
	[lat] [float] NULL,
	[long] [float] NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Locations] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[manId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [varchar](11) NULL,
	[phone1] [varchar](15) NULL,
	[phone2] [varchar](15) NULL,
	[fax] [varchar](15) NULL,
	[web] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[manId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Manufacturers] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[partId] [bigint] IDENTITY(1,1) NOT NULL,
	[manId] [bigint] NULL,
	[venId] [bigint] NULL,
	[partName] [nvarchar](255) NOT NULL,
	[partDescr] [varchar](255) NULL,
	[partNumber] [nvarchar](255) NULL,
	[partSize] [float] NOT NULL,
	[unitId] [bigint] NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[partId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Parts] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Priorities]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priorities](
	[priorityId] [int] IDENTITY(1,1) NOT NULL,
	[priorityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priorities] PRIMARY KEY CLUSTERED 
(
	[priorityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Priorities] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Runtimes](
	[runtimeId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[runtimeDate] [datetime] NULL CONSTRAINT [DF_Runtimes_runtimeDate]  DEFAULT (getdate()-(1)),
	[runtime] [float] NOT NULL,
 CONSTRAINT [PK_Runtimes] PRIMARY KEY CLUSTERED 
(
	[runtimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Runtimes] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[States]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[stateId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[abbr] [char](2) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[stateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[States] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[TaskParts]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskParts](
	[woPartId] [bigint] IDENTITY(1,1) NOT NULL,
	[taskId] [bigint] NOT NULL,
	[partId] [bigint] NOT NULL,
 CONSTRAINT [PK_TaskParts] PRIMARY KEY CLUSTERED 
(
	[woPartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TaskParts] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[taskId] [bigint] IDENTITY(1,1) NOT NULL,
	[taskName] [nvarchar](255) NOT NULL,
	[taskDescr] [nvarchar](4000) NOT NULL,
	[taskEstDuration] [float] NOT NULL,
	[equipShutdownRequired] [bit] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[taskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Tasks] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeIntervals](
	[intId] [bigint] NOT NULL,
	[intName] [nvarchar](50) NOT NULL,
	[intAbbr] [nvarchar](50) NOT NULL,
	[orderCode] [int] NOT NULL,
 CONSTRAINT [PK_TimeIntervals] PRIMARY KEY CLUSTERED 
(
	[intId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TimeIntervals] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[toolId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NULL,
	[invLocId] [bigint] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[toolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Tools] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Units]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[unitId] [bigint] IDENTITY(1,1) NOT NULL,
	[unitName] [nvarchar](255) NOT NULL,
	[unitAbbr] [nvarchar](255) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[unitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Units] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [bigint] IDENTITY(1,1) NOT NULL,
	[empId] [bigint] NOT NULL,
	[deptId] [bigint] NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[password] [nvarchar](4000) NULL,
	[salt] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Users] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorContacts](
	[venContId] [bigint] IDENTITY(1,1) NOT NULL,
	[venId] [bigint] NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[midName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NULL,
	[phone1] [nvarchar](15) NULL,
	[phone2] [nvarchar](15) NULL,
	[fax] [nvarchar](15) NULL,
	[email] [nvarchar](4000) NULL,
 CONSTRAINT [PK_VendorContacts] PRIMARY KEY CLUSTERED 
(
	[venContId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[VendorContacts] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendors](
	[venId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [varchar](11) NULL,
	[phone1] [nvarchar](15) NULL,
	[phone2] [nvarchar](15) NULL,
	[fax] [nvarchar](15) NULL,
	[web] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[venId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Vendors] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[WorkOrderRequests]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderRequests](
	[reqId] [bigint] IDENTITY(1,1) NOT NULL,
	[reqName] [nvarchar](255) NOT NULL,
	[reqDescr] [nvarchar](4000) NULL,
	[equipId] [bigint] NOT NULL,
	[deptId] [bigint] NULL,
	[reqDateSubmitted] [datetime] NOT NULL CONSTRAINT [DF_WorkOrderRequests_reqDateSubmitted]  DEFAULT (getdate()),
	[reqStartDate] [datetime] NOT NULL,
	[timeFreq] [int] NOT NULL,
	[intId] [bigint] NOT NULL,
	[lastCompleted] [datetime] NULL,
	[enabled] [bit] NOT NULL CONSTRAINT [DF_WOSchedules_enabled]  DEFAULT ((1)),
	[priorityId] [int] NOT NULL CONSTRAINT [DF_WorkOrderRequests_priorityId]  DEFAULT ((1)),
 CONSTRAINT [PK_WorkOrderRequests] PRIMARY KEY CLUSTERED 
(
	[reqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WorkOrderRequests] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[WorkOrders]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrders](
	[woID] [bigint] IDENTITY(1,1) NOT NULL,
	[reqId] [bigint] NOT NULL,
	[woDateCreated] [datetime] NOT NULL CONSTRAINT [DF_WorkOrders_woDateCreated]  DEFAULT (getdate()),
	[woDateDue] [datetime] NOT NULL,
	[woNotes] [nvarchar](4000) NULL,
	[woComplete] [bit] NOT NULL CONSTRAINT [DF_WorkOrders_woComplete]  DEFAULT ((0)),
	[woDateCompleted] [datetime] NULL CONSTRAINT [DF_WorkOrders_woDateCompleted]  DEFAULT (getdate()),
	[woCompletedBy] [nvarchar](255) NULL,
 CONSTRAINT [PK_WorkOrders] PRIMARY KEY CLUSTERED 
(
	[woID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WorkOrders] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[WorkOrderTasks]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderTasks](
	[woTaskId] [bigint] IDENTITY(1,1) NOT NULL,
	[reqId] [bigint] NOT NULL,
	[modelId] [bigint] NOT NULL,
	[taskId] [bigint] NOT NULL,
	[taskStep] [int] NULL,
	[taskComplete] [bit] NULL,
	[taskDateComplete] [datetime] NULL,
	[taskDuration] [float] NULL,
	[woTaskNotes] [nvarchar](4000) NULL,
 CONSTRAINT [PK_WorkOrderTasks] PRIMARY KEY CLUSTERED 
(
	[woTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WorkOrderTasks] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrderRequests]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrderRequests]
AS
SELECT     dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.WorkOrderRequests.intId, 
                      dbo.TimeIntervals.intName, dbo.TimeIntervals.intAbbr, dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, dbo.Equipment.equipName, 
                      dbo.Locations.facId, dbo.Facilities.name AS facName, dbo.Locations.name AS locName, dbo.WorkOrderRequests.deptId, dbo.Departments.name AS deptName, 
                      dbo.WorkOrderRequests.priorityId, dbo.Priorities.priorityName, SUM(rt.runtime) AS runtime, SUM(cyc.cycles) AS cycles, 
                      CASE WHEN dbo.TimeIntervals.intAbbr = '1x' THEN lastCompleted WHEN dbo.TimeIntervals.intAbbr = 'cyc' THEN NULL 
                      WHEN dbo.TimeIntervals.intAbbr = 'rt' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'n' THEN DATEADD(MINUTE, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'h' THEN DATEADD(HOUR, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'd' THEN DATEADD(DAY, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'ww' THEN DATEADD(WEEK, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'm' THEN DATEADD(MONTH, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'q' THEN DATEADD(QUARTER, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'yyyy' THEN DATEADD(YEAR, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'w' THEN DATEADD(WEEKDAY, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'y' THEN DATEADD(DAYOFYEAR, 
                      timeFreq, lastcompleted) END AS nextDue, wo.woCount
FROM         dbo.Facilities INNER JOIN
                      dbo.Locations ON dbo.Facilities.facId = dbo.Locations.facId INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId ON dbo.Locations.locId = dbo.Equipment.locId INNER JOIN
                      dbo.Priorities ON dbo.WorkOrderRequests.priorityId = dbo.Priorities.priorityId INNER JOIN
                      dbo.Departments ON dbo.WorkOrderRequests.deptId = dbo.Departments.deptId LEFT OUTER JOIN
                          (SELECT     reqId, COUNT(*) AS woCount
                            FROM          dbo.WorkOrders
                            WHERE      (woComplete = 0)
                            GROUP BY reqId) AS wo ON dbo.WorkOrderRequests.reqId = wo.reqId LEFT OUTER JOIN
                          (SELECT     equipId, runtimeDate, runtime
                            FROM          dbo.Runtimes) AS rt ON dbo.Equipment.equipId = rt.equipId AND rt.runtimeDate > dbo.WorkOrderRequests.lastCompleted LEFT OUTER JOIN
                          (SELECT     equipId, cyclesDate, cycles
                            FROM          dbo.Cycles) AS cyc ON dbo.Equipment.equipId = cyc.equipId AND cyc.cyclesDate > dbo.WorkOrderRequests.lastCompleted
GROUP BY dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.TimeIntervals.intName, 
                      dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, dbo.Equipment.equipName, dbo.Facilities.name, dbo.Locations.name, 
                      dbo.TimeIntervals.intAbbr, wo.woCount, dbo.Priorities.priorityName, dbo.WorkOrderRequests.priorityId, dbo.Departments.name, dbo.WorkOrderRequests.deptId, 
                      dbo.WorkOrderRequests.intId, dbo.Locations.facId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrderRequests] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrders]    Script Date: 3/4/2015 11:28:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrders]
AS
SELECT     dbo.WorkOrders.woID, dbo.WorkOrders.reqId, dbo.WorkOrders.woDateCreated, dbo.WorkOrders.woDateDue, dbo.WorkOrders.woNotes, dbo.WorkOrders.woComplete, 
                      dbo.WorkOrders.woDateCompleted, dbo.WorkOrders.woCompletedBy, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.WorkOrderRequests.lastCompleted, 
                      dbo.WorkOrderRequests.enabled, dbo.TimeIntervals.intName, dbo.Equipment.equipId, dbo.Equipment.equipNumber, dbo.Equipment.equipName, 
                      dbo.Equipment.descr AS equipDescr, dbo.Equipment.equipSerial, dbo.Equipment.equipMccLoc, dbo.Equipment.equipMccPanel, dbo.EquipmentTypes.typeName, 
                      dbo.EquipmentModels.modelName, dbo.Locations.name AS locName, dbo.Locations.facId, dbo.Facilities.name AS facName, dbo.Facilities.addr1 AS facAddr1, 
                      dbo.Facilities.addr2 AS facAddr2, dbo.Facilities.fax AS facFax, dbo.Facilities.phone2 AS facPhone2, dbo.Facilities.phone1 AS facPhone1, dbo.Facilities.long AS facLong,
                       dbo.Facilities.lat AS facLat, dbo.Facilities.city AS facCity, dbo.Locations.addr1 AS locAddr1, dbo.Locations.addr2 AS locAddr2, dbo.Locations.city AS locCity, 
                      dbo.Locations.lat AS locLat, dbo.Locations.long AS locLong, dbo.Manufacturers.name AS manName, dbo.Manufacturers.web AS manWeb, 
                      dbo.Manufacturers.phone1 AS manPhone1, dbo.Manufacturers.phone2 AS manPhone2, dbo.Manufacturers.fax AS manFax, dbo.Vendors.name AS venName, 
                      dbo.Priorities.priorityName
FROM         dbo.Vendors INNER JOIN
                      dbo.Facilities INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId INNER JOIN
                      dbo.EquipmentTypes ON dbo.Equipment.equipTypeId = dbo.EquipmentTypes.typeId INNER JOIN
                      dbo.Locations ON dbo.Equipment.locId = dbo.Locations.locId ON dbo.Facilities.facId = dbo.Locations.facId INNER JOIN
                      dbo.Manufacturers ON dbo.Equipment.manId = dbo.Manufacturers.manId INNER JOIN
                      dbo.WorkOrders ON dbo.WorkOrderRequests.reqId = dbo.WorkOrders.reqId ON dbo.Vendors.venId = dbo.Equipment.vendorId INNER JOIN
                      dbo.Priorities ON dbo.WorkOrderRequests.priorityId = dbo.Priorities.priorityId LEFT OUTER JOIN
                      dbo.EquipmentModels ON dbo.Equipment.modelId = dbo.EquipmentModels.modelId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrders] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([deptId], [name]) VALUES (2, N'Maintenance')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (10, 42, 2, 14, 9, NULL, N'AB-1', N'Aeration Blower #1', N'', N'', N'AERATION_B1_ETD', NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (11, 42, 2, 14, 9, NULL, N'AB-2', N'Aeration Blower #2', N'', N'', N'AERATION_B2_ETD', NULL, N'', N'', 1, 1)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (12, 42, 2, 14, 9, NULL, N'AB-3', N'Aeration Blower #3', N'', N'', N'AERATION_B3_ETD', NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (13, 42, 3, 31, 9, NULL, N'', N'Alum Feed Pump 1', N'prominent sigma diaphragm metering pump', N'', N'AA_FEED_PMP1', NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (15, 42, 3, 31, 9, NULL, N'', N'Alum Feed Pump 2', N'prominent sigma diaphragm metering pump', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (16, 44, 4, 43, 9, NULL, N'', N'Alum tank', N'XLHDE Alum storage tank
polyprocessing 8100 gallon storage tank', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (17, 44, 3, 24, 10, NULL, N'', N'Channel blower 1', N'Gardner Denver positive displacement blower', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (18, 42, 3, 24, 10, NULL, N'', N'Channel blower 2', N'Gardner Denver positive displacement blower', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (19, 27, 5, 36, 9, NULL, N'', N'Clarifier 1', N'Siemens tow bro secondary clarifier', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (20, 28, 5, 36, 9, NULL, N'', N'Clarifier 2', N'Siemens tow bro secondary clarifier', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (21, 33, 6, 27, 9, NULL, N'', N'Conveyor', N'24" Belt conveyor incline/ horizontal', N'12018-BC1', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (22, 30, 8, 19, 11, NULL, N'', N'Digester mixer 1', N'Aqua MixAir digester mixer', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (23, 30, 8, 19, 11, NULL, N'', N'Digester mixer 2', N'Aqua MixAir digester mixer', N'', NULL, NULL, N'', N'', 0, 0)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname], [equipMccLoc], [equipMccPanel], [hmiRuntimeCont], [hmiCyclesCont]) VALUES (24, 42, 9, 14, 12, NULL, N'', N'HST blower 1', N'APG Neuros NX100-C070', N'', NULL, NULL, N'', N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
SET IDENTITY_INSERT [dbo].[EquipmentModels] ON 

INSERT [dbo].[EquipmentModels] ([modelId], [modelName]) VALUES (3, N'zJunk')
SET IDENTITY_INSERT [dbo].[EquipmentModels] OFF
SET IDENTITY_INSERT [dbo].[EquipmentTypes] ON 

INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (2, N'zJunk')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (3, N'PD Blower')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (4, N'storage tank')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (5, N'clarifier')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (6, N'conveyor')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (8, N'mixer')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (9, N' turbo blower')
SET IDENTITY_INSERT [dbo].[EquipmentTypes] OFF
SET IDENTITY_INSERT [dbo].[Facilities] ON 

INSERT [dbo].[Facilities] ([facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long], [phone1], [phone2], [fax]) VALUES (4, N'Camden WWTP', N'175 Bramblewood Plantation Rd', N'', N'Camden', 40, N'29020', 0, 0, N'8034256053', N'', N'')
SET IDENTITY_INSERT [dbo].[Facilities] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (20, 4, N'zJunk', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (22, 4, N'Plant Water Station', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (23, 4, N'Administration building', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (24, 4, N'Aeration basin', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (25, 4, N'Aeration basin effluent box', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (26, 4, N'Aeration basin influent channel and effluent channel', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (27, 4, N'Clarifier 1', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (28, 4, N'Clarifier 2', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (29, 4, N'Conference room ', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (30, 4, N'Digester', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (31, 4, N'Effluent facility', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (32, 4, N'Effluent filter area', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (33, 4, N'Headworks ', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (34, 4, N'Headworks electrical building', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (35, 4, N'Influent control building', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (36, 4, N'Maintenance area', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (37, 4, N'Maintenance building', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (38, 4, N'Scum pump station', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (39, 4, N'Sludge holding tank 1', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (40, 4, N'Sludge holding tank 2', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (41, 4, N'Sludge holding tanks', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (42, 4, N'Sludge processing building ', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (43, 4, N'Sludge transfer pump station', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (44, 4, N'Adjacent to sludge processing building', N'', N'', N'', 51, N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (8, N'zJunk', N'', N'', N'', 40, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (14, N'APG Neuros Corp.', N'160 Banker Road ', N'', N'Plattburgh', 32, N'12901', N'518-324-4150', N'', N'', N'contact Robert Tenbuuren')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (18, N'Blanchard Power Systems', N'', N'', N'', 51, N'', N'803-791-7100', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (19, N'Aqua-Aerobic Systems, Inc', N'', N'', N'', 51, N'', N'815-639-4491', N'', N'', N'dianning@aqua-aerobic.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (20, N'Carotek', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (21, N'Crocker & Associates', N'', N'', N'', 51, N'', N'803-329-5384', N'', N'', N'contact Kelley Wilber')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (22, N'Custom Overhead Doors LLC', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (23, N'GA Industries LLC', N'', N'', N'', 51, N'', N'724-776-1020', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (24, N'Gardner Denver', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (25, N'Goulds Water Technologies', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (26, N'Heyward Services Inc.', N'', N'', N'', 51, N'', N'704-583-2305', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (27, N'Jim Myers & Son Inc.', N'', N'', N'', 51, N'', N'704-554-8397', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (28, N'JWC Environmental', N'', N'', N'', 51, N'', N'800-331-8783', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (29, N'NEFCO, Incorporated', N'', N'', N'', 51, N'', N'561-775-9303', N'', N'', N'nefcoinc.com/')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (30, N'Parkson', N'', N'', N'', 51, N'', N' 1-800-249-2140', N' 1-888-parkson', N'', N'www.parkson.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (31, N'Prominent', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (32, N'Rodney Hunt - Fontaine, Inc', N'', N'', N'', 51, N'', N'987-544-2511', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (33, N'ROTORK', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (34, N'S.P. Kinney', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (35, N'Seepex Inc.', N'', N'', N'', 51, N'', N'', N'', N'', N'seepex.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (36, N'Siemens Industry Inc.', N'', N'', N'', 51, N'', N'262-547-0141', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (37, N'Smith & Loveless Inc.', N'', N'', N'', 51, N'', N'803-732-9473', N'', N'', N'SmithandLoveless.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (38, N'SPX LIGHTNIN', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (39, N'TELEDYNE ISCO', N'', N'', N'', 51, N'', N'800-228-4373', N'', N'', N'IscoCRS@teledyne.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (40, N'Tencarva Machinery Company', N'', N'', N'', 51, N'', N'1-800-849-5764', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (41, N'The Cookson Company ', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (42, N'The Gorman Rupp Company', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (43, N'polyprocessing', N'', N'', N'', 51, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
SET IDENTITY_INSERT [dbo].[Priorities] ON 

INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (1, N'Low')
INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (2, N'Medium')
INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (3, N'High')
INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (4, N'Emergency')
SET IDENTITY_INSERT [dbo].[Priorities] OFF
SET IDENTITY_INSERT [dbo].[Runtimes] ON 

INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (19, 10, CAST(N'2014-10-16 10:28:35.823' AS DateTime), 1.11)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (20, 10, CAST(N'2013-10-16 10:28:35.880' AS DateTime), 1000)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (21, 11, CAST(N'2013-11-17 00:00:00.000' AS DateTime), 1000)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (22, 11, CAST(N'2014-11-18 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (24, 11, CAST(N'2013-11-19 00:00:00.000' AS DateTime), 1000)
SET IDENTITY_INSERT [dbo].[Runtimes] OFF
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (1, N'Alabama', N'AL')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (2, N'Alaska', N'AK')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (3, N'Arizona', N'AZ')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (4, N'Arkansas', N'AR')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (5, N'California', N'CA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (6, N'Colorado', N'CO')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (7, N'Connecticut', N'CT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (8, N'Delaware', N'DE')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (9, N'Florida', N'FL')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (10, N'Georgia', N'GA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (11, N'Hawaii', N'HI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (12, N'Idaho', N'ID')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (13, N'Illinois', N'IL')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (14, N'Indiana', N'IN')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (15, N'Iowa', N'IA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (16, N'Kansas', N'KS')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (17, N'Kentucky', N'KY')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (18, N'Louisiana', N'LA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (19, N'Maine', N'ME')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (20, N'Maryland', N'MD')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (21, N'Massachusetts', N'MA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (22, N'Michigan', N'MI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (23, N'Minnesota', N'MN')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (24, N'Mississippi', N'MS')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (25, N'Missouri', N'MO')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (26, N'Montana', N'MT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (27, N'Nebraska', N'NE')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (28, N'Nevada', N'NV')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (29, N'New Hampshire', N'NH')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (30, N'New Jersey', N'NJ')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (31, N'New Mexico', N'NM')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (32, N'New York', N'NY')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (33, N'North Carolina', N'NC')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (34, N'North Dakota', N'ND')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (35, N'Ohio', N'OH')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (36, N'Oklahoma', N'OK')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (37, N'Oregon', N'OR')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (38, N'Pennsylvania', N'PA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (39, N'Rhode Island', N'RI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (40, N'South Carolina', N'SC')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (41, N'South Dakota', N'SD')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (42, N'Tennessee', N'TN')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (43, N'Texas', N'TX')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (44, N'Utah', N'UT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (45, N'Vermont', N'VT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (46, N'Virginia', N'VA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (47, N'Washington', N'WA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (48, N'West Virginia', N'WV')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (49, N'Wisconsin', N'WI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (50, N'Wyoming', N'WY')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (51, N'N/A', N'  ')
SET IDENTITY_INSERT [dbo].[States] OFF
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (1, N'Run Once', N'1x', 0)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (2, N'Minute', N'n', 1)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (3, N'Hour', N'h', 2)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (4, N'Day', N'd', 3)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (5, N'Week', N'ww', 4)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (6, N'Month', N'm', 5)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (7, N'Quarter', N'q', 6)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (8, N'Year', N'yyyy', 7)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (9, N'Cycles', N'cyc', 10)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (10, N'Runtime Hours', N'rt', 9)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (11, N'Weekday', N'w', 8)
SET IDENTITY_INSERT [dbo].[Units] ON 

INSERT [dbo].[Units] ([unitId], [unitName], [unitAbbr]) VALUES (1, N'Unit', N'Unit')
INSERT [dbo].[Units] ([unitId], [unitName], [unitAbbr]) VALUES (2, N'Gallon', N'gal')
INSERT [dbo].[Units] ([unitId], [unitName], [unitAbbr]) VALUES (3, N'Ounce', N'oz')
INSERT [dbo].[Units] ([unitId], [unitName], [unitAbbr]) VALUES (4, N'Quart', N'qt')
INSERT [dbo].[Units] ([unitId], [unitName], [unitAbbr]) VALUES (5, N'Liter', N'L')
SET IDENTITY_INSERT [dbo].[Units] OFF
SET IDENTITY_INSERT [dbo].[Vendors] ON 

INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (8, N'zJunk', N'', N'', N'', 40, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (9, N'Heyward Services Inc', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (10, N'Carotek', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (11, N'Crocker & Associates', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (12, N'APG - Neuros', N'', N'', N'', 51, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Vendors] OFF
SET IDENTITY_INSERT [dbo].[WorkOrderRequests] ON 

INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (51, N'zJunk3', N'Lube bearings', 10, 2, CAST(N'2014-10-16 10:33:15.890' AS DateTime), CAST(N'2014-10-16 10:32:48.000' AS DateTime), 5, 4, CAST(N'2014-10-31 22:32:22.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (52, N'monthly', N'inspect air filters
replace as needed', 10, 2, CAST(N'2014-10-16 15:59:56.117' AS DateTime), CAST(N'2014-10-06 15:55:12.000' AS DateTime), 30, 4, CAST(N'2014-10-06 15:55:12.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (53, N'Quarterly', N'power down unit remove side panels 
check inside of the blower for wear and tear
remove any accumulated dust
check for over heating in power cables or terminal blocks
clean and repair as needed ', 24, 2, CAST(N'2014-10-16 16:25:34.757' AS DateTime), CAST(N'2014-09-08 16:12:45.000' AS DateTime), 90, 4, CAST(N'2014-09-08 16:12:45.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (54, N'Annually', N'call APG-Neuros to do annually check up', 24, 2, CAST(N'2014-10-16 16:41:44.520' AS DateTime), CAST(N'2014-02-25 16:38:00.000' AS DateTime), 1, 8, CAST(N'2014-02-25 16:38:00.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (55, N'ContinuousRuntimeTest', N'continuous runtime test', 11, 2, CAST(N'2014-10-16 00:00:00.000' AS DateTime), CAST(N'2014-10-16 00:00:00.000' AS DateTime), 36, 10, CAST(N'2014-10-16 00:00:00.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[WorkOrderRequests] OFF
SET IDENTITY_INSERT [dbo].[WorkOrders] ON 

INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20008, 50, CAST(N'2014-10-16 10:33:34.817' AS DateTime), CAST(N'2014-10-17 01:32:26.000' AS DateTime), NULL, 0, CAST(N'2014-10-16 10:33:34.817' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20009, 49, CAST(N'2014-10-16 10:33:36.933' AS DateTime), CAST(N'2014-10-16 22:30:48.033' AS DateTime), NULL, 0, CAST(N'2014-10-16 10:33:36.933' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20010, 49, CAST(N'2014-10-16 10:33:43.610' AS DateTime), CAST(N'2014-10-16 22:30:48.033' AS DateTime), NULL, 0, CAST(N'2014-10-16 10:33:43.610' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20011, 51, CAST(N'2014-10-16 16:05:19.923' AS DateTime), CAST(N'2014-10-23 10:32:48.000' AS DateTime), N'', 1, CAST(N'2014-10-16 16:05:19.923' AS DateTime), N'EC')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20012, 51, CAST(N'2014-10-16 16:05:31.293' AS DateTime), CAST(N'2014-10-23 10:32:48.000' AS DateTime), N'', 1, CAST(N'2014-10-30 16:05:31.000' AS DateTime), N'EC')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20013, 51, CAST(N'2014-10-16 16:06:16.287' AS DateTime), CAST(N'2014-10-23 10:56:48.000' AS DateTime), N'', 1, CAST(N'2014-10-30 16:06:16.000' AS DateTime), N'EC')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20014, 51, CAST(N'2014-10-16 16:43:32.163' AS DateTime), CAST(N'2014-10-23 10:56:48.000' AS DateTime), N'', 1, CAST(N'2014-10-16 16:43:32.163' AS DateTime), N'')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20015, 51, CAST(N'2014-10-16 16:54:38.660' AS DateTime), CAST(N'2014-10-17 00:00:00.000' AS DateTime), N'', 1, CAST(N'2014-10-16 16:54:38.660' AS DateTime), N'Eric Conder')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20017, 51, CAST(N'2014-10-16 18:49:31.537' AS DateTime), CAST(N'2014-10-23 10:56:48.000' AS DateTime), N'', 1, CAST(N'2014-10-16 18:49:31.537' AS DateTime), N'')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20018, 51, CAST(N'2014-10-16 19:15:27.397' AS DateTime), CAST(N'2014-10-23 10:56:48.000' AS DateTime), N'', 1, CAST(N'2014-10-16 19:15:27.397' AS DateTime), N'')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20019, 51, CAST(N'2014-10-16 19:59:26.817' AS DateTime), CAST(N'2014-10-23 10:56:48.000' AS DateTime), N'', 1, CAST(N'2014-10-30 19:59:26.000' AS DateTime), N'')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20020, 51, CAST(N'2014-10-30 22:32:22.907' AS DateTime), CAST(N'2014-11-04 19:59:26.000' AS DateTime), N'', 1, CAST(N'2014-10-31 22:32:22.000' AS DateTime), N'EC')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20021, 55, CAST(N'2014-01-01 00:00:00.000' AS DateTime), CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'', 1, CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'Eric Conder')
SET IDENTITY_INSERT [dbo].[WorkOrders] OFF
ALTER TABLE [dbo].[Cycles] ADD  CONSTRAINT [DF_Cycles_cyclesDate]  DEFAULT (getdate()-(1)) FOR [cyclesDate]
GO
ALTER TABLE [dbo].[Parts] ADD  CONSTRAINT [DF_Parts_partSize]  DEFAULT ((0)) FOR [partSize]
GO
ALTER TABLE [dbo].[WorkOrderTasks] ADD  CONSTRAINT [DF_WorkOrderTasks_taskComplete]  DEFAULT ((0)) FOR [taskComplete]
GO
ALTER TABLE [dbo].[Cycles]  WITH CHECK ADD  CONSTRAINT [FK_Cycles_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cycles] CHECK CONSTRAINT [FK_Cycles_Equipment]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_EmployeeAccessLevels] FOREIGN KEY([levelId])
REFERENCES [dbo].[EmployeeAccessLevels] ([levelId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_EmployeeAccessLevels]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Facilities]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_States]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentModels] FOREIGN KEY([modelId])
REFERENCES [dbo].[EquipmentModels] ([modelId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentModels]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentTypes] FOREIGN KEY([equipTypeId])
REFERENCES [dbo].[EquipmentTypes] ([typeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentTypes]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Locations] FOREIGN KEY([locId])
REFERENCES [dbo].[Locations] ([locId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Locations]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Manufacturers] FOREIGN KEY([manId])
REFERENCES [dbo].[Manufacturers] ([manId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Manufacturers]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Vendors] FOREIGN KEY([vendorId])
REFERENCES [dbo].[Vendors] ([venId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Vendors]
GO
ALTER TABLE [dbo].[EquipmentDocs]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentDocs_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipmentDocs] CHECK CONSTRAINT [FK_EquipmentDocs_Equipment]
GO
ALTER TABLE [dbo].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Facilities] CHECK CONSTRAINT [FK_Facilities_States]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_InventoryLocations] FOREIGN KEY([invLocId])
REFERENCES [dbo].[InventoryLocations] ([invLocId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_InventoryLocations]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Parts] FOREIGN KEY([partId])
REFERENCES [dbo].[Parts] ([partId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Parts]
GO
ALTER TABLE [dbo].[InventoryLocations]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLocations_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryLocations] CHECK CONSTRAINT [FK_InventoryLocations_Facilities]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Facilities]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_States]
GO
ALTER TABLE [dbo].[Manufacturers]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturers_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Manufacturers] CHECK CONSTRAINT [FK_Manufacturers_States]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Manufacturers] FOREIGN KEY([manId])
REFERENCES [dbo].[Manufacturers] ([manId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Manufacturers]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Units] FOREIGN KEY([unitId])
REFERENCES [dbo].[Units] ([unitId])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Units]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Vendors] FOREIGN KEY([venId])
REFERENCES [dbo].[Vendors] ([venId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Vendors]
GO
ALTER TABLE [dbo].[Runtimes]  WITH CHECK ADD  CONSTRAINT [FK_Runtimes_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Runtimes] CHECK CONSTRAINT [FK_Runtimes_Equipment]
GO
ALTER TABLE [dbo].[TaskParts]  WITH CHECK ADD  CONSTRAINT [FK_TaskParts_Parts] FOREIGN KEY([partId])
REFERENCES [dbo].[Parts] ([partId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaskParts] CHECK CONSTRAINT [FK_TaskParts_Parts]
GO
ALTER TABLE [dbo].[TaskParts]  WITH CHECK ADD  CONSTRAINT [FK_TaskParts_Tasks] FOREIGN KEY([taskId])
REFERENCES [dbo].[Tasks] ([taskId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaskParts] CHECK CONSTRAINT [FK_TaskParts_Tasks]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_InventoryLocations] FOREIGN KEY([invLocId])
REFERENCES [dbo].[InventoryLocations] ([invLocId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_InventoryLocations]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Departments]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Employees] FOREIGN KEY([empId])
REFERENCES [dbo].[Employees] ([empId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Employees]
GO
ALTER TABLE [dbo].[VendorContacts]  WITH CHECK ADD  CONSTRAINT [FK_VendorContacts_Vendors] FOREIGN KEY([venId])
REFERENCES [dbo].[Vendors] ([venId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorContacts] CHECK CONSTRAINT [FK_VendorContacts_Vendors]
GO
ALTER TABLE [dbo].[Vendors]  WITH CHECK ADD  CONSTRAINT [FK_Vendors_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Vendors] CHECK CONSTRAINT [FK_Vendors_States]
GO
ALTER TABLE [dbo].[WorkOrderRequests]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderRequests_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkOrderRequests] CHECK CONSTRAINT [FK_WorkOrderRequests_Departments]
GO
ALTER TABLE [dbo].[WorkOrderRequests]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderRequests_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkOrderRequests] CHECK CONSTRAINT [FK_WorkOrderRequests_Equipment]
GO
ALTER TABLE [dbo].[WorkOrderRequests]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderRequests_Priorities] FOREIGN KEY([priorityId])
REFERENCES [dbo].[Priorities] ([priorityId])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[WorkOrderRequests] CHECK CONSTRAINT [FK_WorkOrderRequests_Priorities]
GO
ALTER TABLE [dbo].[WorkOrderRequests]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderRequests_TimeIntervals] FOREIGN KEY([intId])
REFERENCES [dbo].[TimeIntervals] ([intId])
GO
ALTER TABLE [dbo].[WorkOrderRequests] CHECK CONSTRAINT [FK_WorkOrderRequests_TimeIntervals]
GO
ALTER TABLE [dbo].[WorkOrderTasks]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderTasks_EquipmentModels] FOREIGN KEY([modelId])
REFERENCES [dbo].[EquipmentModels] ([modelId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkOrderTasks] CHECK CONSTRAINT [FK_WorkOrderTasks_EquipmentModels]
GO
ALTER TABLE [dbo].[WorkOrderTasks]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderTasks_Tasks] FOREIGN KEY([taskId])
REFERENCES [dbo].[Tasks] ([taskId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkOrderTasks] CHECK CONSTRAINT [FK_WorkOrderTasks_Tasks]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time in hours' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'taskEstDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[8] 4[3] 2[65] 3) )"
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
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 215
               Left = 716
               Bottom = 306
               Right = 867
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 172
               Left = 512
               Bottom = 370
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 386
               Left = 330
               Bottom = 494
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 14
               Left = 14
               Bottom = 268
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 116
               Left = 262
               Bottom = 285
               Right = 441
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Priorities"
            Begin Extent = 
               Top = 507
               Left = 326
               Bottom = 585
               Right = 493
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 297
               Left = 322
               Bottom = 375
               Right = 489
            End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "wo"
            Begin Extent = 
               Top = 12
               Left = 297
               Bottom = 90
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 6
               Left = 486
               Bottom = 99
               Right = 653
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cyc"
            Begin Extent = 
               Top = 6
               Left = 691
               Bottom = 99
               Right = 858
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
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1995
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2145
         Alias = 960
         Table = 1695
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[2] 2[31] 3) )"
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
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "WorkOrders"
            Begin Extent = 
               Top = 96
               Left = 41
               Bottom = 296
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 5
               Left = 738
               Bottom = 178
               Right = 889
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 301
               Left = 507
               Bottom = 414
               Right = 658
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 29
               Left = 263
               Bottom = 267
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 32
               Left = 496
               Bottom = 293
               Right = 675
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EquipmentTypes"
            Begin Extent = 
               Top = 182
               Left = 740
               Bottom = 263
               Right = 891
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EquipmentModels"
            Begin Extent = 
               Top = 502
               Left = 740
               Bottom = 590
               Right = 891
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 22
               Left = 940
               Bottom = 211
               Right = 1091
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Manufacturers"
            Begin Extent = 
               Top = 278
               Left = 739
               Bottom = 386
               Right = 890
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Vendors"
            Begin Extent = 
               Top = 389
               Left = 741
               Bottom = 497
               Right = 892
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Priorities"
            Begin Extent = 
               Top = 345
               Left = 297
               Bottom = 423
               Right = 448
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
      Begin ColumnWidths = 55
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1995
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 6030
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2595
         Alias = 1380
         Table = 2940
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'
GO
USE [master]
GO
ALTER DATABASE [MRMaintenance] SET  READ_WRITE 
GO
