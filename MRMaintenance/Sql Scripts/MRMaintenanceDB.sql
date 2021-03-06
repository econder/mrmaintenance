USE [MRMaintenance]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'taskEstDuration'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipment', @level2type=N'COLUMN',@level2name=N'hmiCyclesCont'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipment', @level2type=N'COLUMN',@level2name=N'hmiRuntimeCont'

GO
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [FK_WorkOrderTasks_Tasks]
GO
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [FK_WorkOrderTasks_EquipmentModels]
GO
ALTER TABLE [dbo].[WorkOrders] DROP CONSTRAINT [FK_WorkOrders_WorkOrders]
GO
ALTER TABLE [dbo].[WorkOrderRequests] DROP CONSTRAINT [FK_WorkOrderRequests_WorkOrderRequests]
GO
ALTER TABLE [dbo].[WorkOrderRequests] DROP CONSTRAINT [FK_WorkOrderRequests_TimeIntervals]
GO
ALTER TABLE [dbo].[WorkOrderRequests] DROP CONSTRAINT [FK_WorkOrderRequests_Priorities]
GO
ALTER TABLE [dbo].[WorkOrderRequests] DROP CONSTRAINT [FK_WorkOrderRequests_Equipment]
GO
ALTER TABLE [dbo].[WorkOrderRequests] DROP CONSTRAINT [FK_WorkOrderRequests_Departments]
GO
ALTER TABLE [dbo].[Vendors] DROP CONSTRAINT [FK_Vendors_States]
GO
ALTER TABLE [dbo].[VendorContacts] DROP CONSTRAINT [FK_VendorContacts_Vendors]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Employees]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Departments]
GO
ALTER TABLE [dbo].[Tools] DROP CONSTRAINT [FK_Tools_InventoryLocations]
GO
ALTER TABLE [dbo].[TaskParts] DROP CONSTRAINT [FK_TaskParts_Tasks]
GO
ALTER TABLE [dbo].[TaskParts] DROP CONSTRAINT [FK_TaskParts_Parts]
GO
ALTER TABLE [dbo].[Runtimes] DROP CONSTRAINT [FK_Runtimes_Equipment]
GO
ALTER TABLE [dbo].[Parts] DROP CONSTRAINT [FK_Parts_Vendors]
GO
ALTER TABLE [dbo].[Parts] DROP CONSTRAINT [FK_Parts_Units]
GO
ALTER TABLE [dbo].[Parts] DROP CONSTRAINT [FK_Parts_Manufacturers]
GO
ALTER TABLE [dbo].[Manufacturers] DROP CONSTRAINT [FK_Manufacturers_States]
GO
ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_States]
GO
ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_Facilities]
GO
ALTER TABLE [dbo].[InventoryLocations] DROP CONSTRAINT [FK_InventoryLocations_Facilities]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_Parts]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_InventoryLocations]
GO
ALTER TABLE [dbo].[Facilities] DROP CONSTRAINT [FK_Facilities_States]
GO
ALTER TABLE [dbo].[EquipmentDocs] DROP CONSTRAINT [FK_EquipmentDocs_Equipment]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Vendors]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Manufacturers]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Locations]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_EquipmentTypes]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_EquipmentModels]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_States]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Facilities]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_EmployeeAccessLevels]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Cycles] DROP CONSTRAINT [FK_Cycles_Equipment]
GO
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [DF_WorkOrderTasks_taskComplete]
GO
ALTER TABLE [dbo].[Runtimes] DROP CONSTRAINT [DF_Runtimes_runtimeDate]
GO
ALTER TABLE [dbo].[Cycles] DROP CONSTRAINT [DF_Cycles_cyclesDate]
GO
/****** Object:  View [dbo].[v_WorkOrders]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP VIEW [dbo].[v_WorkOrders]
GO
/****** Object:  View [dbo].[v_WorkOrderRequests]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP VIEW [dbo].[v_WorkOrderRequests]
GO
/****** Object:  Table [dbo].[WorkOrderTasks]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[WorkOrderTasks]
GO
/****** Object:  Table [dbo].[WorkOrders]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[WorkOrders]
GO
/****** Object:  Table [dbo].[WorkOrderRequests]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[WorkOrderRequests]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Vendors]
GO
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[VendorContacts]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Units]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Tools]
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[TimeIntervals]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Tasks]
GO
/****** Object:  Table [dbo].[TaskParts]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[TaskParts]
GO
/****** Object:  Table [dbo].[States]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[States]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Runtimes]
GO
/****** Object:  Table [dbo].[Priorities]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Priorities]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Parts]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Manufacturers]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Locations]
GO
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[InventoryLocations]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Facilities]
GO
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[EquipmentTypes]
GO
/****** Object:  Table [dbo].[EquipmentModels]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[EquipmentModels]
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[EquipmentDocs]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Equipment]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[EmployeeAccessLevels]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP TABLE [dbo].[Cycles]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDue]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderRequestsDue]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderMarkComplete]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderMarkComplete]
GO
/****** Object:  StoredProcedure [dbo].[spLogRuntime]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP PROCEDURE [dbo].[spLogRuntime]
GO
/****** Object:  StoredProcedure [dbo].[spLogCycles]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP PROCEDURE [dbo].[spLogCycles]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrderRequest]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP PROCEDURE [dbo].[spCreateWorkOrderRequest]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrder]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP PROCEDURE [dbo].[spCreateWorkOrder]
GO
/****** Object:  User [mrsystems]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP USER [mrsystems]
GO
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP APPLICATION ROLE  [MRMaintenanceApp]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [aaAdmin]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [aaAdmin]
GO
/****** Object:  Login [aadbo]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [aadbo]
GO
/****** Object:  Login [aaPower]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [aaPower]
GO
/****** Object:  Login [aaUser]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [aaUser]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [ECVM-WW2014\aaAdministrators]
GO
/****** Object:  Login [ECVM-WW2014\aaPowerUsers]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [ECVM-WW2014\aaPowerUsers]
GO
/****** Object:  Login [ECVM-WW2014\aaUsers]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [ECVM-WW2014\aaUsers]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [ECVM-WW2014\ASBService]
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [ECVM-WW2014\mrsystems]
GO
/****** Object:  Login [mrsystems]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [mrsystems]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [NT SERVICE\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [NT SERVICE\ReportServer]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [wwAdmin]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [wwAdmin]
GO
/****** Object:  Login [wwdbo]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [wwdbo]
GO
/****** Object:  Login [wwPower]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [wwPower]
GO
/****** Object:  Login [wwUser]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP LOGIN [wwUser]
GO
/****** Object:  Database [MRMaintenance]    Script Date: 3/6/2015 3:40:08 PM ******/
DROP DATABASE [MRMaintenance]
GO
/****** Object:  Database [MRMaintenance]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Login [wwUser]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'Xjf3y/iz96JvOcdZYsVXZ2Ti+IDVZ3+yMRUFn8XT2VU=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'ue3UDVRtE6LDvyGq2PXWHKzO4zD8+cppRbmR2VCairo=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'4c1rdw68hgkxm44D//G5x6J1b3D2FN5PwdbR7gsm07Y=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'0KK56cU30tQG58EvpPOHRb+mqeKC7Aj7cvYB5PpoP+Y=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [NT SERVICE\ReportServer] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'39NbSdKROTtuRMjXHtvLfwq9PimuHKN5Sd1XT2KI5MM=', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [ECVM-WW2014\mrsystems] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [ECVM-WW2014\ASBService] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaUsers]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [ECVM-WW2014\aaUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaPowerUsers]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [ECVM-WW2014\aaPowerUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [ECVM-WW2014\aaAdministrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'96tbmgvcLWrk2eS8BPV6+BnbaIm2/JqcF7g4im2L+1Y=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'eN+nUO8nboE4RA9wMME+Nk4VR0i3k1eiV0IctQmP/P8=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'/SJQNv77AU1occehyZCZ07qVEJUVrVjKk5HlRM7OTY0=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'y8i/HW35Vb44l3IZbdmLOcAi1FSydOeL8H9GYxBoei4=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'R5V/5hVXLmlD/ASXgIM3h6AEZpGJfhusDMChJmqkzRU=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'bpqHAaBfk04Gpv6LaG2PUn8ehsKq0BA//Pu9xJEx+qA=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
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
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  User [mrsystems]    Script Date: 3/6/2015 3:40:08 PM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrder]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrderRequest]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spLogCycles]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spLogRuntime]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spWorkOrderMarkComplete]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDue]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Cycles]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Departments]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Equipment]    Script Date: 3/6/2015 3:40:08 PM ******/
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
	[hmiRuntimeCont] [bit] NULL CONSTRAINT [DF_Equipment_hmiRuntimeType]  DEFAULT ((0)),
	[hmiCyclesTagname] [nvarchar](255) NULL,
	[hmiCyclesCont] [bit] NULL CONSTRAINT [DF_Equipment_hmiCyclesType]  DEFAULT ((0)),
	[equipMccLoc] [nvarchar](255) NULL,
	[equipMccPanel] [nvarchar](255) NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[EquipmentModels]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Facilities]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Inventory]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Locations]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Parts]    Script Date: 3/6/2015 3:40:08 PM ******/
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
	[partSize] [float] NOT NULL CONSTRAINT [DF_Parts_partSize]  DEFAULT ((0)),
	[unitId] [bigint] NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[partId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Priorities]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Runtimes]    Script Date: 3/6/2015 3:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Runtimes](
	[runtimeId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[runtimeDate] [datetime] NULL,
	[runtime] [float] NOT NULL,
 CONSTRAINT [PK_Runtimes] PRIMARY KEY CLUSTERED 
(
	[runtimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[States]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[TaskParts]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Tasks]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Tools]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Units]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[Vendors]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[WorkOrderRequests]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  Table [dbo].[WorkOrders]    Script Date: 3/6/2015 3:40:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrders](
	[woID] [bigint] IDENTITY(1,1) NOT NULL,
	[reqId] [bigint] NOT NULL,
	[woDateCreated] [datetime] NOT NULL CONSTRAINT [DF_WorkOrders_woDateCreated]  DEFAULT (getdate()),
	[woDateDue] [datetime] NULL,
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
/****** Object:  Table [dbo].[WorkOrderTasks]    Script Date: 3/6/2015 3:40:08 PM ******/
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
/****** Object:  View [dbo].[v_WorkOrderRequests]    Script Date: 3/6/2015 3:40:08 PM ******/
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
                      dbo.WorkOrderRequests.priorityId, dbo.Priorities.priorityName, CASE WHEN dbo.Equipment.hmiRuntimeCont = 0 THEN SUM(rt.runtime) 
                      WHEN dbo.Equipment.hmiRuntimeCont = 1 THEN MAX(rt.runtime) - MIN(rt.runtime) END AS runtime, 
                      CASE WHEN dbo.Equipment.hmiCyclesCont = 0 THEN SUM(cyc.cycles) WHEN dbo.Equipment.hmiCyclesCont = 1 THEN SUM(cyc.cycles) 
                      WHEN dbo.Equipment.hmiCyclesCont = 2 THEN MAX(cyc.cycles) - MIN(cyc.cycles) END AS cycles, 
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
                      dbo.WorkOrderRequests.intId, dbo.Locations.facId, dbo.Equipment.hmiRuntimeCont, dbo.Equipment.hmiCyclesCont

GO
/****** Object:  View [dbo].[v_WorkOrders]    Script Date: 3/6/2015 3:40:08 PM ******/
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
                       dbo.Facilities.lat AS facLat, dbo.Facilities.city AS facCity, dbo.States.abbr AS facState, dbo.Facilities.zip AS facZip, dbo.Locations.addr1 AS locAddr1, 
                      dbo.Locations.addr2 AS locAddr2, dbo.Locations.city AS locCity, dbo.Locations.lat AS locLat, dbo.Locations.long AS locLong, dbo.Manufacturers.name AS manName, 
                      dbo.Manufacturers.web AS manWeb, dbo.Manufacturers.phone1 AS manPhone1, dbo.Manufacturers.phone2 AS manPhone2, dbo.Manufacturers.fax AS manFax, 
                      dbo.Vendors.name AS venName, dbo.Priorities.priorityName
FROM         dbo.Vendors INNER JOIN
                      dbo.Facilities INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId INNER JOIN
                      dbo.EquipmentTypes ON dbo.Equipment.equipTypeId = dbo.EquipmentTypes.typeId INNER JOIN
                      dbo.Locations ON dbo.Equipment.locId = dbo.Locations.locId ON dbo.Facilities.facId = dbo.Locations.facId INNER JOIN
                      dbo.Manufacturers ON dbo.Equipment.manId = dbo.Manufacturers.manId INNER JOIN
                      dbo.WorkOrders ON dbo.WorkOrderRequests.reqId = dbo.WorkOrders.reqId ON dbo.Vendors.venId = dbo.Equipment.vendorId INNER JOIN
                      dbo.Priorities ON dbo.WorkOrderRequests.priorityId = dbo.Priorities.priorityId INNER JOIN
                      dbo.States ON dbo.Facilities.stateId = dbo.States.stateId LEFT OUTER JOIN
                      dbo.EquipmentModels ON dbo.Equipment.modelId = dbo.EquipmentModels.modelId
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([deptId], [name]) VALUES (2, N'Maintenance')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (13, 42, 3, 31, 9, NULL, N'', N'Alum Feed Pump 1', N'prominent sigma diaphragm metering pump', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (15, 42, 3, 31, 9, NULL, N'', N'Alum Feed Pump 2', N'prominent sigma diaphragm metering pump', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (16, 44, 4, 43, 9, NULL, N'', N'Alum tank', N'XLHDE Alum storage tank
polyprocessing 8100 gallon storage tank', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (17, 42, 3, 24, 10, NULL, N'', N'Channel blower 1', N'Gardner Denver positive displacement blower', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (18, 42, 3, 24, 10, NULL, N'', N'Channel blower 2', N'Gardner Denver positive displacement blower', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (19, 27, 5, 36, 9, NULL, N'', N'Clarifier 1', N'Siemens tow bro secondary clarifier', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (20, 28, 5, 36, 9, NULL, N'', N'Clarifier 2', N'Siemens tow bro secondary clarifier', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (21, 33, 6, 27, 9, NULL, N'', N'Conveyor', N'24" Belt conveyor incline/ horizontal', N'12018-BC1', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (22, 30, 8, 19, 11, NULL, N'', N'Digester mixer 1', N'Aqua MixAir digester mixer', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (23, 30, 8, 19, 11, NULL, N'', N'Digester mixer 2', N'Aqua MixAir digester mixer', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (25, 43, 10, 28, 9, NULL, N'', N'In-line Grinder 1', N'JWC Environmental 3000 series In-line sewage grinder with 8" flanges and controler', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (26, 24, 8, 38, 12, NULL, N'', N'Mixer  4', N'SPX LIGHTNIN Mixer', N'1000002760604', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (27, 33, 11, 44, 13, NULL, N'', N'Plant generator', N'Caterpillar generator C27  750KW  277/480V  3PH  60HZ  1800RPM', N'DWB03284', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (28, 42, 13, 31, 9, NULL, N'', N'Polymer feed 1', N'Prominent Pro-mix polymer Activation / Feed system', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (29, 22, 14, 23, 9, NULL, N'', N'Plant water recirculation valve', N'3" recirculation valve', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (30, 31, 12, 25, 9, NULL, N'', N'Plant water pump 1', N'6" Goulds vertical tubine pump', N'', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (31, 32, 15, 34, 14, NULL, N'', N'Plant water strainer 1', N'6" model A automatic self cleaning strainer with automatic backwash control', N'9617V', N'', 0, N'', 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (32, 24, 16, 36, 9, NULL, N'', N'Fine air diffuser system', N'fine bubble aeration system ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (38, 24, 8, 38, 12, NULL, N'', N'Mixer  2', N'SPX LIGHTNIN Mixer', N'1000002760602', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (39, 24, 8, 38, 12, NULL, N'', N'Mixer  3', N'SPX LIGHTNIN Mixer', N'1000002760603', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (40, 24, 8, 38, 12, NULL, N'', N'Mixer  1', N'SPX LIGHTNIN Mixer', N'1000002760601', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (41, 24, 8, 38, 12, NULL, N'', N'Mixer  5', N'SPX LIGHTNIN Mixer', N'1000002760605', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (42, 24, 8, 38, 12, NULL, N'', N'Mixer  6', N'SPX LIGHTNIN Mixer', N'1000002760606', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (49, 43, 10, 28, 9, NULL, N'', N'In-line Grinder 2', N'JWC Environmental 3000 series In-line sewage grinder with 8" flanges and controler', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (50, 42, 13, 31, 9, NULL, N'', N'Polymer feed 2', N'Prominent Pro-mix polymer Activation / Feed system', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (51, 31, 12, 25, 9, NULL, N'', N'Plant water pump 2', N'6" Goulds vertical tubine pump', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (52, 32, 15, 34, 14, NULL, N'', N'Plant water strainer 2', N'6" model A automatic self cleaning strainer with automatic backwash control', N'9617V', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (53, 34, 3, 24, 10, NULL, N'', N'Channel blower Influent', N'Gardner Denver positive displacement blower', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (54, 24, 8, 38, 12, NULL, N'', N'Mixer  7', N'SPX LIGHTNIN Mixer', N'1000002760607', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (55, 24, 8, 38, 12, NULL, N'', N'Mixer  8', N'SPX LIGHTNIN Mixer', N'1000002760608', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (56, 24, 8, 38, 12, NULL, N'', N'Mixer  9', N'SPX LIGHTNIN Mixer', N'1000002760609', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (57, 24, 8, 38, 12, NULL, N'', N'Mixer 10', N'SPX LIGHTNIN Mixer', N'1000002760610', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (58, 24, 8, 38, 12, NULL, N'', N'Mixer 11', N'SPX LIGHTNIN Mixer', N'1000002760611', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (59, 24, 8, 38, 12, NULL, N'', N'Mixer 12', N'SPX LIGHTNIN Mixer', N'1000002760612', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (60, 42, 12, 42, 14, NULL, N'', N'RAS pump 1', N'8" Gorman Rupp self priming centrifugal pump ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (61, 42, 12, 42, 14, NULL, N'', N'RAS pump 2', N'8" Gorman Rupp self priming centrifugal pump ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (62, 42, 12, 42, 14, NULL, N'', N'RAS pump SB', N'8" Gorman Rupp self priming centrifugal pump ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (63, 42, 17, 30, 9, NULL, N'', N'Rotary drum thickener 1', N'Hycor Thicktech rotary drum thickener', N'51035302', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (64, 42, 17, 30, 9, NULL, N'', N'Rotary drum thickener 2', N'Hycor Thicktech rotary drum thickener', N'51035302', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (65, 33, 10, 28, 9, NULL, N'', N'Screening washer', N'JWC Environmental screening washer monster', N'N/A', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (66, 39, 8, 19, 11, NULL, N'', N'Sludge holding tank 1 mixer', N'Aqua MixAir sludge holding tank mixer', N'N/A', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (67, 40, 8, 19, 11, NULL, N'', N'Sludge holding tank 2 mixer', N'Aqua MixAir sludge holding tank mixer', N'N/A', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (68, 42, 12, 35, 9, NULL, N'', N'Thicken sludge feed pump 1', N'Seepex series BN 6" x 6" w/ 15hp motor', N'n/a', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (69, 42, 12, 35, 9, NULL, N'', N'Thicken sludge feed pump 2', N'Seepex series BN 6" x 6" w/ 15hp motor', N'n/a', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (70, 43, 12, 35, 9, NULL, N'', N'Thicken sludge tansfer pump 2', N'Seepex series BN 8" x 6" w/ 30hp motor', N'n/a', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (71, 43, 12, 35, 9, NULL, N'', N'Thicken sludge tansfer pump 3', N'Seepex series BN 6" x 6" w/ 15hp motor', N'n/a', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (72, 42, 12, 35, 9, NULL, N'', N'WAS pump 1', N'Seepex series BN 6" x 6" w/ 15hp motor', N'n/a', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (73, 42, 12, 35, 9, NULL, N'', N'WAS pump 2', N'Seepex series BN 6" x 6" w/ 15hp motor', N'n/a', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (74, 33, 18, 30, 9, NULL, N'', N'Fine screen 1', N'Parkson fine screen 6mm', N'20133502', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (75, 33, 18, 30, 9, NULL, N'', N'Fine screen 2', N'Parkson fine screen 6mm', N'20133502', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (76, 33, 19, 37, 10, NULL, N'', N'Grit system', N'PISTA Grit chamber with top mounted turbo pump', N'03-02476-k', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (77, 23, 20, 45, 17, NULL, N'', N'CU-1 & AH-1', N'Condensing unit and Indoor air handler ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (78, 23, 20, 45, 17, NULL, N'', N'CU-2 & AH-2', N'Condensing unit and Indoor air handler ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (79, 23, 20, 45, 17, NULL, N'', N'CU-3A  CU-3B & AH-3', N'Condensing unit and Indoor air handler ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (80, 36, 20, 46, 17, NULL, N'', N'CU-4 & AH-4', N'Ductless split system heat pump ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (81, 36, 20, 45, 17, NULL, N'', N'CU-5 & AH-5', N'Condensing unit and Indoor air handler ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (82, 29, 20, 45, 17, NULL, N'', N'CU-6 & AH-6', N'Condensing unit and Indoor air handler ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (83, 24, 21, 32, 9, NULL, N'', N'Aeration basin gates', N'NO.         SIZE           TYPE
4              4X3-6         slide
12            10X6          slide
2              5X2-6         slide
2              9X4            weir
9              6x6-3          slide', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (84, 45, 22, 33, 9, NULL, N'', N'Actuators', N'Rotork Actuators', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (85, 45, 14, 23, 9, NULL, N'', N'Air release and vacuum valves', N'NO.        SIZE              TYPE
7             2"                  combo
2             1"                  vertical turbine', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (86, 38, 14, 23, 9, NULL, N'', N'Ball check valves ', N'NO.         SIZE
2              4" ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (87, 31, 23, 27, 9, NULL, N'', N'Cascade aerator 1', N'low profile cascade aerator ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (88, 42, 24, 47, 18, NULL, N'', N'CCF 1', N'Ceiling exhaust fan in restroom sludge processing building ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (89, 23, 24, 47, 18, NULL, N'', N'CCF 2-9', N'Ceiling exhaust fan in restroom sludge processing building ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (90, 46, 25, 48, 19, NULL, N'', N'Wall heaters', N'AFA 3320 wall heater', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (91, 33, 21, 32, 9, NULL, N'', N'Headworks gates', N'NO.       SIZE           TYPE
6            4-6X5-6       slide
4            3X5             slide
1            3X3-9          slide
1            2X4-6          stop', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (92, 42, 26, 49, 18, NULL, N'', N'Wall louvers 16-22', N'Ruskin wall louvers', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (93, 23, 26, 49, 18, NULL, N'', N'Wall louvers 24-27', N'Ruskin wall louvers', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (94, 37, 26, 49, 18, NULL, N'', N'Wall louvers 28', N'Ruskin wall louvers', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (95, 42, 26, 49, 18, NULL, N'', N'Wall louvers 5-15', N'Ruskin wall louvers', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (96, 27, 27, 29, 9, NULL, N'', N'Launder covers clarifier 1', N'fiber glass launder cover system', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (97, 28, 27, 29, 9, NULL, N'', N'Launder covers clarifier 2', N'fiber glass launder cover system', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (98, 23, 20, 47, 18, NULL, N'', N'Lab hood ', N'Greenheck vector H laboratory exhaust system', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (99, 23, 20, 47, 18, NULL, N'', N'Kitchen hood', N'Greenheck canopy type kitchen hood ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (100, 24, 12, 36, 9, NULL, N'', N'MLR pump 1', N'23 hp ABS submersible pump', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (101, 24, 12, 36, 9, NULL, N'', N'MLR pump 2', N'23 hp ABS submersible pump', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (102, 42, 20, 47, 18, NULL, N'', N'MUA 1', N'Greenheck make up air unit ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (103, 43, 20, 47, 18, NULL, N'', N'MUA 2', N'Greenheck make up air unit ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (104, 34, 20, 45, 17, NULL, N'', N'PAC 1', N'Packaged air conditioner', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (105, 47, 20, 45, 17, NULL, N'', N'PAC 2', N'Packaged air conditioner', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (106, 48, 20, 45, 17, NULL, N'', N'PAC 3', N'Packaged air conditioner', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (107, 49, 20, 45, 17, NULL, N'', N'PAC 4', N'Packaged air conditioner', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (108, 50, 14, 50, 10, NULL, N'', N'Mud valves A train', N'8" mud valves 3 in each zone of A train', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (109, 51, 14, 50, 10, NULL, N'', N'Mud valves B train', N'8" mud valves 3 in each zone of A train', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (110, 45, 28, 41, 20, NULL, N'', N'Overhead doors', N'overhead coiling doors 
2 in admin
4 in barn 
3 in sludge process building', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (111, 42, 24, 47, 18, NULL, N'', N'SWEF 1-6', N'Greenheck sidewall centrifugal exhaust fan', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (112, 37, 24, 47, 18, NULL, N'', N'SWEF 13', N'Greenheck sidewall centrifugal exhaust fan', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (113, 43, 24, 47, 18, NULL, N'', N'SWEF 7-9', N'Greenheck sidewall centrifugal exhaust fan', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (114, 45, 25, 48, 19, NULL, N'', N'UH 5-10', N'5500 stainless steel washdown heater units', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (115, 45, 14, 23, 9, NULL, N'', N'Swing check valves ', N'swing check valves
6 - 6"
5 - 8"
3 - 12"', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (116, 41, 14, 20, 10, NULL, N'', N'Telescoping valves', N'2- 10" watt telescoping valves ', N'', NULL, 0, NULL, 0, N'', N'')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiRuntimeCont], [hmiCyclesTagname], [hmiCyclesCont], [equipMccLoc], [equipMccPanel]) VALUES (117, 31, 14, 32, 9, NULL, N'', N'UV gate valves', N'2 - 5-8X3-6 wier gates

2 - 4-8X4-9 slide gates', N'', NULL, 0, NULL, 0, N'', N'')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
SET IDENTITY_INSERT [dbo].[EquipmentModels] ON 

INSERT [dbo].[EquipmentModels] ([modelId], [modelName]) VALUES (3, N'N/A')
SET IDENTITY_INSERT [dbo].[EquipmentModels] OFF
SET IDENTITY_INSERT [dbo].[EquipmentTypes] ON 

INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (3, N'PD Blower')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (4, N'storage tank')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (5, N'clarifier')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (6, N'conveyor')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (8, N'mixer')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (9, N'turbo blower')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (10, N'grinder')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (11, N'generator')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (12, N'pump')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (13, N'feed system')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (14, N'valve')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (15, N'strainer')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (16, N'diffusers')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (17, N'thickener')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (18, N'screen')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (19, N'grit system')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (20, N'hvac')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (21, N'gates')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (22, N'actuator')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (23, N'aerator')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (24, N'exhaust fan')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (25, N'heater')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (26, N'louvers ')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (27, N'cover')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (28, N'overhead coiling doors')
INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (29, N'overhead doors')
SET IDENTITY_INSERT [dbo].[EquipmentTypes] OFF
SET IDENTITY_INSERT [dbo].[Facilities] ON 

INSERT [dbo].[Facilities] ([facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long], [phone1], [phone2], [fax]) VALUES (4, N'Camden WWTP', N'175 Bramblewood Plantation Rd', N'', N'Camden', 40, N'29020', 0, 0, N'803-425-6053', N'', N'')
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
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (45, 4, N'Various location ', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (46, 4, N'Water heater room admin and restroom sludge processing building', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (47, 4, N'UV electrical room', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (48, 4, N'Sludge processing building electrical room', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (49, 4, N'Sludge transfer pump station electrical room', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (50, 4, N'Aeration basin A train', N'', N'', N'', 51, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (51, 4, N'Aeration basin B train', N'', N'', N'', 51, N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (8, N'zJunk', N'', N'', N'', 40, N'', N'', N'', N'', N'')
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
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (44, N'Caterpillar', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (45, N'Ingersoll Rand', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (46, N'Panasonic Corp of North America', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (47, N'Greenheck ', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (48, N'Markel', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (49, N'Ruskin', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (50, N'Trumbull', N'', N'', N'', 51, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
SET IDENTITY_INSERT [dbo].[Parts] ON 

INSERT [dbo].[Parts] ([partId], [manId], [venId], [partName], [partDescr], [partNumber], [partSize], [unitId]) VALUES (5, 24, 10, N'Air Filter', N'', N'', 500, 1)
SET IDENTITY_INSERT [dbo].[Parts] OFF
SET IDENTITY_INSERT [dbo].[Priorities] ON 

INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (1, N'Low')
INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (2, N'Medium')
INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (3, N'High')
INSERT [dbo].[Priorities] ([priorityId], [priorityName]) VALUES (4, N'Emergency')
SET IDENTITY_INSERT [dbo].[Priorities] OFF
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

INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (9, N'Heyward Services Inc', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (10, N'Carotek', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (11, N'Crocker & Associates', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (12, N'APG - Neuros', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (13, N'Blanchard Power Systems', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (14, N'Tencarva Machinery Company', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (16, N'N/A', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (17, N'Trane', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (18, N'Hoffman & Hoffman', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (19, N'TPI Corp', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (20, N'Custom Overhead Doors LLC', N'', N'', N'', 51, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Vendors] OFF
SET IDENTITY_INSERT [dbo].[WorkOrderRequests] ON 

INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (57, N'3 week check', N'check oil level both sides of blower 
oil level should be in middle of sight glass', 17, 2, CAST(N'2014-10-17 08:28:19.160' AS DateTime), CAST(N'2014-10-02 08:25:23.000' AS DateTime), 3, 5, CAST(N'2015-03-02 14:56:21.953' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (58, N'6 week check ', N'check vibration
check lube sample
inspect PRV
inspect expansion joint 
', 17, 2, CAST(N'2014-10-17 08:32:10.577' AS DateTime), CAST(N'2014-09-08 08:27:37.000' AS DateTime), 6, 5, CAST(N'2015-01-26 15:01:12.940' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (59, N'36 week check', N'change oil 
check air filter
inspect check valve', 17, 2, CAST(N'2014-10-17 08:38:26.167' AS DateTime), CAST(N'2014-05-19 08:35:39.000' AS DateTime), 9, 6, CAST(N'2015-03-02 14:56:43.607' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (60, N'52 week check ', N'change oil flush sumps 
check vents 
inspect silencer 
inspect PRV', 17, 2, CAST(N'2014-10-17 08:41:38.560' AS DateTime), CAST(N'2014-05-19 08:38:10.000' AS DateTime), 1, 8, CAST(N'2014-05-19 08:38:10.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (61, N'Purge and flex', N'open purge valves
close off air valve for at least one min.
open air valve to restore operating air flow rate
close purge valves
repeat procedure at least three times', 32, 2, CAST(N'2014-10-17 08:52:24.977' AS DateTime), CAST(N'2014-10-06 08:46:12.000' AS DateTime), 1, 5, CAST(N'2015-03-27 08:22:04.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (62, N'Annual inspection', N'draw down tank check O&M for procedure
remove settled solids from tank 
clean diffusers follow procedure in O&M
inspect hardware, fasteners, and pipe joints
do not expose diffusers to direct sunlight for more than two weeks ', 32, 2, CAST(N'2014-10-17 08:58:40.143' AS DateTime), CAST(N'2014-02-25 08:53:27.000' AS DateTime), 1, 8, CAST(N'2014-02-25 08:53:27.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (70, N'3 week check', N'check oil level both sides of blower 
oil level should be in middle of sight glass', 18, 2, CAST(N'2014-10-17 10:19:48.760' AS DateTime), CAST(N'2014-04-23 08:25:23.000' AS DateTime), 3, 5, CAST(N'2015-03-02 14:56:33.187' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (100, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 40, 2, CAST(N'2014-10-17 14:25:20.367' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (101, N'Monthly gear drive ', N'check oil level adjust as needed ', 40, 2, CAST(N'2014-10-17 14:27:52.933' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:25.697' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (102, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 40, 2, CAST(N'2014-10-17 14:35:57.643' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (103, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 38, 2, CAST(N'2014-10-17 14:41:24.167' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (104, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 39, 2, CAST(N'2014-10-17 14:41:29.690' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (105, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 26, 2, CAST(N'2014-10-17 14:41:36.443' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (106, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 41, 2, CAST(N'2014-10-17 14:41:41.140' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (107, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 42, 2, CAST(N'2014-10-17 14:41:45.990' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (108, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 55, 2, CAST(N'2014-10-17 14:41:51.077' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (109, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 54, 2, CAST(N'2014-10-17 14:41:55.773' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (110, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 56, 2, CAST(N'2014-10-17 14:42:00.687' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (111, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 57, 2, CAST(N'2014-10-17 14:42:06.100' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (112, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 58, 2, CAST(N'2014-10-17 14:42:11.060' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (113, N'motor', N'lube motor first remove relief plug, pump in clean grease until it appears at the relief plug opening, run motor with plug removed for 2 hours, stop motor wipe away excess grease at relief plug opening and shaft reinstall plug, check name plate or O&M for gease type ', 59, 2, CAST(N'2014-10-17 14:42:16.490' AS DateTime), CAST(N'2014-03-25 14:15:07.000' AS DateTime), 18, 6, CAST(N'2014-03-25 14:15:07.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (114, N'Monthly gear drive ', N'check oil level adjust as needed ', 38, 2, CAST(N'2014-10-17 14:42:45.833' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:27.880' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (115, N'Monthly gear drive ', N'check oil level adjust as needed ', 39, 2, CAST(N'2014-10-17 14:42:52.830' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:29.873' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (116, N'Monthly gear drive ', N'check oil level adjust as needed ', 26, 2, CAST(N'2014-10-17 14:43:01.150' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:31.780' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (117, N'Monthly gear drive ', N'check oil level adjust as needed ', 41, 2, CAST(N'2014-10-17 14:43:09.157' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:33.730' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (118, N'Monthly gear drive ', N'check oil level adjust as needed ', 42, 2, CAST(N'2014-10-17 14:43:17.627' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:35.617' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (119, N'Monthly gear drive ', N'check oil level adjust as needed ', 54, 2, CAST(N'2014-10-17 14:43:24.660' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:37.397' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (120, N'Monthly gear drive ', N'check oil level adjust as needed ', 55, 2, CAST(N'2014-10-17 14:43:31.713' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:39.640' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (121, N'Monthly gear drive ', N'check oil level adjust as needed ', 56, 2, CAST(N'2014-10-17 14:43:39.873' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:41.530' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (122, N'Monthly gear drive ', N'check oil level adjust as needed ', 57, 2, CAST(N'2014-10-17 14:43:48.060' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:45.740' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (123, N'Monthly gear drive ', N'check oil level adjust as needed ', 58, 2, CAST(N'2014-10-17 14:43:55.347' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:47.627' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (124, N'Monthly gear drive ', N'check oil level adjust as needed ', 59, 2, CAST(N'2014-10-17 14:44:03.167' AS DateTime), CAST(N'2014-10-02 14:25:13.000' AS DateTime), 1, 6, CAST(N'2015-03-02 13:36:49.330' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (125, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 38, 2, CAST(N'2014-10-17 14:44:35.953' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (126, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 39, 2, CAST(N'2014-10-17 14:44:45.173' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (127, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 26, 2, CAST(N'2014-10-17 14:44:52.147' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (128, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 41, 2, CAST(N'2014-10-17 14:45:02.160' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (129, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 42, 2, CAST(N'2014-10-17 14:45:09.697' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (130, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 54, 2, CAST(N'2014-10-17 14:45:17.840' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (131, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 55, 2, CAST(N'2014-10-17 14:45:28.620' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (132, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 56, 2, CAST(N'2014-10-17 14:45:36.560' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (133, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 57, 2, CAST(N'2014-10-17 14:45:43.550' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (134, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 58, 2, CAST(N'2014-10-17 14:45:54.503' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (135, N'Annually gear drive', N'change oil, drain oil from gear drive as fully as possible, refill mixer with new oil, be very careful with oil level it needs to be exact', 59, 2, CAST(N'2014-10-17 14:46:01.537' AS DateTime), CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:27:58.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (136, N'Weekly checks', N'do a walk around inspection, check coolant level, oil level, both air filters, battery electrolyte level in all  batterys and jacket water heater temp. should be around 110 to 140', 27, 2, CAST(N'2014-10-17 14:51:22.757' AS DateTime), CAST(N'2014-10-14 14:46:33.000' AS DateTime), 1, 5, CAST(N'2015-03-27 08:21:19.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (137, N'Diaphragm inspection ', N'flush pump, set stroke length to zero with pump running, switch pump off, release six screws holding liquid end, remove liquid end with screws, release diaphragm by jolting counter clockwise unscrew, inspect diaphragm replace if needed, screw on diaphragm until it is firmly seated on push rod reinstall liquid end, check flow direction arrows marked on valve set stroke to 100% switch pump on tighten screws crosswise to 7.5 Nm check pump for leaks at max pressure ', 13, 2, CAST(N'2014-10-17 15:10:47.417' AS DateTime), CAST(N'2014-10-17 14:52:45.410' AS DateTime), 3, 6, CAST(N'2014-10-17 14:52:45.410' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (138, N'Dampeners replacement ', N'replace elastomeric bladder after every two diaphragm replacement, replace nuts and bolts with equal grade and strength, inspect dampener and fasteners for signs of over pressurization, fatigue, stress or corrosion', 13, 2, CAST(N'2014-10-17 15:17:08.243' AS DateTime), CAST(N'2014-10-17 15:10:04.790' AS DateTime), 3, 6, CAST(N'2014-10-17 15:10:04.790' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (139, N'PRV inspection', N'ensure system is not under pressure and lines are flushed with water, unscrew pressure adjustment screw record/ mark set point remove four bolts lift off top, inspect diaphragm and seat replace if necessary, inspect adjustment spring for rusted or corrossion, replace top tighten the four bolts replace adjustment screw set at same position as it was prior', 13, 2, CAST(N'2014-10-17 15:26:53.497' AS DateTime), CAST(N'2014-10-17 15:17:03.607' AS DateTime), 3, 6, CAST(N'2014-10-17 15:17:03.607' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (140, N'Motor inspection and lube ', N'with motor off clean grease fitting remove grease outlet plug, lube with 2.0 teaspoon or .6 in cube of grease, if motor is running add grease slowly until new grease appears at shaft hole or outlet plug reinstall grease outlet plug', 13, 2, CAST(N'2014-10-17 15:31:21.660' AS DateTime), CAST(N'2014-10-17 15:26:34.130' AS DateTime), 1, 8, CAST(N'2014-10-17 15:26:34.130' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (141, N'Pump oil change ', N'change oil every 5000 hours check O&M for type or use mobil 634 takes approximately .6 quarts', 13, 2, CAST(N'2014-10-17 15:34:49.030' AS DateTime), CAST(N'2014-10-17 15:31:03.480' AS DateTime), 3, 6, CAST(N'2014-10-17 15:31:03.480' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (142, N'Diaphragm inspection ', N'flush pump, set stroke length to zero with pump running, switch pump off, release six screws holding liquid end, remove liquid end with screws, release diaphragm by jolting counter clockwise unscrew, inspect diaphragm replace if needed, screw on diaphragm until it is firmly seated on push rod reinstall liquid end, check flow direction arrows marked on valve set stroke to 100% switch pump on tighten screws crosswise to 7.5 Nm check pump for leaks at max pressure ', 15, 2, CAST(N'2014-10-17 15:35:16.130' AS DateTime), CAST(N'2014-10-17 14:52:45.410' AS DateTime), 3, 6, CAST(N'2014-10-17 14:52:45.410' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (143, N'Dampeners replacement ', N'replace elastomeric bladder after every two diaphragm replacement, replace nuts and bolts with equal grade and strength, inspect dampener and fasteners for signs of over pressurization, fatigue, stress or corrosion', 15, 2, CAST(N'2014-10-17 15:35:25.253' AS DateTime), CAST(N'2014-10-17 15:10:04.790' AS DateTime), 3, 6, CAST(N'2014-10-17 15:10:04.790' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (144, N'PRV inspection', N'ensure system is not under pressure and lines are flushed with water, unscrew pressure adjustment screw record/ mark set point remove four bolts lift off top, inspect diaphragm and seat replace if necessary, inspect adjustment spring for rusted or corrossion, replace top tighten the four bolts replace adjustment screw set at same position as it was prior', 15, 2, CAST(N'2014-10-17 15:35:37.593' AS DateTime), CAST(N'2014-10-17 15:17:03.607' AS DateTime), 3, 6, CAST(N'2014-10-17 15:17:03.607' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (145, N'Motor inspection and lube ', N'with motor off clean grease fitting remove grease outlet plug, lube with 2.0 teaspoon or .6 in cube of grease, if motor is running add grease slowly until new grease appears at shaft hole or outlet plug reinstall grease outlet plug', 15, 2, CAST(N'2014-10-17 15:35:49.747' AS DateTime), CAST(N'2014-10-17 15:26:34.130' AS DateTime), 1, 8, CAST(N'2014-10-17 15:26:34.130' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (146, N'Pump oil change ', N'change oil every 5000 hours check O&M for type or use mobil 634 takes approximately .6 quarts', 15, 2, CAST(N'2014-10-17 15:36:15.220' AS DateTime), CAST(N'2014-10-17 15:31:03.480' AS DateTime), 3, 6, CAST(N'2014-10-17 15:31:03.480' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (147, N'6 week check ', N'check vibration
check lube sample
inspect PRV
inspect expansion joint 
', 18, 2, CAST(N'2014-10-17 15:46:02.030' AS DateTime), CAST(N'2014-07-02 08:27:37.000' AS DateTime), 6, 5, CAST(N'2015-01-26 15:01:14.517' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (148, N'36 week check', N'change oil 
check air filter
inspect check valve', 18, 2, CAST(N'2014-10-17 15:46:10.630' AS DateTime), CAST(N'2014-03-31 08:35:39.000' AS DateTime), 9, 6, CAST(N'2015-02-19 08:54:17.497' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (149, N'52 week check ', N'change oil flush sumps 
check vents 
inspect silencer 
inspect PRV', 18, 2, CAST(N'2014-10-17 15:46:18.303' AS DateTime), CAST(N'2014-03-31 08:38:10.000' AS DateTime), 1, 8, CAST(N'2014-05-19 08:38:10.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (150, N'3 week check', N'check oil level should be in middle of sight glass, lube grease side of blower ensure grease vent is clear to expel contaminated grease', 53, 2, CAST(N'2014-10-17 15:46:41.870' AS DateTime), CAST(N'2014-10-02 08:25:23.000' AS DateTime), 3, 5, CAST(N'2015-03-02 14:56:34.700' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (151, N'6 week check ', N'check vibration
check lube sample
inspect PRV
inspect expansion joint 
', 53, 2, CAST(N'2014-10-17 15:46:49.830' AS DateTime), CAST(N'2014-09-09 08:27:37.000' AS DateTime), 6, 5, CAST(N'2015-01-26 15:01:11.113' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (152, N'36 week check', N'change oil 
check air filter
inspect check valve', 53, 2, CAST(N'2014-10-17 15:47:08.923' AS DateTime), CAST(N'2014-05-19 08:35:39.000' AS DateTime), 9, 6, CAST(N'2015-02-03 08:54:07.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (153, N'52 week check ', N'change oil flush sumps 
check vents 
inspect silencer 
inspect PRV', 53, 2, CAST(N'2014-10-17 15:47:17.177' AS DateTime), CAST(N'2014-05-19 08:38:10.000' AS DateTime), 1, 8, CAST(N'2014-05-19 08:38:10.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (154, N'Motor amperage check', N'check amperage on all three legs record on work order notes', 22, 2, CAST(N'2014-10-17 15:54:40.610' AS DateTime), CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 8, CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (155, N'Motor lube', N'lube motor, install grease fittings, remove grease vent plug, lube, reinstall vent plug use chevron black pearl ep2 or check O&M for type

change lube interval to 2 months after first lube ', 22, 2, CAST(N'2014-10-17 16:00:11.563' AS DateTime), CAST(N'2014-03-25 15:53:56.000' AS DateTime), 5, 8, CAST(N'2014-03-25 15:53:56.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (156, N'Motor amperage check', N'check amperage on all three legs record on work order notes', 23, 2, CAST(N'2014-10-17 16:02:12.337' AS DateTime), CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 8, CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (157, N'Motor lube', N'lube motor, install grease fittings, remove grease vent plug, lube, reinstall vent plug use chevron black pearl ep2 or check O&M for type

change lube interval to 2 months after first lube ', 23, 2, CAST(N'2014-10-17 16:02:19.810' AS DateTime), CAST(N'2014-03-25 15:53:56.000' AS DateTime), 5, 8, CAST(N'2014-03-25 15:53:56.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (158, N'Motor amperage check', N'check amperage on all three legs record on work order notes', 66, 2, CAST(N'2014-10-17 16:02:46.860' AS DateTime), CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 8, CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (159, N'Motor lube', N'lube motor, install grease fittings, remove grease vent plug, lube, reinstall vent plug use chevron black pearl ep2 or check O&M for type

change lube interval to 2 months after first lube ', 66, 2, CAST(N'2014-10-17 16:02:57.140' AS DateTime), CAST(N'2014-03-25 15:53:56.000' AS DateTime), 5, 8, CAST(N'2014-03-25 15:53:56.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (160, N'Motor amperage check', N'check amperage on all three legs record on work order notes', 67, 2, CAST(N'2014-10-17 16:03:18.857' AS DateTime), CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 8, CAST(N'2014-03-25 15:51:31.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (161, N'Motor lube', N'lube motor, install grease fittings, remove grease vent plug, lube, reinstall vent plug use chevron black pearl ep2 or check O&M for type

change lube interval to 2 months after first lube ', 67, 2, CAST(N'2014-10-17 16:03:35.453' AS DateTime), CAST(N'2014-03-25 15:53:56.000' AS DateTime), 5, 8, CAST(N'2014-03-25 15:53:56.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (162, N'Silcopad heating system', N'resistance check disconnect if valve outside of +/- 5% see O&M, insulation resistance IR test or Megger test disconnect if IR value of less than 20M ohms, voltage check operating voltage above  130 vac are nont acceptable, current check any reduction or increased current reading check O&M page 16', 16, 2, CAST(N'2014-10-20 07:58:37.860' AS DateTime), CAST(N'2014-06-30 07:50:58.000' AS DateTime), 6, 6, CAST(N'2015-01-27 16:04:46.293' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (163, N'Insulation check ', N'Visual inspect outer coating and thermal insulation ', 16, 2, CAST(N'2014-10-20 08:47:16.380' AS DateTime), CAST(N'2014-10-15 08:09:11.000' AS DateTime), 1, 6, CAST(N'2015-01-27 16:05:56.323' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (164, N'Annually tank inspection ', N'empty tank, clean exterior and interior, inspect exterior and intereor for cracking or brittle appearance, inspect fittings, hose connections and gaskets for leaks or corrosion, inspect valves, vents and corners of tank, inspect ladders, brackets, and stabilizers and stands for loose bolts and nuts or corrosion ', 16, 2, CAST(N'2014-10-20 09:09:07.020' AS DateTime), CAST(N'2014-06-30 08:46:27.000' AS DateTime), 1, 8, CAST(N'2014-06-30 08:46:27.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (185, N'Monthly bridge inspection', N'check and tighten any loose fasteners, check for loose hand rails or floor plates, inspect and verify bridge base plate expansion connection is free to allow movement ', 20, 2, CAST(N'2014-10-20 14:12:19.333' AS DateTime), CAST(N'2014-10-10 09:09:21.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:20:29.653' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (186, N'Monthly drive assembly ', N'check condition of oil drain small amount check for water or metal, fine metal particles ok in the first six to twelve months, large metal particles take clarifier out of service, lock out drive starter inspect stop blocks, if stop blocks are contacting top of main gear or missing call factory ', 20, 2, CAST(N'2014-10-20 14:12:28.647' AS DateTime), CAST(N'2014-10-10 09:54:15.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:20:34.267' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (187, N'Monthly primary reducer', N'check oil level at sight glass, adjust as needed', 20, 2, CAST(N'2014-10-20 14:12:40.987' AS DateTime), CAST(N'2014-10-10 10:24:48.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:20:43.723' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (188, N'Monthly drive chain', N'check sprockets alignment, setscrews and keys, replace when sprocket tooth profile is hooked, check chain for excessive slack and wear adjust as needed, lube chain as needed ', 20, 2, CAST(N'2014-10-20 14:12:51.470' AS DateTime), CAST(N'2014-10-10 10:29:09.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:20:46.563' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (190, N'Monthly worm gear inspection', N'clean and inspect air vent on worm gear subassembly, grease worm gear bearings two fittings located over worm gear two shots per fitting, check oil condition drain small amount look for water and metal fine particles  ok in the first six to twelve months, large metal particles take clarifier out of service', 20, 2, CAST(N'2014-10-20 14:14:26.207' AS DateTime), CAST(N'2014-10-10 10:34:10.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:20:48.640' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (191, N'Monthly shear pin inspection', N'grease fitting located on hub of shear pin sprocket, check safety collar setscrews and key, check limit switch trip alignment ', 20, 2, CAST(N'2014-10-20 14:14:36.083' AS DateTime), CAST(N'2014-10-10 09:48:49.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:20:31.807' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (192, N'Final drive oil change', N'change oil every 6 months of runtime, shut off drive unit and drain by opening ball valve under floor plate cover also drain each condensate line, fill filler plug located in elbowed pipe located in pinion hub  ', 20, 2, CAST(N'2014-10-20 14:15:34.987' AS DateTime), CAST(N'2014-06-20 10:45:33.000' AS DateTime), 6, 6, CAST(N'2014-06-20 10:45:33.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (193, N'Motor lube', N'stop motor remove grease outlet plug, add .8 teaspoon of grease run motor for 15 mins with grease outlet plug removed, reinstall grease outlet plug ', 20, 2, CAST(N'2014-10-20 14:15:44.600' AS DateTime), CAST(N'2014-02-25 11:22:02.000' AS DateTime), 1, 8, CAST(N'2014-02-25 11:22:02.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (194, N'Stop block inspection', N'lock out drive starter, pull back edge of neoprene drive dust seal, inspect gap of stop blocks, if stop blocks are contacting top of main gear or missing call factory', 20, 2, CAST(N'2014-10-20 14:15:52.163' AS DateTime), CAST(N'2014-02-25 11:26:37.000' AS DateTime), 3, 8, CAST(N'2014-02-25 11:26:37.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (195, N'Primary reducer oil change', N'drain oil from primary reducer drain plug, refill to level marked on sight tube ', 20, 2, CAST(N'2014-10-20 14:16:00.873' AS DateTime), CAST(N'2014-06-20 11:31:59.000' AS DateTime), 6, 6, CAST(N'2014-06-20 11:31:59.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (197, N'Scum trough, baffle and weir inspection', N'before tank drain down inspect weirs for consistent water depth, inspect skimmer one rotation checking for binding, at tank drain down clean inspect replace any missing bolts tighten loose bolts, repair any cracked or loose grout or sealer ', 20, 2, CAST(N'2014-10-20 14:17:07.857' AS DateTime), CAST(N'2014-06-20 11:41:12.000' AS DateTime), 6, 6, CAST(N'2014-06-20 11:41:12.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (198, N'Worm gear subassembly oil change', N'change oil every 6 months drain oil by removing plug in street elbow underside of worm gear housing refill in air vent/ fill plug ', 20, 2, CAST(N'2014-10-20 14:17:16.200' AS DateTime), CAST(N'2014-06-20 13:06:58.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:06:58.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (199, N'Skimmer inspection', N'clean off skimmer assembly and inspect, tighten loose connections, adjust skimmer blade 3" below max water level, adjust spring losded hinged guide to just contact inner wall of the scum beach', 20, 2, CAST(N'2014-10-20 14:17:42.690' AS DateTime), CAST(N'2014-06-20 13:42:55.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:42:55.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (200, N'Shear pin sprocket inspection', N'remove chain and shear pin, rotate hub to expose shear faces, clean faces inspect for wear, swab with lithium#2 grease, reassemble pin and chain, when reinstalling shear pin necked down portion must be aligned in the shear plane ', 20, 2, CAST(N'2014-10-20 14:18:00.317' AS DateTime), CAST(N'2014-06-20 13:52:08.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:52:08.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (201, N'Manifold seals inspection', N'clean manifold seals, verify they are making full contact with sealling surfaces, check as it revolves a full 360, replace seals when material becomes cracked or brittle', 20, 2, CAST(N'2014-10-20 14:18:11.753' AS DateTime), CAST(N'2014-06-20 13:57:04.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:57:04.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (202, N'Header / truss arms inspection', N'when tank is drained clean all frame work, inspect tighten or replace loose or missing bolts, inspect neoprene fluidizing blades replace as necessary, check clearance of unittube header run true plane of rotation check see O&M ', 20, 2, CAST(N'2014-10-20 14:18:21.563' AS DateTime), CAST(N'2014-06-20 14:01:30.000' AS DateTime), 6, 6, CAST(N'2014-06-20 14:01:30.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (203, N'Monthly bridge inspection', N'check and tighten any loose fasteners, check for loose hand rails or floor plates, inspect and verify bridge base plate expansion connection is free to allow movement ', 19, 2, CAST(N'2014-10-20 14:22:24.800' AS DateTime), CAST(N'2014-10-10 09:09:21.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:05:59.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (204, N'Monthly drive assembly ', N'check condition of oil drain small amount check for water or metal, fine metal particles ok in the first six to twelve months, large metal particles take clarifier out of service, lock out drive starter inspect stop blocks, if stop blocks are contacting top of main gear or missing call factory ', 19, 2, CAST(N'2014-10-20 14:22:32.303' AS DateTime), CAST(N'2014-10-10 09:54:15.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:06:02.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (205, N'Monthly primary reducer', N'check oil level at sight glass, adjust as needed', 19, 2, CAST(N'2014-10-20 14:22:41.930' AS DateTime), CAST(N'2014-10-10 10:24:48.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:06:04.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (206, N'Monthly drive chain', N'check sprockets alignment, setscrews and keys, replace when sprocket tooth profile is hooked, check chain for excessive slack and wear adjust as needed, lube chain as needed ', 19, 2, CAST(N'2014-10-20 14:23:20.540' AS DateTime), CAST(N'2014-10-10 10:29:09.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:06:05.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (207, N'Monthly worm gear inspection', N'clean and inspect air vent on worm gear subassembly, grease worm gear bearings two fittings located over worm gear two shots per fitting, check oil condition drain small amount look for water and metal fine particles  ok in the first six to twelve months, large metal particles take clarifier out of service', 19, 2, CAST(N'2014-10-20 14:23:36.157' AS DateTime), CAST(N'2014-10-10 10:34:10.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:06:10.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (208, N'Monthly shear pin inspection', N'grease fitting located on hub of shear pin sprocket, check safety collar setscrews and key, check limit switch trip alignment ', 19, 2, CAST(N'2014-10-20 14:23:47.963' AS DateTime), CAST(N'2014-10-10 09:48:49.000' AS DateTime), 1, 6, CAST(N'2015-01-20 15:06:01.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (209, N'Final drive oil change', N'change oil every 6 months of runtime, shut off drive unit and drain by opening ball valve under floor plate cover also drain each condensate line, fill filler plug located in elbowed pipe located in pinion hub  ', 19, 2, CAST(N'2014-10-20 14:24:00.117' AS DateTime), CAST(N'2014-06-20 10:45:33.000' AS DateTime), 6, 6, CAST(N'2014-06-20 10:45:33.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (210, N'Motor lube', N'stop motor remove grease outlet plug, add .8 teaspoon of grease run motor for 15 mins with grease outlet plug removed, reinstall grease outlet plug ', 19, 2, CAST(N'2014-10-20 14:24:10.773' AS DateTime), CAST(N'2014-02-25 11:22:02.000' AS DateTime), 1, 8, CAST(N'2014-02-25 11:22:02.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (211, N'Stop block inspection', N'lock out drive starter, pull back edge of neoprene drive dust seal, inspect gap of stop blocks, if stop blocks are contacting top of main gear or missing call factory', 19, 2, CAST(N'2014-10-20 14:24:23.283' AS DateTime), CAST(N'2014-02-25 11:26:37.000' AS DateTime), 3, 8, CAST(N'2014-02-25 11:26:37.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (212, N'Primary reducer oil change', N'drain oil from primary reducer drain plug, refill to level marked on sight tube ', 19, 2, CAST(N'2014-10-20 14:24:37.167' AS DateTime), CAST(N'2014-06-20 11:31:59.000' AS DateTime), 6, 6, CAST(N'2014-06-20 11:31:59.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (213, N'Overload switch inspection', N'remove cover inspect inside of housing for signs of condensate, oil or corrosion, test micro switch place screw driver in gap to verify shut off system is functional  DO NOT ADJUST GAP OR RUN IN REVERSE  check O&M or calll factory', 20, 2, CAST(N'2014-10-20 14:24:49.553' AS DateTime), CAST(N'2014-06-20 11:36:11.000' AS DateTime), 6, 6, CAST(N'2014-06-20 11:36:11.000' AS DateTime), 1, 2)
GO
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (214, N'Scum trough, baffle and weir inspection', N'before tank drain down inspect weirs for consistent water depth, inspect skimmer one rotation checking for binding, at tank drain down clean inspect replace any missing bolts tighten loose bolts, repair any cracked or loose grout or sealer ', 19, 2, CAST(N'2014-10-20 14:24:57.290' AS DateTime), CAST(N'2014-06-20 11:41:12.000' AS DateTime), 6, 6, CAST(N'2014-06-20 11:41:12.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (215, N'Worm gear subassembly oil change', N'change oil every 6 months drain oil by removing plug in street elbow underside of worm gear housing refill in air vent/ fill plug ', 19, 2, CAST(N'2014-10-20 14:25:12.983' AS DateTime), CAST(N'2014-06-20 13:06:58.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:06:58.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (216, N'Skimmer inspection', N'clean off skimmer assembly and inspect, tighten loose connections, adjust skimmer blade 3" below max water level, adjust spring losded hinged guide to just contact inner wall of the scum beach', 19, 2, CAST(N'2014-10-20 14:25:23.220' AS DateTime), CAST(N'2014-06-20 13:42:55.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:42:55.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (217, N'Shear pin sprocket inspection', N'remove chain and shear pin, rotate hub to expose shear faces, clean faces inspect for wear, swab with lithium#2 grease, reassemble pin and chain, when reinstalling shear pin necked down portion must be aligned in the shear plane ', 19, 2, CAST(N'2014-10-20 14:25:34.560' AS DateTime), CAST(N'2014-06-20 13:52:08.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:52:08.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (218, N'Manifold seals inspection', N'clean manifold seals, verify they are making full contact with sealling surfaces, check as it revolves a full 360, replace seals when material becomes cracked or brittle', 19, 2, CAST(N'2014-10-20 14:25:46.930' AS DateTime), CAST(N'2014-06-20 13:57:04.000' AS DateTime), 6, 6, CAST(N'2014-06-20 13:57:04.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (219, N'Header / truss arms inspection', N'when tank is drained clean all frame work, inspect tighten or replace loose or missing bolts, inspect neoprene fluidizing blades replace as necessary, check clearance of unittube header run true plane of rotation check see O&M ', 19, 2, CAST(N'2014-10-20 14:25:56.867' AS DateTime), CAST(N'2014-06-20 14:01:30.000' AS DateTime), 6, 6, CAST(N'2014-06-20 14:01:30.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (220, N'Overload switch inspection', N'remove cover inspect inside of housing for signs of condensate, oil or corrosion, test micro switch place screw driver in gap to verify shut off system is functional  DO NOT ADJUST GAP OR RUN IN REVERSE  check O&M or calll factory', 19, 2, CAST(N'2014-10-20 14:26:05.243' AS DateTime), CAST(N'2014-06-20 11:36:11.000' AS DateTime), 6, 6, CAST(N'2014-06-20 11:36:11.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (221, N'Weekly inspection', N'check belt for tracking and alignment, maintain cleanliness of belt and conveyor frame, inspect scraper clean and adjust as needed', 21, 2, CAST(N'2014-10-20 14:38:26.670' AS DateTime), CAST(N'2014-10-10 14:34:39.000' AS DateTime), 1, 5, CAST(N'2015-02-27 08:38:13.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (222, N'Quarterly lube', N'grease pillow block bearings at drum pulleys and live shaft pulleys', 21, 2, CAST(N'2014-10-20 14:41:28.487' AS DateTime), CAST(N'2014-09-09 14:38:26.000' AS DateTime), 3, 6, CAST(N'2014-12-11 08:38:10.737' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (223, N'Conveyor gear box oil change ', N'drain and refill oil in gear reducer ', 21, 2, CAST(N'2014-10-20 14:44:10.757' AS DateTime), CAST(N'2014-05-05 14:40:47.000' AS DateTime), 6, 6, CAST(N'2014-05-05 14:40:47.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (224, N'Conveyor motor lube', N'lubricate motor bearings check O&M ', 21, 2, CAST(N'2014-10-20 14:46:10.673' AS DateTime), CAST(N'2014-02-25 14:44:02.000' AS DateTime), 2, 8, CAST(N'2014-02-25 14:44:02.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (225, N'Monthly lube and cleaning ', N'clean interior of screen, inspect screen drive system, clean and inspect condition of brushes, inspect filter belt assembly, inspect over load mechanism, check all fasteners on unit, grease all fittings ', 74, 2, CAST(N'2014-10-20 15:03:34.013' AS DateTime), CAST(N'2014-10-03 14:55:36.000' AS DateTime), 1, 6, CAST(N'2015-02-05 07:25:54.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (226, N'Spray wash system inspection', N'inspect spray wash system, check belt tension', 74, 2, CAST(N'2014-10-20 15:06:11.027' AS DateTime), CAST(N'2014-08-12 15:02:43.000' AS DateTime), 3, 6, CAST(N'2014-12-03 11:41:26.187' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (227, N'Semi annually inspection ', N'change oil in drive reducer check O&M, check taper grip bushing screws torque, grease motor bearings check for grease fittings and O&M, inspect side seals', 74, 2, CAST(N'2014-10-20 15:10:49.503' AS DateTime), CAST(N'2014-02-25 15:06:13.000' AS DateTime), 6, 6, CAST(N'2014-12-10 07:56:31.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (228, N'Annually unit inspection', N'preform complete interior inspection, check operation of all electrical components, drain channel and remove accumulated debris, check the condition of the grease lines and fittings ', 74, 2, CAST(N'2014-10-20 15:14:55.013' AS DateTime), CAST(N'2014-02-25 15:10:37.000' AS DateTime), 1, 8, CAST(N'2014-02-25 15:10:37.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (229, N'Screen gear reducer overhaul', N'overhaul screen gear reducer every 5 years or 10,000 hours ', 74, 2, CAST(N'2014-10-20 15:17:53.463' AS DateTime), CAST(N'2014-02-25 15:14:46.000' AS DateTime), 5, 8, CAST(N'2014-02-25 15:14:46.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (230, N'Monthly lube and cleaning ', N'clean interior of screen, inspect screen drive system, clean and inspect condition of brushes, inspect filter belt assembly, inspect over load mechanism, check all fasteners on unit, grease all fittings ', 75, 2, CAST(N'2014-10-20 15:22:31.577' AS DateTime), CAST(N'2014-10-03 14:55:36.000' AS DateTime), 1, 6, CAST(N'2015-02-05 07:25:55.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (231, N'Spray wash system inspection', N'inspect spray wash system, check belt tension', 75, 2, CAST(N'2014-10-20 15:22:42.110' AS DateTime), CAST(N'2014-08-12 15:02:43.000' AS DateTime), 3, 6, CAST(N'2014-12-03 11:41:24.457' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (232, N'Semi annually inspection ', N'change oil in drive reducer check O&M, check taper grip bushing screws torque, grease motor bearings check for grease fittings and O&M, inspect side seals', 75, 2, CAST(N'2014-10-20 15:22:52.860' AS DateTime), CAST(N'2014-04-07 15:06:13.000' AS DateTime), 6, 6, CAST(N'2014-12-10 08:45:08.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (233, N'Annually unit inspection', N'preform complete interior inspection, check operation of all electrical components, drain channel and remove accumulated debris, check the condition of the grease lines and fittings ', 75, 2, CAST(N'2014-10-20 15:23:02.110' AS DateTime), CAST(N'2014-04-07 15:10:37.000' AS DateTime), 1, 8, CAST(N'2014-02-25 15:10:37.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (234, N'Screen gear reducer overhaul', N'overhaul screen gear reducer every 5 years or 10,000 hours ', 75, 2, CAST(N'2014-10-20 15:23:08.880' AS DateTime), CAST(N'2014-04-07 15:14:46.000' AS DateTime), 5, 8, CAST(N'2014-02-25 15:14:46.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (235, N'Monthly vacuum priming / paddle drive / turn table', N'vacuum priming system, remove and clean dome and sonic start sensor, reinstall dome and sensor, check turn table bearing gear case and paddle drive gear reducer for change in noise, check oil levels, check for leaks, clean vent plugs, check for loose fasteners, clean motor on gear reducer if needed', 76, 2, CAST(N'2014-10-20 16:55:02.913' AS DateTime), CAST(N'2014-10-15 15:28:47.000' AS DateTime), 1, 6, CAST(N'2014-12-03 11:41:07.250' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (236, N'Grit screw conveyor inspection and lube', N'inspect v-belts on drive unit, refill lube bowl on automatic lube system', 76, 2, CAST(N'2014-10-21 09:14:34.053' AS DateTime), CAST(N'2014-09-30 09:05:35.000' AS DateTime), 6, 6, CAST(N'2014-09-30 09:05:35.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (237, N'Grit screw conveyor oil change', N'change oil in drive unit every 2500 hours or annually ', 76, 2, CAST(N'2014-10-21 09:17:28.643' AS DateTime), CAST(N'2014-02-25 09:14:34.000' AS DateTime), 1, 8, CAST(N'2014-02-25 09:14:34.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (238, N'Paddle drive gear reducer oil change and inspection', N'change oil every 5000 hours, do a complete inspection of gear reducer, check O&M for oil type', 76, 2, CAST(N'2014-10-21 09:24:02.020' AS DateTime), CAST(N'2014-07-01 09:19:14.000' AS DateTime), 6, 6, CAST(N'2014-07-01 09:19:14.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (239, N'Grit system turn table gear case oil change  ', N'change oil every 5000 hours or annually check O&M for oil type ', 76, 2, CAST(N'2014-10-21 09:39:25.613' AS DateTime), CAST(N'2014-02-25 09:35:54.000' AS DateTime), 6, 6, CAST(N'2014-02-25 09:35:54.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (240, N'Turbo grit pump motor lube ', N'lube motor check O&M for grease type ', 76, 2, CAST(N'2014-10-21 09:44:39.693' AS DateTime), CAST(N'2014-09-09 09:39:44.000' AS DateTime), 6, 6, CAST(N'2014-09-09 09:39:44.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (241, N'Turbo grit pump seal inspection  ', N'inspect pump seal see O&M', 76, 2, CAST(N'2014-10-21 09:46:14.427' AS DateTime), CAST(N'2014-02-25 09:43:56.000' AS DateTime), 1, 8, CAST(N'2014-02-25 09:43:56.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (242, N'In line grinder motor and speed reducers inspection', N'inspect motor, speed reducer sumitomo, speed reducer nord and equipment coupling', 25, 2, CAST(N'2014-10-21 09:54:07.193' AS DateTime), CAST(N'2014-03-25 09:49:52.000' AS DateTime), 1, 8, CAST(N'2014-03-25 09:49:52.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (243, N'In line grinder cutter head inspection', N'inspect cutter lube, seal cartridges for leaks and support collars, check for any loose hardware on unit ', 25, 2, CAST(N'2014-10-21 09:59:04.570' AS DateTime), CAST(N'2014-03-25 09:53:16.000' AS DateTime), 1, 8, CAST(N'2014-03-25 09:53:16.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (244, N'In line grinder motor and speed reducers inspection', N'inspect motor, speed reducer sumitomo, speed reducer nord and equipment coupling', 49, 2, CAST(N'2014-10-21 09:59:31.553' AS DateTime), CAST(N'2014-03-25 09:49:52.000' AS DateTime), 1, 8, CAST(N'2014-03-25 09:49:52.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (245, N'In line grinder cutter head inspection', N'inspect cutter lube, seal cartridges for leaks and support collars, check for any loose hardware on unit ', 49, 2, CAST(N'2014-10-21 09:59:40.870' AS DateTime), CAST(N'2014-03-25 09:53:16.000' AS DateTime), 1, 8, CAST(N'2014-03-25 09:53:16.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (246, N'Plant water pump weekly inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check for leakage through stuffing box 1 to 2 drop per sec adjust as needed', 30, 2, CAST(N'2014-10-22 08:26:18.687' AS DateTime), CAST(N'2014-10-10 08:20:33.000' AS DateTime), 1, 5, CAST(N'2015-03-27 08:21:23.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (247, N'Plant water pump motor lube ', N' remove drain plug grease then run motor for 15 mins. clean excess grease at drain plug and reinstall drian plug, use .4 fl oz bottom .6 fl oz top of grease ', 30, 2, CAST(N'2014-10-22 08:34:18.773' AS DateTime), CAST(N'2014-04-07 08:25:45.000' AS DateTime), 1, 8, CAST(N'2014-04-07 08:25:45.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (248, N'Plant water pump weekly inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check for leakage through stuffing box 1 to 2 drop per sec adjust as needed', 51, 2, CAST(N'2014-10-22 08:34:43.470' AS DateTime), CAST(N'2014-10-10 08:20:33.000' AS DateTime), 1, 5, CAST(N'2015-03-27 08:21:25.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (249, N'Plant water pump motor lube ', N' remove drain plug grease then run motor for 15 mins. clean excess grease at drain plug and reinstall drian plug, use .4 fl oz bottom .6 fl oz top of grease ', 51, 2, CAST(N'2014-10-22 08:34:52.050' AS DateTime), CAST(N'2014-04-07 08:25:45.000' AS DateTime), 1, 8, CAST(N'2014-04-07 08:25:45.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (250, N'Plant water recirculation valve inspection', N'check for proper valve regulation, continuous leakage through valve and for any discharge of water from air vent, check O&M if water is discharged from air vent', 29, 2, CAST(N'2014-10-22 08:39:50.680' AS DateTime), CAST(N'2014-10-08 08:34:48.000' AS DateTime), 1, 6, CAST(N'2015-02-16 15:57:03.857' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (251, N'Plant water strainers media inspection', N'remove inspection cover on side of strain body, inspect media for damage replace if needed, check clearance at bottom of drum with feeler gauge adjust if excessive ', 31, 2, CAST(N'2014-10-23 11:57:14.337' AS DateTime), CAST(N'2014-03-25 11:44:18.000' AS DateTime), 1, 8, CAST(N'2014-03-25 11:44:18.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (252, N'Plant water strainer bonnet', N'remove side cover remove excess grease check upper and lower bearings for wear check seal at bottom of bonnet replace if any leaks', 31, 2, CAST(N'2014-10-23 12:00:11.050' AS DateTime), CAST(N'2014-03-25 11:56:19.000' AS DateTime), 1, 8, CAST(N'2014-03-25 11:56:19.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (253, N'Plant water strainer clincher ball valve and jamesbury actuator', N'inspect valve and actuator annually', 31, 2, CAST(N'2014-10-23 12:57:33.963' AS DateTime), CAST(N'2014-03-25 12:52:02.000' AS DateTime), 1, 8, CAST(N'2014-03-25 12:52:02.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (254, N'Plant water strainer media annual inspection', N'inspect for leakage tighten as necessary (no leakage) replace packing when packing gland is tight against cover and still leaking,', 31, 2, CAST(N'2014-10-23 13:17:23.683' AS DateTime), CAST(N'2014-03-25 12:57:13.000' AS DateTime), 1, 8, CAST(N'2014-03-25 12:57:13.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (255, N'Plant water strainer monthly inpsection and lube ', N'packing inspect for leakage tighten as necessary     ( no leakage) replace packing when packing gland is tight against cover and still leaking, 
strainer bonnet grease bearings 2 grease fittings one on upper and one on lower bearing ', 31, 2, CAST(N'2014-10-23 13:24:13.120' AS DateTime), CAST(N'2014-10-08 13:17:00.000' AS DateTime), 1, 6, CAST(N'2015-01-22 14:25:59.073' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (256, N'Plant water strainer drive unit motor lube ', N'inspect and grease every 12000 hours check O&M for grease type', 31, 2, CAST(N'2014-10-23 13:26:20.607' AS DateTime), CAST(N'2014-03-25 13:23:39.000' AS DateTime), 1, 8, CAST(N'2014-03-25 13:23:39.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (257, N'Plant water strainer drive unit inspection ', N'check oil level remove plated oil plug, oil needs to be even with bottom of threaded hole, drain oil remove top cover and check worm gear and bearings for wear the presence of filings indicates wear of these parts check O&M ', 31, 2, CAST(N'2014-10-23 13:31:05.230' AS DateTime), CAST(N'2014-09-25 13:25:23.000' AS DateTime), 6, 6, CAST(N'2014-09-25 13:25:23.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (258, N'Plant water strainers media inspection', N'remove inspection cover on side of strain body, inspect media for damage replace if needed, check clearance at bottom of drum with feeler gauge adjust if excessive ', 52, 2, CAST(N'2014-10-23 13:31:25.757' AS DateTime), CAST(N'2014-03-25 11:44:18.000' AS DateTime), 1, 8, CAST(N'2014-03-25 11:44:18.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (259, N'Plant water strainer bonnet', N'remove side cover remove excess grease check upper and lower bearings for wear check seal at bottom of bonnet replace if any leaks', 52, 2, CAST(N'2014-10-23 13:31:32.900' AS DateTime), CAST(N'2014-03-25 11:56:19.000' AS DateTime), 1, 8, CAST(N'2014-03-25 11:56:19.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (260, N'Plant water strainer clincher ball valve and jamesbury actuator', N'inspect valve and actuator annually', 52, 2, CAST(N'2014-10-23 13:31:42.027' AS DateTime), CAST(N'2014-03-25 12:52:02.000' AS DateTime), 1, 8, CAST(N'2014-03-25 12:52:02.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (261, N'Plant water strainer media annual inspection', N'inspect for leakage tighten as necessary (no leakage) replace packing when packing gland is tight against cover and still leaking,', 52, 2, CAST(N'2014-10-23 13:31:52.590' AS DateTime), CAST(N'2014-03-25 12:57:13.000' AS DateTime), 1, 8, CAST(N'2014-03-25 12:57:13.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (262, N'Plant water strainer monthly inpsection and lube ', N'packing inspect for leakage tighten as necessary     ( no leakage) replace packing when packing gland is tight against cover and still leaking, 
strainer bonnet grease bearings 2 grease fittings one on upper and one on lower bearing ', 52, 2, CAST(N'2014-10-23 13:32:01.497' AS DateTime), CAST(N'2014-10-08 13:17:00.000' AS DateTime), 1, 6, CAST(N'2015-01-22 14:25:57.423' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (263, N'Plant water strainer drive unit motor lube ', N'inspect and grease every 12000 hours check O&M for grease type', 52, 2, CAST(N'2014-10-23 13:32:09.390' AS DateTime), CAST(N'2014-03-25 13:23:39.000' AS DateTime), 1, 8, CAST(N'2014-03-25 13:23:39.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (264, N'Plant water strainer drive unit inspection ', N'check oil level remove plated oil plug, oil needs to be even with bottom of threaded hole, drain oil remove top cover and check worm gear and bearings for wear the presence of filings indicates wear of these parts check O&M ', 52, 2, CAST(N'2014-10-23 13:32:16.410' AS DateTime), CAST(N'2014-09-25 13:25:23.000' AS DateTime), 6, 6, CAST(N'2014-09-25 13:25:23.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (265, N'Polymer feed system monthly inspection', N'inspect unit check that equipment is operating properly, mixing chamber motor amperage, fan cover is clean and clear, check tubing and fittings for wear and cuts ', 28, 2, CAST(N'2014-10-24 09:31:12.380' AS DateTime), CAST(N'2014-10-09 09:21:47.000' AS DateTime), 1, 6, CAST(N'2015-02-13 15:29:16.520' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (266, N'Polymer feed system electrical and fittings inspection', N'check dosing lines and fittings for tightness and check electrical connections for integrity', 28, 2, CAST(N'2014-10-24 09:36:04.100' AS DateTime), CAST(N'2014-09-10 09:30:15.000' AS DateTime), 1, 7, CAST(N'2014-12-22 15:47:34.010' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (267, N'Polymer feed system monthly inspection', N'inspect unit check that equipment is operating properly, mixing chamber motor amperage, fan cover is clean and clear, check tubing and fittings for wear and cuts ', 50, 2, CAST(N'2014-10-24 09:36:20.170' AS DateTime), CAST(N'2014-10-09 09:21:47.000' AS DateTime), 1, 6, CAST(N'2015-02-13 15:29:17.920' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (268, N'Polymer feed system electrical and fittings inspection', N'check dosing lines and fittings for tightness and check electrical connections for integrity', 50, 2, CAST(N'2014-10-24 09:36:26.763' AS DateTime), CAST(N'2014-09-10 09:30:15.000' AS DateTime), 1, 7, CAST(N'2014-12-22 15:47:36.290' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (269, N'RAS pump inspection and oil change ', N'change oil every 4000 hours or annually, change oil in bearing and seal housings, use SAE no. 30 non detergent oil, inspect check valve, piping and also clean and check pressure relief valve  ', 60, 2, CAST(N'2014-10-24 09:44:39.560' AS DateTime), CAST(N'2014-02-25 09:38:08.000' AS DateTime), 1, 8, CAST(N'2014-02-25 09:38:08.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (270, N'RAS impeller and air release valve inspection', N'inspect impeller clearance, shim as needed and  clean air release valve plunger rod ', 60, 2, CAST(N'2014-10-24 09:47:54.293' AS DateTime), CAST(N'2014-09-26 09:44:17.000' AS DateTime), 6, 6, CAST(N'2014-09-26 09:44:17.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (271, N'RAS v-belt and air release valve inpection ', N'remove cover inspect v-belts replace or tighten as needed reinstall cover, inspect air release valve plunger rod', 60, 2, CAST(N'2014-10-24 09:56:12.403' AS DateTime), CAST(N'2014-10-08 09:46:56.000' AS DateTime), 1, 6, CAST(N'2015-02-06 13:32:10.727' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (272, N'RAS pump inspection and oil change ', N'change oil every 4000 hours or annually, change oil in bearing and seal housings, use SAE no. 30 non detergent oil, inspect check valve, piping and also clean and check pressure relief valve  ', 61, 2, CAST(N'2014-10-24 09:59:52.127' AS DateTime), CAST(N'2014-06-02 09:38:08.000' AS DateTime), 1, 8, CAST(N'2014-06-02 09:38:08.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (273, N'RAS impeller and air release valve inspection', N'inspect impeller clearance, shim as needed and  clean air release valve plunger rod ', 61, 2, CAST(N'2014-10-24 10:00:29.863' AS DateTime), CAST(N'2014-06-02 09:44:17.000' AS DateTime), 6, 6, CAST(N'2014-06-02 09:44:17.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (274, N'RAS v-belt and air release valve inpection ', N'remove cover inspect v-belts replace or tighten as needed reinstall cover, inspect air release valve plunger rod', 61, 2, CAST(N'2014-10-24 10:00:54.060' AS DateTime), CAST(N'2014-10-08 09:46:56.000' AS DateTime), 1, 6, CAST(N'2015-02-06 13:32:12.350' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (275, N'RAS pump inspection and oil change ', N'change oil every 4000 hours or annually, change oil in bearing and seal housings, use SAE no. 30 non detergent oil, inspect check valve, piping and also clean and check pressure relief valve  ', 62, 2, CAST(N'2014-10-24 10:02:44.197' AS DateTime), CAST(N'2014-06-02 09:38:08.000' AS DateTime), 1, 8, CAST(N'2014-06-02 09:38:08.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (276, N'RAS impeller and air release valve inspection', N'inspect impeller clearance, shim as needed and  clean air release valve plunger rod ', 62, 2, CAST(N'2014-10-24 10:03:17.893' AS DateTime), CAST(N'2014-06-02 09:44:17.000' AS DateTime), 6, 6, CAST(N'2014-06-02 09:44:17.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (277, N'RAS v-belt and air release valve inpection ', N'remove cover inspect v-belts replace or tighten as needed reinstall cover, inspect air release valve plunger rod', 62, 2, CAST(N'2014-10-24 10:03:34.893' AS DateTime), CAST(N'2014-10-08 09:46:56.000' AS DateTime), 1, 6, CAST(N'2015-02-06 13:32:13.817' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (278, N'Rotary drum thickener monthly ispection and lube  ', N'inspect and lube drive chain, clean inspect and lube trunnion wheels, check for excess wear on the trunnion wheels, wheels should no be less than 7.50" , inspect horizontal stabilizer wheels, check oil level in gear reducer, inspect drum, check output shafts on flock tank drive and gear reducer for abnormal play', 63, 2, CAST(N'2014-10-24 10:14:34.700' AS DateTime), CAST(N'2014-09-22 10:04:50.000' AS DateTime), 1, 6, CAST(N'2015-02-13 15:09:47.390' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (279, N'Rotary drum thickener oil change and inspection', N'change oil in gear reducer see O&M for oil type, clean and relube drive chain, inspect solenoid valve for proper operation, clean and inspect unit thoroughly repair or replace worn part ', 63, 2, CAST(N'2014-10-24 10:19:53.410' AS DateTime), CAST(N'2014-09-15 10:13:36.000' AS DateTime), 1, 8, CAST(N'2014-09-15 10:13:36.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (280, N'Rotary drum thickener monthly ispection and lube  ', N'inspect and lube drive chain, clean inspect and lube trunnion wheels, check for excess wear on the trunnion wheels, wheels should no be less than 7.50" , inspect horizontal stabilizer wheels, check oil level in gear reducer, inspect drum, check output shafts on flock tank drive and gear reducer for abnormal play', 64, 2, CAST(N'2014-10-24 10:21:05.607' AS DateTime), CAST(N'2014-09-22 10:04:50.000' AS DateTime), 1, 6, CAST(N'2015-02-13 15:09:48.607' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (281, N'Rotary drum thickener oil change and inspection', N'change oil in gear reducer see O&M for oil type, clean and relube drive chain, inspect solenoid valve for proper operation, clean and inspect unit thoroughly repair or replace worn part ', 64, 2, CAST(N'2014-10-24 10:21:17.010' AS DateTime), CAST(N'2014-09-15 10:13:36.000' AS DateTime), 1, 8, CAST(N'2014-09-15 10:13:36.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (282, N'Screenings washer weekly inspection', N'check screenings washer for leakage, vibration, noise, and excess heat build up, check for proper solids reduction, check auger output for blockage, dryness and removel of organic matter', 65, 2, CAST(N'2014-10-24 10:30:42.480' AS DateTime), CAST(N'2014-10-20 10:24:29.000' AS DateTime), 1, 5, CAST(N'2015-02-23 08:22:24.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (283, N'Screenings washer monthly inspection', N'turn off water source, clean supply water strainer, check spray wash mounting hardware, check nozzles for blockage or damage and proper alignment ', 65, 2, CAST(N'2014-10-24 10:40:22.130' AS DateTime), CAST(N'2014-10-15 10:29:45.000' AS DateTime), 1, 6, CAST(N'2015-02-23 08:22:28.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (284, N'Screenings washer control panel inspection', N'inspected control panel enclosure check for moisture, signs of water leakage, seals and conduit entries repair as needed, remove any dirt or dust ', 65, 2, CAST(N'2014-10-24 10:46:17.870' AS DateTime), CAST(N'2014-10-01 10:40:26.000' AS DateTime), 1, 7, CAST(N'2015-01-16 10:02:24.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (285, N'Screenings washer tank auger screen inspection', N'remove tank inspection covers check auger spiral for damage check discharge segment for blockage, do not repair spiral if damaged, check O&M for spiral brush replacement ', 65, 2, CAST(N'2014-10-24 10:52:27.063' AS DateTime), CAST(N'2014-10-15 10:46:30.000' AS DateTime), 1, 7, CAST(N'2015-01-16 09:27:27.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (286, N'Screenings washer auger speed reducer oil change', N'remove oil fill plug, use a 12 quart container or larger to drain oil remove drain plug, drain, reinstall drain plug add 12 quarts of oil replace fill plug check O&M for oil type  ', 65, 2, CAST(N'2014-10-24 11:00:54.517' AS DateTime), CAST(N'2014-02-25 10:53:36.000' AS DateTime), 2, 8, CAST(N'2014-02-25 10:53:36.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (288, N'Screenings washer speed reducer service', N'contact JWCE for speed reducer service instruction', 65, 2, CAST(N'2014-10-24 11:05:47.373' AS DateTime), CAST(N'2014-02-25 10:59:59.000' AS DateTime), 5, 8, CAST(N'2014-02-25 10:59:59.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (289, N'Screenings washer drive gear lube change', N'remove grinder top cover per section 6 in O&M, carefully remove old grease replace with new grease reinstall top cover', 65, 2, CAST(N'2014-10-24 11:10:54.227' AS DateTime), CAST(N'2014-02-25 11:07:06.000' AS DateTime), 5, 8, CAST(N'2014-02-25 11:07:06.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (290, N'Screenings washer packing and seal inspection', N'check the tank auger packing gland and mechanical seal for leakage, the packing gland and seal are located immediately in frount of the drive assembly, tighten hardware securing the packing gland and seal if required ', 65, 2, CAST(N'2014-10-24 11:17:21.733' AS DateTime), CAST(N'2014-07-01 11:13:18.000' AS DateTime), 1, 8, CAST(N'2014-07-01 11:13:18.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (291, N'Screenings washer drive coupling lube', N'remove grinder drive assembly per section 6 in O&M, remove old grease apply grease in the recessess between the coupling lobes and replace grinder drive assembly', 65, 2, CAST(N'2014-10-24 11:20:21.787' AS DateTime), CAST(N'2014-02-25 11:16:24.000' AS DateTime), 1, 8, CAST(N'2014-02-25 11:16:24.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (292, N'Screenings washer grinder drive gear inspection', N'remove grinder top cover per section 6 in O&M, check drive gears for cracks , broken teeth or excessive wear, check grease for contamination if contaminated replace grease', 65, 2, CAST(N'2014-10-24 11:24:44.350' AS DateTime), CAST(N'2014-02-25 11:19:47.000' AS DateTime), 1, 8, CAST(N'2014-02-25 11:19:47.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (293, N'Screenings washer cutter stack inspection', N'check grinder cutters for damage or wear, replace cutters if solids are not properly reduced or if grinder jam excessively, see O&M on how to check for proper cutter stack tightness', 65, 2, CAST(N'2014-10-24 11:28:03.783' AS DateTime), CAST(N'2014-07-01 11:24:05.000' AS DateTime), 1, 8, CAST(N'2014-07-01 11:24:05.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (294, N'Screenings washer auger grinder inspection', N'check that the auger and grinder drives are free of contaminants and that there is no signs of damage overheating or lubricant leakage, check that the drive securing hardware is tight, clean drive with solvent such as simple green if required do not steam clean the drive ', 65, 2, CAST(N'2014-10-24 11:59:03.197' AS DateTime), CAST(N'2014-02-25 11:27:06.000' AS DateTime), 1, 8, CAST(N'2014-02-25 11:27:06.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (295, N'Screenings washer grinder seal inspection', N'remove the grinder then the grinder top and bottom  covers per section 6 in the O&M, check inside of end housings for contaminants and leakage around or through the seals , check for damaged O ring where the seal cartridge contacts the end housing bore, replace the entire seal cartridge assembly if contaminants or leakage is found, cleanend housing bores with solvent like simple green, replace housing if bores are scored, pitted or other damage is identified  ', 65, 2, CAST(N'2014-10-24 13:11:46.633' AS DateTime), CAST(N'2014-02-25 13:03:56.000' AS DateTime), 1, 8, CAST(N'2014-02-25 13:03:56.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (296, N'Seepex pump motor lube ', N'lube motor per O&M ', 72, 2, CAST(N'2014-10-24 13:15:45.720' AS DateTime), CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (297, N'Seepex pump univeral joint lube', N'check seal integrity, check bushings and joints for wear replace grease, repack pump universal joints with seepex special grease ONLY', 72, 2, CAST(N'2014-10-24 13:18:57.880' AS DateTime), CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 4)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (298, N'Seepex pump monthly motor inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check mechanical seal for leaks ', 72, 2, CAST(N'2014-10-24 13:23:13.410' AS DateTime), CAST(N'2014-10-08 13:18:00.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:16:34.497' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (303, N'Seepex pump monthly inspection', N'check end play and temp of bearings change grease every 3000 hours, check rpm and amperage drain, check fan cover for obstruction and dirt, check temp and oil level on gear reducer, exchange every 3 years, check flow and psi on water flush, check flow and rate psi on pump rate see O&M', 72, 2, CAST(N'2014-10-24 13:49:17.080' AS DateTime), CAST(N'2014-10-08 13:22:17.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:15:42.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (304, N'Seepex pump motor lube ', N'lube motor per O&M ', 73, 2, CAST(N'2014-10-24 13:51:19.553' AS DateTime), CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (305, N'Seepex pump univeral joint lube', N'check seal integrity, check bushings and joints for wear replace grease, repack pump universal joints with seepex special grease ONLY', 73, 2, CAST(N'2014-10-24 13:52:44.263' AS DateTime), CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 4)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (306, N'Seepex pump monthly motor inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check mechanical seal for leaks ', 73, 2, CAST(N'2014-10-24 13:53:28.423' AS DateTime), CAST(N'2014-10-08 13:18:00.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:16:36.003' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (307, N'Seepex pump monthly inspection', N'check end play and temp of bearings change grease every 3000 hours, check rpm and amperage drain, check fan cover for obstruction and dirt, check temp and oil level on gear reducer, exchange every 3 years, check flow and psi on water flush, check flow and rate psi on pump rate see O&M', 73, 2, CAST(N'2014-10-24 13:53:36.460' AS DateTime), CAST(N'2014-10-08 13:22:17.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:15:39.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (308, N'Seepex pump motor lube ', N'lube motor per O&M ', 68, 2, CAST(N'2014-10-24 13:55:44.393' AS DateTime), CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (309, N'Seepex pump univeral joint lube', N'check seal integrity, check bushings and joints for wear replace grease, repack pump universal joints with seepex special grease ONLY', 68, 2, CAST(N'2014-10-24 13:56:11.493' AS DateTime), CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 4)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (310, N'Seepex pump monthly motor inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check mechanical seal for leaks ', 68, 2, CAST(N'2014-10-24 13:56:22.880' AS DateTime), CAST(N'2014-10-08 13:18:00.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:16:37.893' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (311, N'Seepex pump monthly inspection', N'check end play and temp of bearings change grease every 3000 hours, check rpm and amperage drain, check fan cover for obstruction and dirt, check temp and oil level on gear reducer, exchange every 3 years, check flow and psi on water flush, check flow and rate psi on pump rate see O&M', 68, 2, CAST(N'2014-10-24 13:56:31.260' AS DateTime), CAST(N'2014-10-08 13:22:17.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:15:36.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (312, N'Seepex pump motor lube ', N'lube motor per O&M ', 69, 2, CAST(N'2014-10-24 14:04:35.747' AS DateTime), CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (313, N'Seepex pump univeral joint lube', N'check seal integrity, check bushings and joints for wear replace grease, repack pump universal joints with seepex special grease ONLY', 69, 2, CAST(N'2014-10-24 14:04:43.673' AS DateTime), CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 4)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (314, N'Seepex pump monthly motor inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check mechanical seal for leaks ', 69, 2, CAST(N'2014-10-24 14:04:51.720' AS DateTime), CAST(N'2014-10-08 13:18:00.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:16:40.137' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (315, N'Seepex pump monthly inspection', N'check end play and temp of bearings change grease every 3000 hours, check rpm and amperage drain, check fan cover for obstruction and dirt, check temp and oil level on gear reducer, exchange every 3 years, check flow and psi on water flush, check flow and rate psi on pump rate see O&M', 69, 2, CAST(N'2014-10-24 14:05:00.223' AS DateTime), CAST(N'2014-10-08 13:22:17.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:15:35.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (316, N'Seepex pump motor lube ', N'lube motor per O&M ', 70, 2, CAST(N'2014-10-24 14:05:25.857' AS DateTime), CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (317, N'Seepex pump univeral joint lube', N'check seal integrity, check bushings and joints for wear replace grease, repack pump universal joints with seepex special grease ONLY', 70, 2, CAST(N'2014-10-24 14:05:38.287' AS DateTime), CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 4)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (318, N'Seepex pump monthly motor inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check mechanical seal for leaks ', 70, 2, CAST(N'2014-10-24 14:05:46.447' AS DateTime), CAST(N'2014-10-08 13:18:00.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:16:41.697' AS DateTime), 1, 2)
GO
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (319, N'Seepex pump monthly inspection', N'check end play and temp of bearings change grease every 3000 hours, check rpm and amperage drain, check fan cover for obstruction and dirt, check temp and oil level on gear reducer, exchange every 3 years, check flow and psi on water flush, check flow and rate psi on pump rate see O&M', 70, 2, CAST(N'2014-10-24 14:05:52.920' AS DateTime), CAST(N'2014-10-08 13:22:17.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:15:33.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (320, N'Seepex pump motor lube ', N'lube motor per O&M ', 71, 2, CAST(N'2014-10-24 14:06:19.533' AS DateTime), CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:13:16.000' AS DateTime), 1, 3)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (321, N'Seepex pump univeral joint lube', N'check seal integrity, check bushings and joints for wear replace grease, repack pump universal joints with seepex special grease ONLY', 71, 2, CAST(N'2014-10-24 14:06:26.680' AS DateTime), CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 8, CAST(N'2014-06-02 13:15:03.000' AS DateTime), 1, 4)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (322, N'Seepex pump monthly motor inspection', N'clean dirt, oil and grease from driver and discharge head, clean driver ventilation passage to prevent over heating, tighten all loose bolts and check for excessive vibration, check mechanical seal for leaks ', 71, 2, CAST(N'2014-10-24 14:06:33.293' AS DateTime), CAST(N'2014-10-08 13:18:00.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:16:31.480' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (323, N'Seepex pump monthly inspection', N'check end play and temp of bearings change grease every 3000 hours, check rpm and amperage drain, check fan cover for obstruction and dirt, check temp and oil level on gear reducer, exchange every 3 years, check flow and psi on water flush, check flow and rate psi on pump rate see O&M', 71, 2, CAST(N'2014-10-24 14:06:40.937' AS DateTime), CAST(N'2014-10-08 13:22:17.000' AS DateTime), 1, 6, CAST(N'2015-02-12 16:15:31.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (324, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 77, 2, CAST(N'2014-10-31 09:24:32.703' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-02-16 11:26:56.187' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (325, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 78, 2, CAST(N'2014-10-31 10:59:27.870' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-02-16 11:26:52.537' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (326, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 79, 2, CAST(N'2014-10-31 11:00:45.590' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-02-16 11:26:54.453' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (327, N'Monthly inspection', N'inspect unit, check filters, clean or replace filters as needed', 80, 2, CAST(N'2014-10-31 11:01:23.137' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-02-16 11:26:40.527' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (328, N'Monthly inspection', N'inspect unit, check filters, clean or replace filters as needed', 81, 2, CAST(N'2014-10-31 11:02:42.417' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-02-16 11:26:50.897' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (329, N'Monthly inspection', N'inspect unit, check filters, clean or replace filters as needed', 82, 2, CAST(N'2014-10-31 11:02:50.933' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-02-16 11:26:57.747' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (330, N'Semi annually inspection and exercise', N'inspect gate, operate the gate one full cycle, remove any foreign objects against the gate disc and frame, check for leaks repair as needed, check stem attachment point, seals and coating, repair and paint as needed, clean and lube stem and gear box, check concrete supports for loss of integrity', 83, 2, CAST(N'2014-10-31 13:29:05.170' AS DateTime), CAST(N'2014-09-23 12:01:23.000' AS DateTime), 6, 6, CAST(N'2014-09-23 12:01:23.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (331, N'Battery replacement and inspection', N'replace batteries ', 84, 2, CAST(N'2014-10-31 13:38:13.190' AS DateTime), CAST(N'2014-02-25 13:35:36.000' AS DateTime), 1, 8, CAST(N'2014-02-25 13:35:36.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (332, N'inspection and service ', N'inspect valve by moving isolating valve A to closed postion, open the 1" apt blow off valve B if fluid flows out rapidly the valve is fine if not flush refer to O&M ', 85, 2, CAST(N'2014-10-31 13:57:04.840' AS DateTime), CAST(N'2014-07-29 13:51:04.000' AS DateTime), 13, 5, CAST(N'2014-07-29 13:51:04.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (333, N'Annually cleaning and inspection', N'clean and inspect ball check valves per O&M ', 86, 2, CAST(N'2014-10-31 14:26:18.720' AS DateTime), CAST(N'2014-02-25 14:22:16.000' AS DateTime), 1, 8, CAST(N'2014-02-25 14:22:16.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (334, N'Annually cleaning and inspection', N'clean and inspect', 87, 2, CAST(N'2014-10-31 14:36:29.040' AS DateTime), CAST(N'2014-03-25 14:34:27.000' AS DateTime), 1, 8, CAST(N'2014-03-25 14:34:27.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (335, N'Clean, inspect and lube', N'clean fan and housing, lube motor use all purpose oil SAE 20  on motor with lube openings use only a couple drops', 88, 2, CAST(N'2014-10-31 14:46:36.070' AS DateTime), CAST(N'2014-03-31 14:41:46.000' AS DateTime), 6, 6, CAST(N'2014-12-01 10:27:23.170' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (336, N'Clean, inspect and lube', N'clean fan and housing, lube motor use all purpose oil SAE 20  on motor with lube openings use only a couple drops', 89, 2, CAST(N'2014-10-31 15:02:20.723' AS DateTime), CAST(N'2014-03-31 14:41:46.000' AS DateTime), 6, 6, CAST(N'2014-11-20 15:07:25.570' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (337, N'Cleaning and inspection', N'disconnect power remove front grille, use a vacuum to remove dust and lint from heater and heating element, lube motor two spouts are located  on the motor use SAE 10 oil, reinstall grille and restore power', 90, 2, CAST(N'2014-10-31 15:15:48.520' AS DateTime), CAST(N'2014-03-31 15:10:18.000' AS DateTime), 6, 6, CAST(N'2014-11-17 15:31:08.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (338, N'Semi annually inspection and exercise', N'inspect gate, operate the gate one full cycle, remove any foreign objects against the gate disc and frame, check for leaks repair as needed, check stem attachment point, seals and coating, repair and paint as needed, clean and lube stem and gear box, check concrete supports for loss of integrity', 91, 2, CAST(N'2014-10-31 15:30:08.787' AS DateTime), CAST(N'2014-09-23 12:01:23.000' AS DateTime), 6, 6, CAST(N'2014-09-23 12:01:23.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (339, N'Semi-annually cleaning and lube ', N'clean and lube blades and linkages, lube with silicone lube do not use petroleum base products, operate damper via actuator check that blades and shafts rotate fully open and full closed', 92, 2, CAST(N'2014-10-31 15:45:25.537' AS DateTime), CAST(N'2014-09-10 15:40:28.000' AS DateTime), 6, 6, CAST(N'2014-09-10 15:40:28.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (340, N'Semi-annually cleaning and lube ', N'clean and lube blades and linkages, lube with silicone lube do not use petroleum base products, operate damper via actuator check that blades and shafts rotate fully open and full closed', 93, 2, CAST(N'2014-10-31 15:47:33.910' AS DateTime), CAST(N'2014-09-10 15:40:28.000' AS DateTime), 6, 6, CAST(N'2014-09-10 15:40:28.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (341, N'Semi-annually cleaning and lube ', N'clean and lube blades and linkages, lube with silicone lube do not use petroleum base products, operate damper via actuator check that blades and shafts rotate fully open and full closed', 94, 2, CAST(N'2014-10-31 15:50:42.670' AS DateTime), CAST(N'2014-09-10 15:40:28.000' AS DateTime), 6, 6, CAST(N'2014-09-10 15:40:28.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (342, N'Semi-annually cleaning and lube ', N'clean and lube blades and linkages, lube with silicone lube do not use petroleum base products, operate damper via actuator check that blades and shafts rotate fully open and full closed', 95, 2, CAST(N'2014-10-31 15:53:32.880' AS DateTime), CAST(N'2014-09-10 15:40:28.000' AS DateTime), 6, 6, CAST(N'2014-09-10 15:40:28.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (343, N'Annually inspection', N'clean covers with hose, inspect for loose fasteners tighten as needed', 96, 2, CAST(N'2014-10-31 15:59:54.487' AS DateTime), CAST(N'2014-02-25 15:56:50.000' AS DateTime), 1, 8, CAST(N'2014-02-25 15:56:50.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (344, N'Annually inspection', N'clean covers with hose, inspect for loose fasteners tighten as needed', 97, 2, CAST(N'2014-10-31 16:00:09.653' AS DateTime), CAST(N'2014-02-25 15:56:50.000' AS DateTime), 1, 8, CAST(N'2014-02-25 15:56:50.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (345, N'Monthly checks', N'check as best you can from ground, insure fan will run, listen for excessive vibration, listen for belt noise', 98, 2, CAST(N'2014-12-30 14:26:29.200' AS DateTime), CAST(N'2014-12-30 11:41:22.770' AS DateTime), 1, 6, CAST(N'2015-03-02 15:03:21.963' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (346, N'Yearly inspection', N'inspected belts, lube motor and bearings (when applicable) clean wheel and inspect all fasteners', 98, 2, CAST(N'2014-12-30 14:32:56.107' AS DateTime), CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 8, CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (347, N'Monthly checks', N'check as best you can from ground, insure fan will run, listen for excessive vibration, listen for belt noise', 99, 2, CAST(N'2014-12-30 14:37:32.187' AS DateTime), CAST(N'2014-12-30 11:41:22.770' AS DateTime), 1, 6, CAST(N'2015-03-02 15:03:20.497' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (348, N'Yearly inspection', N'inspected belts, lube motor and bearings (when applicable) clean wheel and inspect all fasteners', 99, 2, CAST(N'2014-12-30 14:38:08.510' AS DateTime), CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 8, CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (349, N'Semi annually checks', N'check and record amps for each phase', 100, 2, CAST(N'2014-12-30 14:52:12.287' AS DateTime), CAST(N'2014-12-30 14:43:12.820' AS DateTime), 6, 6, CAST(N'2014-12-30 14:43:12.820' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (350, N'Semi annually checks', N'check and record amps for each phase', 101, 2, CAST(N'2014-12-30 14:53:14.377' AS DateTime), CAST(N'2014-12-30 14:43:12.820' AS DateTime), 6, 6, CAST(N'2014-12-30 14:43:12.820' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (351, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 102, 2, CAST(N'2014-12-30 14:59:11.227' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-03-02 14:46:43.707' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (352, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 103, 2, CAST(N'2014-12-30 14:59:52.207' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-03-02 14:46:42.303' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (353, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 104, 2, CAST(N'2014-12-30 15:18:23.613' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-03-02 14:43:59.517' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (354, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 105, 2, CAST(N'2014-12-30 15:18:41.100' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-03-02 14:44:00.937' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (355, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 106, 2, CAST(N'2014-12-30 15:18:57.480' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-03-02 14:44:02.533' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (356, N'Monthly inspection', N'inspect unit, check drain, clean drain as needed, check filters, replace filters as needed', 107, 2, CAST(N'2014-12-30 15:19:21.333' AS DateTime), CAST(N'2014-10-06 09:19:01.000' AS DateTime), 1, 6, CAST(N'2015-03-02 14:44:03.917' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (357, N'Mud valve annual service', N'clean, dry and inspect seal, lube stem', 108, 2, CAST(N'2014-12-30 15:38:11.827' AS DateTime), CAST(N'2014-02-25 15:32:40.000' AS DateTime), 1, 8, CAST(N'2014-02-25 15:32:40.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (358, N'Mud valve annual service', N'clean, dry and inspect seal, lube stem', 109, 2, CAST(N'2014-12-30 15:38:27.187' AS DateTime), CAST(N'2014-02-25 15:32:40.000' AS DateTime), 1, 8, CAST(N'2014-02-25 15:32:40.000' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (359, N'Annually door inspection', N'visual inspect for anything bent, damaged, dented or missing, check fasteners wall atttachments, guide assemblys and bracket attachments, check set screws on gears and sprockets and that tension wheel and keys are scure,check operating assembly and barrel assembly, lube drive chain, pivot joints, shafts and rollers check for normal operation, spring tension and balance', 110, 2, CAST(N'2014-12-31 09:31:11.207' AS DateTime), CAST(N'2014-02-25 09:05:15.000' AS DateTime), 1, 8, CAST(N'2014-02-25 09:05:15.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (360, N'Monthly checks', N'check as best you can from ground, insure fan will run, listen for excessive vibration, listen for belt noise', 111, 2, CAST(N'2014-12-31 09:43:41.397' AS DateTime), CAST(N'2014-12-30 11:41:22.770' AS DateTime), 1, 6, CAST(N'2015-03-02 14:51:37.067' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (361, N'Yearly inspection', N'inspected belts, lube motor and bearings (when applicable) clean wheel and inspect all fasteners', 111, 2, CAST(N'2014-12-31 09:44:03.400' AS DateTime), CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 8, CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (362, N'Monthly checks', N'check as best you can from ground, insure fan will run, listen for excessive vibration, listen for belt noise', 112, 2, CAST(N'2014-12-31 09:46:47.857' AS DateTime), CAST(N'2014-12-30 11:41:22.770' AS DateTime), 1, 6, CAST(N'2015-03-02 14:51:41.730' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (363, N'Yearly inspection', N'inspected belts, lube motor and bearings (when applicable) clean wheel and inspect all fasteners', 112, 2, CAST(N'2014-12-31 09:46:58.043' AS DateTime), CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 8, CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (364, N'Monthly checks', N'check as best you can from ground, insure fan will run, listen for excessive vibration, listen for belt noise', 113, 2, CAST(N'2014-12-31 09:47:08.620' AS DateTime), CAST(N'2014-12-30 11:41:22.770' AS DateTime), 1, 6, CAST(N'2015-03-02 14:51:39.080' AS DateTime), 1, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (365, N'Yearly inspection', N'inspected belts, lube motor and bearings (when applicable) clean wheel and inspect all fasteners', 113, 2, CAST(N'2014-12-31 09:47:17.213' AS DateTime), CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 8, CAST(N'2014-12-30 14:26:26.493' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (366, N'Annual inspection and cleaning', N'disconnect power remove front grille, vacuum dust and lint from heating element, lube motor with SAE10 oil, two spouts are located on front and back of motor,reinstall grille and restore power, insure heater will run', 114, 2, CAST(N'2014-12-31 09:56:50.453' AS DateTime), CAST(N'2014-10-01 09:52:13.000' AS DateTime), 1, 8, CAST(N'2014-10-01 09:52:13.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (368, N'Quarterly inspection swing check valves', N'check for leaks and any loose fasters', 115, 2, CAST(N'2014-12-31 10:06:14.737' AS DateTime), CAST(N'2014-07-29 10:03:53.000' AS DateTime), 1, 1, CAST(N'2014-07-29 10:03:53.000' AS DateTime), 0, 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (369, N'Telescoping valve service', N'remove clear tube wipe screw threads with grease and reinstall tube, pump 3 shots of grease into fittings on operator housing, wash caked on scum off of slip tube and neoprene gasket, check all fastener for tightness from top to bottom of valve assembly. DO NOT OVER TIGHTEN SEAL GASKET FLANGE', 116, 2, CAST(N'2015-01-09 10:51:20.073' AS DateTime), CAST(N'2014-09-18 10:43:21.000' AS DateTime), 1, 7, CAST(N'2014-09-18 10:43:21.000' AS DateTime), 1, 2)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [deptId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled], [priorityId]) VALUES (370, N'Quarterly inspection', N'inspect the slide and weir gate assembly, operate the gate through one full cycle open and closed, look for and remove any foreign objects against the gate disc and frame, observe the gate check for excessive leaks and trouble shoot and repair as needed, check stem attachment point, check seals and coating, clean and lube stem and gear box', 117, 2, CAST(N'2015-01-09 11:07:16.843' AS DateTime), CAST(N'2014-09-22 10:59:47.000' AS DateTime), 1, 7, CAST(N'2014-09-22 10:59:47.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[WorkOrderRequests] OFF
SET IDENTITY_INSERT [dbo].[WorkOrders] ON 

INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20008, 50, CAST(N'2014-10-16 10:33:34.817' AS DateTime), CAST(N'2014-10-17 01:32:26.000' AS DateTime), NULL, 0, CAST(N'2014-10-16 10:33:34.817' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20009, 49, CAST(N'2014-10-16 10:33:36.933' AS DateTime), CAST(N'2014-10-16 22:30:48.033' AS DateTime), NULL, 0, CAST(N'2014-10-16 10:33:36.933' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20010, 49, CAST(N'2014-10-16 10:33:43.610' AS DateTime), CAST(N'2014-10-16 22:30:48.033' AS DateTime), NULL, 0, CAST(N'2014-10-16 10:33:43.610' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20011, 51, CAST(N'2014-10-16 16:05:19.923' AS DateTime), CAST(N'2014-10-23 10:32:48.000' AS DateTime), NULL, 0, CAST(N'2014-10-16 16:05:19.923' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20012, 51, CAST(N'2014-10-16 16:05:31.293' AS DateTime), CAST(N'2014-10-23 10:32:48.000' AS DateTime), NULL, 0, CAST(N'2014-10-16 16:05:31.293' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20013, 51, CAST(N'2014-10-16 16:06:16.287' AS DateTime), CAST(N'2014-10-23 10:56:48.000' AS DateTime), NULL, 0, CAST(N'2014-10-16 16:06:16.287' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20014, 51, CAST(N'2014-10-16 16:43:32.163' AS DateTime), CAST(N'2014-10-23 10:56:48.000' AS DateTime), NULL, 0, CAST(N'2014-10-16 16:43:32.163' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20015, 51, CAST(N'2014-10-16 16:54:38.660' AS DateTime), CAST(N'2014-10-17 00:00:00.000' AS DateTime), NULL, 0, CAST(N'2014-10-16 16:54:38.660' AS DateTime), NULL)
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20017, 61, CAST(N'2014-10-17 08:59:33.747' AS DateTime), CAST(N'2014-10-13 08:46:12.000' AS DateTime), N'purged and flexed all fine air diffusers in aeration basin', 1, CAST(N'2014-10-24 08:59:33.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20018, 71, CAST(N'2014-10-17 11:01:18.850' AS DateTime), CAST(N'2014-10-06 17:55:12.000' AS DateTime), N'', 1, CAST(N'2014-10-20 11:01:18.000' AS DateTime), N'Eric Conder')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20019, 73, CAST(N'2014-10-17 11:25:02.657' AS DateTime), CAST(N'2014-10-17 15:55:12.000' AS DateTime), N'', 1, CAST(N'2014-10-17 11:25:02.657' AS DateTime), N'MR Systems')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20020, 282, CAST(N'2014-10-24 14:18:00.820' AS DateTime), CAST(N'2014-10-27 10:24:29.000' AS DateTime), N'checked unit for leakage, excess vibraion and heat build up all were ok, had some excess noise in head of grinder unit, solids reduction and output were ok ', 1, CAST(N'2014-10-20 14:18:00.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20021, 151, CAST(N'2014-10-24 15:10:18.363' AS DateTime), CAST(N'2014-10-20 08:27:37.000' AS DateTime), N'checked oil level ok, no excess vibration and PRV tested ok ', 1, CAST(N'2014-10-21 15:10:18.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20022, 61, CAST(N'2014-10-24 15:13:43.680' AS DateTime), CAST(N'2014-10-13 08:46:12.000' AS DateTime), N'purged and flex all fine air diffusers in aeration basin', 1, CAST(N'2014-10-24 15:13:43.680' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20023, 61, CAST(N'2014-10-30 13:49:17.500' AS DateTime), CAST(N'2014-10-13 08:46:12.000' AS DateTime), N'ok', 1, CAST(N'2014-10-30 13:49:17.500' AS DateTime), N'rk')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20024, 61, CAST(N'2014-10-30 14:04:24.703' AS DateTime), CAST(N'2014-10-13 08:46:12.000' AS DateTime), N'OK', 1, CAST(N'2014-10-30 14:04:24.703' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20025, 61, CAST(N'2014-10-30 14:15:04.633' AS DateTime), CAST(N'2014-10-13 08:46:12.000' AS DateTime), N'', 1, CAST(N'2014-10-30 14:15:04.000' AS DateTime), N'Eric Conder')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20026, 246, CAST(N'2014-10-31 07:50:17.650' AS DateTime), CAST(N'2014-10-17 08:20:33.000' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners , vibration and stuffing box was ok', 1, CAST(N'2014-10-31 07:50:17.650' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20027, 248, CAST(N'2014-10-31 07:50:41.400' AS DateTime), CAST(N'2014-10-17 08:20:33.000' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, vibration and stuffing box was ok ', 1, CAST(N'2014-10-31 07:50:41.400' AS DateTime), N'AM')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20028, 101, CAST(N'2014-10-31 11:22:40.550' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:22:40.550' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20029, 114, CAST(N'2014-10-31 11:22:43.090' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:22:43.090' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20030, 115, CAST(N'2014-10-31 11:22:44.957' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:22:44.957' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20031, 116, CAST(N'2014-10-31 11:22:50.517' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:22:50.517' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20032, 117, CAST(N'2014-10-31 11:22:52.480' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:22:52.480' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20033, 118, CAST(N'2014-10-31 11:22:55.023' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks', 1, CAST(N'2014-10-31 11:22:55.023' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20034, 119, CAST(N'2014-10-31 11:22:57.147' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:22:57.147' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20035, 120, CAST(N'2014-10-31 11:22:59.600' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:22:59.600' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20036, 121, CAST(N'2014-10-31 11:23:02.137' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:23:02.137' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20037, 122, CAST(N'2014-10-31 11:23:08.253' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:23:08.253' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20038, 123, CAST(N'2014-10-31 11:23:12.193' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks ', 1, CAST(N'2014-10-31 11:23:12.193' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20039, 124, CAST(N'2014-10-31 11:23:18.533' AS DateTime), CAST(N'2014-11-02 14:25:13.000' AS DateTime), N'checked oil level ok found no oil leaks', 1, CAST(N'2014-10-31 11:23:18.533' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20040, 136, CAST(N'2014-10-31 11:31:09.653' AS DateTime), CAST(N'2014-10-21 14:46:33.000' AS DateTime), N'did walk around inspection, checked coolant level, oil level, both air filters, battery electrolyte level and water jacket heat temp all were ok ', 1, CAST(N'2014-10-31 11:31:09.653' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20041, 57, CAST(N'2014-10-31 16:00:40.170' AS DateTime), CAST(N'2014-10-23 08:25:23.000' AS DateTime), N'checked oil level both sides were ok found no oil leaks ', 1, CAST(N'2014-10-31 16:00:40.170' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20042, 70, CAST(N'2014-10-31 16:00:44.550' AS DateTime), CAST(N'2014-10-23 08:25:23.000' AS DateTime), N'checked oil level both sides were ok found no oil leaks ', 1, CAST(N'2014-10-31 16:00:44.550' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20043, 147, CAST(N'2014-10-31 16:00:48.887' AS DateTime), CAST(N'2014-10-20 08:27:37.000' AS DateTime), N'checked vibration, lube, PRV and expansion joint all were ok ', 1, CAST(N'2014-10-31 16:00:48.887' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20044, 58, CAST(N'2014-10-31 16:00:51.230' AS DateTime), CAST(N'2014-10-20 08:27:37.000' AS DateTime), N'checked vibraton, lube, PRV, and expansion joint all were ok', 1, CAST(N'2014-10-31 16:00:51.230' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20045, 151, CAST(N'2014-10-31 16:00:53.257' AS DateTime), CAST(N'2014-10-20 08:27:37.000' AS DateTime), N'checked vibration, lube, PRV and expansion joint all were ok ', 1, CAST(N'2014-10-31 16:00:53.257' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20046, 221, CAST(N'2014-10-31 16:00:58.623' AS DateTime), CAST(N'2014-10-17 14:34:39.000' AS DateTime), N'checked belt for alignment and tracking ok, inspect scraper ok at this time', 1, CAST(N'2014-10-31 16:00:58.623' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20047, 282, CAST(N'2014-10-31 16:01:29.963' AS DateTime), CAST(N'2014-10-27 10:24:29.000' AS DateTime), N'checked screenings washer for leaks, vibration, noise and heat all was ok output was ok', 1, CAST(N'2014-10-31 16:01:29.963' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20048, 150, CAST(N'2014-10-31 16:01:43.470' AS DateTime), CAST(N'2014-10-23 08:25:23.000' AS DateTime), N'check oil level ok found no leaks, greased and cleaned grease vent on grease side of blower', 1, CAST(N'2014-10-31 16:01:43.470' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20049, 136, CAST(N'2014-11-07 16:15:10.190' AS DateTime), CAST(N'2014-11-07 11:31:09.653' AS DateTime), N'did a walk around inspection checked coolant level, oil level, both air filters, battery electrolyte levels in all batterys and water jacket temp all was good ', 1, CAST(N'2014-11-07 16:15:10.190' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20050, 136, CAST(N'2014-11-20 15:06:07.743' AS DateTime), CAST(N'2014-11-14 16:15:10.190' AS DateTime), N'did a walk around inspection, checked coolant level, both air filters, battery electrolyte level in all batterys, and water jacket heater temp all were ok, same day Blanchard pulled a oil sample.', 1, CAST(N'2014-11-14 15:06:07.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20051, 255, CAST(N'2014-11-20 15:06:51.183' AS DateTime), CAST(N'2014-11-08 13:17:00.000' AS DateTime), N'packing was ajusted as needed, greased bearings top and bottom 2 shots each', 1, CAST(N'2014-12-01 15:06:51.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20052, 262, CAST(N'2014-11-20 15:06:53.340' AS DateTime), CAST(N'2014-11-08 13:17:00.000' AS DateTime), N'no adjustment was needed on packing greased fittings 2 shots each top and bottom ', 1, CAST(N'2014-12-01 15:06:53.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20053, 325, CAST(N'2014-11-20 15:07:06.367' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked air filter ok ', 1, CAST(N'2014-11-19 15:07:06.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20054, 326, CAST(N'2014-11-20 15:07:07.803' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked filter ok', 1, CAST(N'2014-11-19 15:07:07.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20055, 327, CAST(N'2014-11-20 15:07:09.520' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked air filter ok ', 1, CAST(N'2014-11-20 15:07:09.520' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20056, 328, CAST(N'2014-11-20 15:07:11.600' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked air filter ok ', 1, CAST(N'2014-11-19 15:07:11.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20057, 329, CAST(N'2014-11-20 15:07:13.357' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked air filter ok ', 1, CAST(N'2014-11-20 15:07:13.357' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20058, 336, CAST(N'2014-11-20 15:07:25.570' AS DateTime), CAST(N'2014-09-30 14:41:46.000' AS DateTime), N'cleaned all fans housings and screens for all fans, all fans had run very little. ', 1, CAST(N'2014-11-20 15:07:25.570' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20059, 337, CAST(N'2014-11-20 15:31:08.153' AS DateTime), CAST(N'2014-09-30 15:10:18.000' AS DateTime), N'remove grille, cleaned heater, cleaned and reinstalled grille. first time heaters have been ran water heater room and bath room', 1, CAST(N'2014-11-17 15:31:08.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20060, 324, CAST(N'2014-11-20 15:31:40.100' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked air filter ok ', 1, CAST(N'2014-11-19 15:31:40.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20061, 136, CAST(N'2014-11-20 15:41:06.403' AS DateTime), CAST(N'2014-11-21 15:06:07.000' AS DateTime), N'did a walk around inspection, checked coolant level, both air filters, battery electrolyte levels in all batterys and water jacket heater temp all were ok ', 1, CAST(N'2014-11-20 15:41:06.403' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20062, 74, CAST(N'2014-11-24 15:16:19.847' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'replaced air filters ', 1, CAST(N'2014-11-24 15:16:19.847' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20063, 75, CAST(N'2014-11-24 15:17:43.150' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'checked air filters ok blower was 200 hours into a 700 hour run cycle', 1, CAST(N'2014-11-24 15:17:43.150' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20064, 77, CAST(N'2014-11-24 15:17:45.597' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'checked air filters they were clean ready for next run cycle', 1, CAST(N'2014-11-24 15:17:45.597' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20065, 85, CAST(N'2014-11-24 15:17:51.510' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'changed filters ready for next run cycle', 1, CAST(N'2014-11-24 15:17:51.510' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20066, 88, CAST(N'2014-11-24 15:17:54.380' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'checked air filters they were clean and ready for next run cycle', 1, CAST(N'2014-11-24 15:17:54.380' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20067, 89, CAST(N'2014-11-24 15:17:58.170' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'checked filters ok blower needs 200 hours of run time to end a 700 hour run cycle ', 1, CAST(N'2014-11-24 15:17:58.170' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20068, 90, CAST(N'2014-11-24 15:18:01.993' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'checked air filters ok they will need to be changed at the end of 700 hour run cycle, blower needs 300 more hours run time ', 1, CAST(N'2014-11-24 15:18:01.993' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20069, 91, CAST(N'2014-11-24 15:18:03.537' AS DateTime), CAST(N'2014-11-06 13:57:23.000' AS DateTime), N'checked air filters ok ready for next 700 hour run cycle', 1, CAST(N'2014-11-24 15:18:03.537' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20070, 265, CAST(N'2014-11-24 15:27:49.740' AS DateTime), CAST(N'2014-11-09 09:21:47.000' AS DateTime), N'ran and checked by Jamie ok ', 1, CAST(N'2014-11-24 15:27:49.740' AS DateTime), N'JP')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20071, 267, CAST(N'2014-11-24 15:27:54.280' AS DateTime), CAST(N'2014-11-09 09:21:47.000' AS DateTime), N'ran and checked by Jamie unit was ok', 1, CAST(N'2014-11-24 15:27:54.280' AS DateTime), N'JP')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20072, 136, CAST(N'2014-11-25 15:58:40.890' AS DateTime), CAST(N'2014-11-27 15:41:06.403' AS DateTime), N'did a walk around inspection checked coolant level, both air filters, battery electrolyte levels in all batterys, and water jacket heater temp all were ok ', 1, CAST(N'2014-11-25 15:58:40.890' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20073, 335, CAST(N'2014-12-01 10:27:23.170' AS DateTime), CAST(N'2014-09-30 14:41:46.000' AS DateTime), N'fan was clean and worked properly', 1, CAST(N'2014-12-01 10:27:23.170' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20074, 246, CAST(N'2014-12-01 10:27:36.303' AS DateTime), CAST(N'2014-11-07 07:50:17.650' AS DateTime), N'motor was clean, vents were clear, found no loose fasteners, vibration and stuffing box was ok ', 1, CAST(N'2014-12-01 10:27:36.303' AS DateTime), N'RK ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20075, 248, CAST(N'2014-12-01 10:27:39.860' AS DateTime), CAST(N'2014-11-07 07:50:41.400' AS DateTime), N'motor was clean vents were clear, found no loose fasteners, vibration and stuffing box were ok ', 1, CAST(N'2014-12-01 10:27:39.860' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20076, 250, CAST(N'2014-12-01 10:27:51.887' AS DateTime), CAST(N'2014-11-08 08:34:48.000' AS DateTime), N'valve was working properly ', 1, CAST(N'2014-12-01 10:27:51.887' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20077, 262, CAST(N'2014-12-01 10:27:57.880' AS DateTime), CAST(N'2014-11-08 13:17:00.000' AS DateTime), N'this is a duplicated work order', 1, CAST(N'2014-12-01 10:27:57.880' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20078, 255, CAST(N'2014-12-01 10:28:00.140' AS DateTime), CAST(N'2014-11-08 13:17:00.000' AS DateTime), N'this is a duplicated work order', 1, CAST(N'2014-12-01 10:28:00.140' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20079, 57, CAST(N'2014-12-01 10:28:15.350' AS DateTime), CAST(N'2014-11-21 16:00:40.170' AS DateTime), N'checked oil level both sides of blower both were ok, also checked air filter it was ok ', 1, CAST(N'2014-12-01 10:28:15.350' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20080, 70, CAST(N'2014-12-01 10:28:17.253' AS DateTime), CAST(N'2014-11-21 16:00:44.550' AS DateTime), N'checked oil level on both sides of blower and checked air filter all were ok ', 1, CAST(N'2014-12-01 10:28:17.253' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20081, 150, CAST(N'2014-12-01 10:28:19.670' AS DateTime), CAST(N'2014-11-21 16:01:43.470' AS DateTime), N'checked oil level and greased blower checked air filter ok ', 1, CAST(N'2014-12-01 10:28:19.670' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20082, 101, CAST(N'2014-12-01 10:28:26.147' AS DateTime), CAST(N'2014-11-30 11:22:40.550' AS DateTime), N'checked oil level ok, found no oil leaks ', 1, CAST(N'2014-12-01 10:28:26.147' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20083, 114, CAST(N'2014-12-01 10:28:27.567' AS DateTime), CAST(N'2014-11-30 11:22:43.090' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:27.567' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20084, 115, CAST(N'2014-12-01 10:28:29.203' AS DateTime), CAST(N'2014-11-30 11:22:44.957' AS DateTime), N'checked oil level ok, found no oil leaks ', 1, CAST(N'2014-12-01 10:28:29.203' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20085, 116, CAST(N'2014-12-01 10:28:31.293' AS DateTime), CAST(N'2014-11-30 11:22:50.517' AS DateTime), N'checked oil level ok, found no oil leaks ', 1, CAST(N'2014-12-01 10:28:31.293' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20086, 117, CAST(N'2014-12-01 10:28:32.840' AS DateTime), CAST(N'2014-11-30 11:22:52.480' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:32.840' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20087, 118, CAST(N'2014-12-01 10:28:34.477' AS DateTime), CAST(N'2014-11-30 11:22:55.023' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:34.477' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20088, 119, CAST(N'2014-12-01 10:28:36.317' AS DateTime), CAST(N'2014-11-30 11:22:57.147' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:36.317' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20089, 120, CAST(N'2014-12-01 10:28:38.017' AS DateTime), CAST(N'2014-11-30 11:22:59.600' AS DateTime), N'checked oil level ok, found no oil leaks ', 1, CAST(N'2014-12-01 10:28:38.017' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20090, 121, CAST(N'2014-12-01 10:28:39.513' AS DateTime), CAST(N'2014-11-30 11:23:02.137' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:39.513' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20091, 122, CAST(N'2014-12-01 10:28:41.137' AS DateTime), CAST(N'2014-11-30 11:23:08.253' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:41.137' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20092, 123, CAST(N'2014-12-01 10:28:43.290' AS DateTime), CAST(N'2014-11-30 11:23:12.193' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:43.290' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20093, 124, CAST(N'2014-12-01 10:28:46.930' AS DateTime), CAST(N'2014-11-30 11:23:18.533' AS DateTime), N'checked oil level ok, found no oil leaks', 1, CAST(N'2014-12-01 10:28:46.930' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20094, 136, CAST(N'2014-12-01 10:28:51.683' AS DateTime), CAST(N'2014-12-02 15:58:40.890' AS DateTime), N'did a walk around inspection checked oil level, both air filters, battery electrolyle level in all batterys and water jacket heater temp all were ok ', 1, CAST(N'2014-12-01 10:28:51.683' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20095, 278, CAST(N'2014-12-03 11:39:44.023' AS DateTime), CAST(N'2014-10-22 10:04:50.000' AS DateTime), N'lubed chain and trunnion wheels, checked oil level, drum stabilizer wheels and shaft on flock tank all were ok ', 1, CAST(N'2014-12-03 11:39:44.023' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20096, 280, CAST(N'2014-12-03 11:39:45.630' AS DateTime), CAST(N'2014-10-22 10:04:50.000' AS DateTime), N'lubed drive chain and trunnion wheels, checked oil level, stabilizer wheels and flock tank shaft all were ok ', 1, CAST(N'2014-12-03 11:39:45.630' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20097, 221, CAST(N'2014-12-03 11:40:08.170' AS DateTime), CAST(N'2014-11-07 16:00:58.623' AS DateTime), N'tightened the belt 2 and 1/2 rounds, cleaned scraper and checked alignment it was ok ', 1, CAST(N'2014-12-03 11:40:08.170' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20098, 235, CAST(N'2014-12-03 11:41:07.250' AS DateTime), CAST(N'2014-11-15 15:28:47.000' AS DateTime), N'removed dome cleaned and reinstalled also cleaned and checked sensor, there was no change in noise, found no leaks, vents were clear, found no loose fasteners, motor was clean', 1, CAST(N'2014-12-03 11:41:07.250' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20099, 283, CAST(N'2014-12-03 11:41:19.043' AS DateTime), CAST(N'2014-11-15 10:29:45.000' AS DateTime), N'removed covers and checked spray wash system ok ', 1, CAST(N'2014-12-03 11:41:19.043' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20100, 231, CAST(N'2014-12-03 11:41:24.457' AS DateTime), CAST(N'2014-11-12 15:02:43.000' AS DateTime), N'checked spray wash and belt tension both were ok ', 1, CAST(N'2014-12-03 11:41:24.457' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20101, 226, CAST(N'2014-12-03 11:41:26.187' AS DateTime), CAST(N'2014-11-12 15:02:43.000' AS DateTime), N'checked spray wash and belt tension both were ok ', 1, CAST(N'2014-12-03 11:41:26.187' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20102, 303, CAST(N'2014-12-03 11:41:39.243' AS DateTime), CAST(N'2014-11-08 13:22:17.000' AS DateTime), N'checked oil level ok, motor was clean, vent was clear, pump was not running at this time ', 1, CAST(N'2014-12-03 11:41:39.243' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20103, 307, CAST(N'2014-12-03 11:41:40.600' AS DateTime), CAST(N'2014-11-08 13:22:17.000' AS DateTime), N'checked oil level ok, motor was clean, vent was clear pump was not running at this time ', 1, CAST(N'2014-12-03 11:41:40.600' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20104, 311, CAST(N'2014-12-03 11:41:42.583' AS DateTime), CAST(N'2014-11-08 13:22:17.000' AS DateTime), N'checked oil level ok, motor was clean, vent was clear pump was not running at this time ', 1, CAST(N'2014-12-03 11:41:42.583' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20105, 315, CAST(N'2014-12-03 11:41:45.093' AS DateTime), CAST(N'2014-11-08 13:22:17.000' AS DateTime), N'checked oil level ok, motor was clean, vent was clear pump was not running at this time', 1, CAST(N'2014-12-03 11:41:45.093' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20106, 319, CAST(N'2014-12-03 11:41:46.670' AS DateTime), CAST(N'2014-11-08 13:22:17.000' AS DateTime), N'checked oil level ok, motor was clean, vent was clear pump was not running at this time ', 1, CAST(N'2014-12-03 11:41:46.670' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20107, 323, CAST(N'2014-12-03 11:41:48.103' AS DateTime), CAST(N'2014-11-08 13:22:17.000' AS DateTime), N'checked oil level ok, motor was clean, vent was clear pump was not running at this time ', 1, CAST(N'2014-12-03 11:41:48.103' AS DateTime), N'AW')
GO
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20108, 322, CAST(N'2014-12-03 11:41:54.550' AS DateTime), CAST(N'2014-11-08 13:18:00.000' AS DateTime), N'motor was clean,vents were clear, found no loose fasteners or leaks, pump was not running at this time', 1, CAST(N'2014-12-03 11:41:54.550' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20109, 318, CAST(N'2014-12-03 11:41:55.920' AS DateTime), CAST(N'2014-11-08 13:18:00.000' AS DateTime), N'motor was clean, vents were clear, found no loose fasteners or leaks, pump was not running at this time,', 1, CAST(N'2014-12-03 11:41:55.920' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20110, 314, CAST(N'2014-12-03 11:41:57.247' AS DateTime), CAST(N'2014-11-08 13:18:00.000' AS DateTime), N'motor was clean, vents were clear, found no loose fasteners or oil leaks, pump was not running at this time', 1, CAST(N'2014-12-03 11:41:57.247' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20111, 310, CAST(N'2014-12-03 11:41:58.650' AS DateTime), CAST(N'2014-11-08 13:18:00.000' AS DateTime), N'motor was clean, vents were clear, found no loose fasteners and no leaks, pump was not running at this time', 1, CAST(N'2014-12-03 11:41:58.650' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20112, 306, CAST(N'2014-12-03 11:42:05.080' AS DateTime), CAST(N'2014-11-08 13:18:00.000' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners or oil leaks, pump was not running at this time', 1, CAST(N'2014-12-03 11:42:05.080' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20113, 298, CAST(N'2014-12-03 11:42:07.090' AS DateTime), CAST(N'2014-11-08 13:18:00.000' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners or oil leaks, pump was not running at this time', 1, CAST(N'2014-12-03 11:42:07.090' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20114, 277, CAST(N'2014-12-03 11:46:08.843' AS DateTime), CAST(N'2014-11-08 09:46:56.000' AS DateTime), N'checked v-belts and air release valve both were ok ', 1, CAST(N'2014-12-03 11:46:08.843' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20115, 274, CAST(N'2014-12-03 11:46:10.450' AS DateTime), CAST(N'2014-11-08 09:46:56.000' AS DateTime), N'checked v-belts and air release valve both were ok, also added oil to top side of pump found a little oil under pump near drain opening', 1, CAST(N'2014-12-03 11:46:10.450' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20116, 271, CAST(N'2014-12-03 11:46:12.167' AS DateTime), CAST(N'2014-11-08 09:46:56.000' AS DateTime), N'checked v-belts and air release valve both were ok ', 1, CAST(N'2014-12-03 11:46:12.167' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20117, 282, CAST(N'2014-12-03 15:59:52.500' AS DateTime), CAST(N'2014-11-07 16:01:29.963' AS DateTime), N'check washer for leaks, heat built up and vibration all were ok, solids reduction and auger output was good, some noise from grinder and water dripping out discharge shoot ', 1, CAST(N'2014-12-03 15:59:52.500' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20118, 61, CAST(N'2014-12-04 11:45:21.890' AS DateTime), CAST(N'2014-11-06 14:15:04.000' AS DateTime), N'purged and flexed all fine air diffusers in aeration basin', 1, CAST(N'2014-12-04 11:45:21.890' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20119, 163, CAST(N'2014-12-04 11:45:40.917' AS DateTime), CAST(N'2014-11-15 08:09:11.000' AS DateTime), N'checked insulation sides and top it was ok, it was cracked at pick up hook and a small crack at lid', 1, CAST(N'2014-12-04 11:45:40.917' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20120, 207, CAST(N'2014-12-04 15:31:59.330' AS DateTime), CAST(N'2014-11-10 10:34:10.000' AS DateTime), N'checked vent it was clear, greaseed both fittings two shots each, checked oil drained small amount found no  water and very fine particles oil was ok, ', 1, CAST(N'2014-12-04 15:31:59.330' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20121, 206, CAST(N'2014-12-04 15:32:01.933' AS DateTime), CAST(N'2014-11-10 10:29:09.000' AS DateTime), N'checked sprockets alignment ok, checked setscrews and key both were ok, sprockets wear was ok, chain needed no adjustment at this time ', 1, CAST(N'2014-12-04 15:32:01.933' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20122, 205, CAST(N'2014-12-04 15:32:03.570' AS DateTime), CAST(N'2014-11-10 10:24:48.000' AS DateTime), N'checked oil level ok no adjustment needed', 1, CAST(N'2014-12-04 15:32:03.570' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20123, 204, CAST(N'2014-12-04 15:32:09.297' AS DateTime), CAST(N'2014-11-10 09:54:15.000' AS DateTime), N'drained small amount of oil found no water and very fine particles oil level was good, checked stop blocks all were good ', 1, CAST(N'2014-12-04 15:32:09.297' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20124, 208, CAST(N'2014-12-04 15:32:11.527' AS DateTime), CAST(N'2014-11-10 09:48:49.000' AS DateTime), N'greased fittings on hub, checked collar set screw and key both were good, checked limit switch trip and tested alarm', 1, CAST(N'2014-12-04 15:32:11.527' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20125, 203, CAST(N'2014-12-04 15:32:13.370' AS DateTime), CAST(N'2014-11-10 09:09:21.000' AS DateTime), N'bridge expansion connection was free, all hand rails and floor plates were good found no loose fasteners', 1, CAST(N'2014-12-04 15:32:13.370' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20126, 190, CAST(N'2014-12-04 15:45:59.263' AS DateTime), CAST(N'2014-11-10 10:34:10.000' AS DateTime), N'air vent was clear, greased both fittings on worm gear two shoots each, drained small amount of oil found no water and very fine particles oil was ok ', 1, CAST(N'2014-12-04 15:45:59.263' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20127, 188, CAST(N'2014-12-04 15:46:00.857' AS DateTime), CAST(N'2014-11-10 10:29:09.000' AS DateTime), N'checked sprocket alignment ok, checked setscrews and key all were ok, wear on sprockets were ok, chain needed no adjustment at this time', 1, CAST(N'2014-12-04 15:46:00.857' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20128, 187, CAST(N'2014-12-04 15:46:02.540' AS DateTime), CAST(N'2014-11-10 10:24:48.000' AS DateTime), N'checked oil level ok no adjustment needed', 1, CAST(N'2014-12-04 15:46:02.540' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20129, 186, CAST(N'2014-12-04 15:46:04.260' AS DateTime), CAST(N'2014-11-10 09:54:15.000' AS DateTime), N'drained small amount of oil found no water and very fine particles oil was ok, stop blocks were ok ', 1, CAST(N'2014-12-04 15:46:04.260' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20130, 191, CAST(N'2014-12-04 15:46:06.143' AS DateTime), CAST(N'2014-11-10 09:48:49.000' AS DateTime), N'greased fittings on hub, checked collar setscrews and key both were ok, checked limit switch aligment and tested alarm', 1, CAST(N'2014-12-04 15:46:06.143' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20131, 185, CAST(N'2014-12-04 15:46:09.047' AS DateTime), CAST(N'2014-11-10 09:09:21.000' AS DateTime), N'checked expansion connection it was free, all hand rails and floor plates were ok, found no loose fasteners', 1, CAST(N'2014-12-04 15:46:09.047' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20132, 227, CAST(N'2014-12-11 07:56:29.110' AS DateTime), CAST(N'2014-08-25 15:06:13.000' AS DateTime), N'screen has not run enough to need oil change will change oil annually. checked torque on taper grip bushing screws, no grease fittings on motor, side seals were ok as far as we could see', 1, CAST(N'2014-12-10 07:56:29.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20133, 227, CAST(N'2014-12-11 07:56:31.090' AS DateTime), CAST(N'2014-08-25 15:06:13.000' AS DateTime), N'screen has not run enough to need oil change will change oil annually, checked torque on taper grip bushing screws, motor has not fittings to grease, checked side seals as far as were could see ok', 1, CAST(N'2014-12-10 07:56:31.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20134, 230, CAST(N'2014-12-11 07:56:56.377' AS DateTime), CAST(N'2014-11-03 14:55:36.000' AS DateTime), N'cleaned interior of screen, checked drive system and brushes both were ok, checked belt ok, found no loose fasteners, greased all fittings ', 1, CAST(N'2014-12-10 07:56:56.000' AS DateTime), N'TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20135, 225, CAST(N'2014-12-11 07:56:59.170' AS DateTime), CAST(N'2014-11-03 14:55:36.000' AS DateTime), N'cleaned interior of screen, checked drive system and brushes both were ok, inspected belt ok, found no loose fasteners, greased all fittings', 1, CAST(N'2014-12-10 07:56:59.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20136, 79, CAST(N'2014-12-11 08:18:36.907' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned blower inside and out, checked both filters ok,  did a visual check inside found no problems at this time', 1, CAST(N'2014-12-10 08:18:36.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20137, 82, CAST(N'2014-12-11 08:18:57.403' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned blower inside and out, checked both filters both were ok, did a visual check on inside found no problems at this time', 1, CAST(N'2014-12-11 08:18:57.403' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20138, 86, CAST(N'2014-12-11 08:28:50.877' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned blower inside and out, checked both filters both were ok, did a visual check on inside of blower found no problems at this time', 1, CAST(N'2014-12-10 08:28:50.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20139, 92, CAST(N'2014-12-11 08:28:52.280' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned inside and out of blower, did a visual check on the inside found no problems at this time, checked both filters both were ok ', 1, CAST(N'2014-12-10 08:28:52.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20140, 93, CAST(N'2014-12-11 08:28:53.793' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned inside and out of blower, did a visual check on  inside found no problems at this time, checked both filters both were ok ', 1, CAST(N'2014-12-10 08:28:53.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20141, 94, CAST(N'2014-12-11 08:28:55.553' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned inside and out of blower, did a visual check on  inside found no problems at this time, checked both filters both were ok ', 1, CAST(N'2014-12-10 08:28:55.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20142, 95, CAST(N'2014-12-11 08:28:58.330' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned inside and out of blower, did a visual check on the inside of blower found no problems at this time, checked both air filters both were ok ', 1, CAST(N'2014-12-10 08:28:58.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20143, 222, CAST(N'2014-12-11 08:38:10.737' AS DateTime), CAST(N'2014-12-09 14:38:26.000' AS DateTime), N'greased all pillow block and pulley bearings ', 1, CAST(N'2014-12-11 08:38:10.737' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20144, 221, CAST(N'2014-12-11 08:38:17.640' AS DateTime), CAST(N'2014-12-10 11:40:08.170' AS DateTime), N'checked belt tracking and alignment both were ok at this time, cleaned scraper no adjustment needed at this time', 1, CAST(N'2014-12-11 08:38:17.640' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20145, 232, CAST(N'2014-12-11 08:45:08.967' AS DateTime), CAST(N'2014-08-25 15:06:13.000' AS DateTime), N'screen has not run enough to need oil change will change oil annually, checked torque taper grip bushing screws, motor has no fittings, checked side seals as far as we could see they were ok ', 1, CAST(N'2014-12-10 08:45:08.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20146, 246, CAST(N'2014-12-12 16:13:56.530' AS DateTime), CAST(N'2014-12-08 10:27:36.303' AS DateTime), N'motor was clean vent was clear found no loose fasteners pump was not running at this time', 1, CAST(N'2014-12-12 16:13:56.530' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20147, 248, CAST(N'2014-12-12 16:13:58.470' AS DateTime), CAST(N'2014-12-08 10:27:39.860' AS DateTime), N'motor was clean vent was clear found no loose fasteners vibration was ok leakage through stuffing box was ok ', 1, CAST(N'2014-12-12 16:13:58.470' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20148, 136, CAST(N'2014-12-12 16:14:14.663' AS DateTime), CAST(N'2014-12-08 10:28:51.683' AS DateTime), N'did a walk around inspection checked coolant levels, both air filters, battery electrolyte and water jacket heater all were ok ', 1, CAST(N'2014-12-12 16:14:14.663' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20149, 81, CAST(N'2014-12-16 13:34:42.987' AS DateTime), CAST(N'2014-12-07 16:12:45.000' AS DateTime), N'cleaned blower inside and out, replaced air filters, found no problems at this time ', 1, CAST(N'2014-12-16 13:34:42.987' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20150, 136, CAST(N'2014-12-16 13:38:15.880' AS DateTime), CAST(N'2014-12-19 16:14:14.663' AS DateTime), N'did walk around inspection, checked coolant level and both air filters, battery electrolyte and water jacket heater temp all was ok ', 1, CAST(N'2014-12-16 13:38:15.880' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20151, 147, CAST(N'2014-12-16 13:41:40.787' AS DateTime), CAST(N'2014-12-12 16:00:48.887' AS DateTime), N'checked vibration, oil level, PVR and expansion joint all  were ok ', 1, CAST(N'2014-12-16 13:41:40.787' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20152, 58, CAST(N'2014-12-16 13:41:42.503' AS DateTime), CAST(N'2014-12-12 16:00:51.230' AS DateTime), N'checked vibration, oil level, PRV and expansion joint all  were ok', 1, CAST(N'2014-12-16 13:41:42.503' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20153, 151, CAST(N'2014-12-16 13:41:44.283' AS DateTime), CAST(N'2014-12-12 16:00:53.257' AS DateTime), N'checked vibration, oil level, PVR and expansion joint all  were ok also greased blower and cleaned vent ', 1, CAST(N'2014-12-16 13:41:44.283' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20154, 246, CAST(N'2014-12-16 13:52:49.000' AS DateTime), CAST(N'2014-12-19 16:13:56.530' AS DateTime), N'motor was clean, vents were clear, found no loose fasteners, cleaned drain pipe, pump was not running at this time', 1, CAST(N'2014-12-16 13:52:49.000' AS DateTime), N'AW / RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20155, 248, CAST(N'2014-12-16 13:52:51.323' AS DateTime), CAST(N'2014-12-19 16:13:58.470' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, leakage through stuffing box was ok no adjustment needed at this time', 1, CAST(N'2014-12-16 13:52:51.323' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20156, 150, CAST(N'2014-12-17 13:18:53.887' AS DateTime), CAST(N'2014-12-22 10:28:19.670' AS DateTime), N'checked oil level it was ok, greased and cleaned vent of expelled grease', 1, CAST(N'2014-12-17 13:18:53.887' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20157, 70, CAST(N'2014-12-17 13:18:55.243' AS DateTime), CAST(N'2014-12-22 10:28:17.253' AS DateTime), N'checked oil level ok both sides were in middle of sight glass', 1, CAST(N'2014-12-17 13:18:55.243' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20158, 57, CAST(N'2014-12-17 13:18:56.507' AS DateTime), CAST(N'2014-12-22 10:28:15.350' AS DateTime), N'checked oil level ok both side were in the middle of sight glass', 1, CAST(N'2014-12-17 13:18:56.507' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20159, 61, CAST(N'2014-12-18 07:56:41.587' AS DateTime), CAST(N'2014-12-11 11:45:21.890' AS DateTime), N'purged and flexed all fine air diffusers in aeration basin ', 1, CAST(N'2014-12-17 07:56:41.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20160, 266, CAST(N'2014-12-22 15:47:34.010' AS DateTime), CAST(N'2014-12-10 09:30:15.000' AS DateTime), N'checked all hoses and fittings all were ok, inspected and used thermal camera to check electrical connections all were ok ', 1, CAST(N'2014-12-22 15:47:34.010' AS DateTime), N'AW /TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20161, 268, CAST(N'2014-12-22 15:47:36.290' AS DateTime), CAST(N'2014-12-10 09:30:15.000' AS DateTime), N'checked all hoses and fittings found one small leak in fitting show to Fred with SU also found a small water leak in water line for future polymer units area also show to Fred. checked all electrical connections with Flir thermal camera all were ok ', 1, CAST(N'2014-12-22 15:47:36.290' AS DateTime), N'AW /TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20162, 325, CAST(N'2014-12-22 15:47:43.660' AS DateTime), CAST(N'2014-12-19 15:07:06.000' AS DateTime), N'checked all drains and filters all were ok ', 1, CAST(N'2014-12-18 15:47:43.000' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20163, 326, CAST(N'2014-12-22 15:47:45.747' AS DateTime), CAST(N'2014-12-19 15:07:07.000' AS DateTime), N'checked all drains and filters all were ok ', 1, CAST(N'2014-12-18 15:47:45.000' AS DateTime), N'AW /TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20164, 328, CAST(N'2014-12-22 15:47:51.283' AS DateTime), CAST(N'2014-12-19 15:07:11.000' AS DateTime), N'checked units drains and filters all were ok ', 1, CAST(N'2014-12-22 15:47:51.283' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20165, 324, CAST(N'2014-12-22 15:47:53.560' AS DateTime), CAST(N'2014-12-19 15:31:40.000' AS DateTime), N'checked unit drains and filters all were ok', 1, CAST(N'2014-12-18 15:47:53.000' AS DateTime), N'AW/ TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20166, 327, CAST(N'2014-12-22 15:48:01.580' AS DateTime), CAST(N'2014-12-20 15:07:09.520' AS DateTime), N'checked unit drains and filters all were ok ', 1, CAST(N'2014-12-18 15:48:01.000' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20167, 329, CAST(N'2014-12-22 15:48:03.403' AS DateTime), CAST(N'2014-12-20 15:07:13.357' AS DateTime), N'checked units drains and filters all were ok ', 1, CAST(N'2014-12-18 15:48:03.000' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20168, 136, CAST(N'2014-12-30 09:19:58.953' AS DateTime), CAST(N'2014-12-23 13:38:15.880' AS DateTime), N'did a walk around inspection, checked oil level, both air filters, electrolyte levels in all batterys and water jacket heater all were ok ', 1, CAST(N'2014-12-23 09:19:58.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20169, 246, CAST(N'2014-12-30 09:20:03.207' AS DateTime), CAST(N'2014-12-23 13:52:49.000' AS DateTime), N'motor was clean vents clear found no loose fasteners pump was not running at this time', 1, CAST(N'2014-12-30 09:20:03.207' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20170, 248, CAST(N'2014-12-30 09:20:05.217' AS DateTime), CAST(N'2014-12-23 13:52:51.323' AS DateTime), N'motor was clean vents clear found no loose fasteners, vibration was ok and leakage through stuffing box ok ', 1, CAST(N'2014-12-30 09:20:05.217' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20171, 136, CAST(N'2014-12-30 09:26:31.443' AS DateTime), CAST(N'2014-12-30 09:19:58.000' AS DateTime), N'did a walk around inspection checked coolant, both air filters, battery electrolyte levels in all batterys and water jacket heater all were ok ', 1, CAST(N'2014-12-30 09:26:31.443' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20172, 282, CAST(N'2015-01-06 10:38:48.937' AS DateTime), CAST(N'2014-12-10 15:59:52.500' AS DateTime), N'checked for leaks vibration noise and heat build up all were ok, output and solids reduction was ok ', 1, CAST(N'2014-12-31 10:38:48.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20173, 221, CAST(N'2015-01-06 10:38:51.197' AS DateTime), CAST(N'2014-12-18 08:38:17.640' AS DateTime), N'checked belt alignment and tracking both were ok cleaned scraper no adjustment needed at this time ', 1, CAST(N'2015-01-06 10:38:51.197' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20174, 136, CAST(N'2015-01-06 10:46:32.860' AS DateTime), CAST(N'2015-01-06 09:26:31.443' AS DateTime), N'did a walk around inspection checked coolant level, both air filters, and battery electrolyte levels in all batterys all were ok water jacket heater was ok and heating', 1, CAST(N'2015-01-06 10:46:32.860' AS DateTime), N'AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20175, 282, CAST(N'2015-01-09 11:34:35.950' AS DateTime), CAST(N'2015-01-07 10:38:48.000' AS DateTime), N'checked for leaks vibration and noise all were ok found  no heat build up, soilid reduction and auger output were ok ', 1, CAST(N'2015-01-09 11:34:35.950' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20176, 221, CAST(N'2015-01-09 11:34:41.740' AS DateTime), CAST(N'2015-01-13 10:38:51.197' AS DateTime), N'checked belt alignment and tracking both were ok cleaned scraper no adjustment needed at this time', 1, CAST(N'2015-01-09 11:34:41.740' AS DateTime), N'RK /AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20177, 61, CAST(N'2015-01-09 11:40:31.180' AS DateTime), CAST(N'2014-12-24 07:56:41.000' AS DateTime), N'purged and flexed all fine air diffusers in aeration basin per O&M', 1, CAST(N'2015-01-09 11:40:31.180' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20178, 356, CAST(N'2015-01-09 15:54:39.593' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked unit and all filters all were ok at this time', 1, CAST(N'2015-01-09 15:54:39.593' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20179, 355, CAST(N'2015-01-09 15:54:41.407' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked unit and all filters all were ok at this time', 1, CAST(N'2015-01-09 15:54:41.407' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20180, 354, CAST(N'2015-01-09 15:54:43.300' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked unit and filters all were ok at this time', 1, CAST(N'2015-01-09 15:54:43.300' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20181, 353, CAST(N'2015-01-09 15:54:45.120' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked unit, replaced all filters', 1, CAST(N'2015-01-09 15:54:45.120' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20182, 352, CAST(N'2015-01-09 15:54:47.493' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked unit and all filters all were ok at this time', 1, CAST(N'2015-01-09 15:54:47.493' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20183, 351, CAST(N'2015-01-09 15:54:49.617' AS DateTime), CAST(N'2014-11-06 09:19:01.000' AS DateTime), N'checked unit and replaced all filters', 1, CAST(N'2015-01-09 15:54:49.617' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20184, 101, CAST(N'2015-01-09 15:54:57.857' AS DateTime), CAST(N'2015-01-01 10:28:26.147' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:54:57.857' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20185, 114, CAST(N'2015-01-09 15:54:59.723' AS DateTime), CAST(N'2015-01-01 10:28:27.567' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:54:59.723' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20186, 115, CAST(N'2015-01-09 15:55:01.417' AS DateTime), CAST(N'2015-01-01 10:28:29.203' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:01.417' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20187, 116, CAST(N'2015-01-09 15:55:03.190' AS DateTime), CAST(N'2015-01-01 10:28:31.293' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:03.190' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20188, 117, CAST(N'2015-01-09 15:55:05.137' AS DateTime), CAST(N'2015-01-01 10:28:32.840' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:05.137' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20189, 118, CAST(N'2015-01-09 15:55:07.100' AS DateTime), CAST(N'2015-01-01 10:28:34.477' AS DateTime), N'checked oil it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:07.100' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20190, 119, CAST(N'2015-01-09 15:55:09.223' AS DateTime), CAST(N'2015-01-01 10:28:36.317' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:09.223' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20191, 120, CAST(N'2015-01-09 15:55:11.377' AS DateTime), CAST(N'2015-01-01 10:28:38.017' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:11.377' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20192, 121, CAST(N'2015-01-09 15:55:15.993' AS DateTime), CAST(N'2015-01-01 10:28:39.513' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:15.993' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20193, 122, CAST(N'2015-01-09 15:55:17.633' AS DateTime), CAST(N'2015-01-01 10:28:41.137' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:17.633' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20194, 123, CAST(N'2015-01-09 15:55:19.473' AS DateTime), CAST(N'2015-01-01 10:28:43.290' AS DateTime), N'checked oil level it was ok found no oil leaks ', 1, CAST(N'2015-01-09 15:55:19.473' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20195, 124, CAST(N'2015-01-09 15:55:21.543' AS DateTime), CAST(N'2015-01-01 10:28:46.930' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-01-09 15:55:21.543' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20196, 150, CAST(N'2015-01-12 16:11:09.637' AS DateTime), CAST(N'2015-01-07 13:18:53.887' AS DateTime), N'checked oil level it was ok, greased and cleaned expelled grease from vent ', 1, CAST(N'2015-01-12 16:11:09.637' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20197, 70, CAST(N'2015-01-12 16:11:11.287' AS DateTime), CAST(N'2015-01-07 13:18:55.243' AS DateTime), N'checked oil level on both sides and both were ok, also checked air filter it was ok ', 1, CAST(N'2015-01-12 16:11:11.287' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20198, 57, CAST(N'2015-01-12 16:11:13.550' AS DateTime), CAST(N'2015-01-07 13:18:56.507' AS DateTime), N'checked oil level on both sides both were ok, checked air filter it was ok ', 1, CAST(N'2015-01-12 16:11:13.550' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20199, 280, CAST(N'2015-01-12 16:11:34.750' AS DateTime), CAST(N'2015-01-03 11:39:45.630' AS DateTime), N'inpected and lubed chain and trunnion wheels checked oil level in gear reducer and checked both shafts both were ok ', 1, CAST(N'2015-01-12 16:11:34.750' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20200, 278, CAST(N'2015-01-12 16:11:36.357' AS DateTime), CAST(N'2015-01-03 11:39:44.023' AS DateTime), N'inspected and lubed drive chain and trunnion wheels also checked oil level in gear reducer ok checked shafts both were ok ', 1, CAST(N'2015-01-12 16:11:36.357' AS DateTime), N'AW / RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20201, 298, CAST(N'2015-01-12 16:15:18.953' AS DateTime), CAST(N'2015-01-03 11:42:07.090' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, pump was not running at this time', 1, CAST(N'2015-01-12 16:15:18.953' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20202, 306, CAST(N'2015-01-12 16:15:20.390' AS DateTime), CAST(N'2015-01-03 11:42:05.080' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, checked seal it was ok pump was not running at this time', 1, CAST(N'2015-01-12 16:15:20.390' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20203, 310, CAST(N'2015-01-12 16:15:21.870' AS DateTime), CAST(N'2015-01-03 11:41:58.650' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, checked seal it was ok, pump was not running at this time', 1, CAST(N'2015-01-12 16:15:21.870' AS DateTime), N'AW / RK ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20204, 314, CAST(N'2015-01-12 16:15:23.310' AS DateTime), CAST(N'2015-01-03 11:41:57.247' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, checked seal it was ok, pump was not running at this time', 1, CAST(N'2015-01-12 16:15:23.310' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20205, 318, CAST(N'2015-01-12 16:15:25.163' AS DateTime), CAST(N'2015-01-03 11:41:55.920' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, checked seal it was ok, pump was not running at this time, checked oil level it was ok ', 1, CAST(N'2015-01-12 16:15:25.163' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20206, 318, CAST(N'2015-01-12 16:15:29.023' AS DateTime), CAST(N'2015-01-03 11:41:55.920' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, checked seal it was ok, pump was not running at this time', 1, CAST(N'2015-01-12 16:15:29.023' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20207, 323, CAST(N'2015-01-12 16:15:31.060' AS DateTime), CAST(N'2015-01-03 11:41:48.103' AS DateTime), N'checked oil level and seals both were ok, fan cover was clean, checked amp M1 14 M2 14 M3 14, discharge presure was 8.6 psi  pump was running at 30 Hz  ', 1, CAST(N'2015-02-12 16:15:31.000' AS DateTime), N'RK / AW ')
GO
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20208, 319, CAST(N'2015-01-12 16:15:33.210' AS DateTime), CAST(N'2015-01-03 11:41:46.670' AS DateTime), N'checked oil level and both seals both were ok, fan cover was clean, checked amps M1 13 M2 13 M3 13 discharge presure was 8.8 psi', 1, CAST(N'2015-02-12 16:15:33.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20209, 315, CAST(N'2015-01-12 16:15:35.020' AS DateTime), CAST(N'2015-01-03 11:41:45.093' AS DateTime), N'checked oil level and seals both were ok, fan cover was clean, checked amps M1 7.5 M2 7.5 M3 7.5, discharge psi was 10.2 pump was running at 30 Hz', 1, CAST(N'2015-02-12 16:15:35.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20210, 311, CAST(N'2015-01-12 16:15:36.783' AS DateTime), CAST(N'2015-01-03 11:41:42.583' AS DateTime), N'checked oil level and seals both were ok, checked amp M1 7 M2 7 M3 7 , discharge psi was 8.3 pump was running at 30 Hz ', 1, CAST(N'2015-02-12 16:15:36.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20211, 307, CAST(N'2015-01-12 16:15:39.000' AS DateTime), CAST(N'2015-01-03 11:41:40.600' AS DateTime), N'checked oil level and seal both were ok, checked amps M1 14 M2 14 M3 14, fan cover was clean, flow was 100 gpm and psi was 1.9 ', 1, CAST(N'2015-02-12 16:15:39.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20212, 303, CAST(N'2015-01-12 16:15:42.463' AS DateTime), CAST(N'2015-01-03 11:41:39.243' AS DateTime), N'checked oil level and seals both were ok also checked  amps M1 14 M2 14 M3 14, fan cover was clean, flow rate was 100 gpm and psi was 3.6 ', 1, CAST(N'2015-02-12 16:15:42.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20213, 265, CAST(N'2015-01-14 16:02:44.737' AS DateTime), CAST(N'2014-12-24 15:27:49.740' AS DateTime), N'checked unit no leaks in fittings or tubing, fan cover was clean and clear, equipment was running good, found small drip of polymer on shaft of pump', 1, CAST(N'2015-01-14 16:02:44.737' AS DateTime), N'JP')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20214, 267, CAST(N'2015-01-14 16:02:46.203' AS DateTime), CAST(N'2014-12-24 15:27:54.280' AS DateTime), N'checked unit it was running good, fan was clear and clean, found small leak on piping water and polymer, also found small leak of polymer on shaft of pump ', 1, CAST(N'2015-01-09 16:02:46.000' AS DateTime), N'JP')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20215, 136, CAST(N'2015-01-14 16:03:05.737' AS DateTime), CAST(N'2015-01-13 10:46:32.860' AS DateTime), N'did a walk around inspection checked coolant level, oil  level, both air filters, battery electrolyte levels in all batterys and water jacket heater temp all were ok ', 1, CAST(N'2015-01-14 16:03:05.737' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20216, 329, CAST(N'2015-01-20 09:26:38.133' AS DateTime), CAST(N'2015-01-18 15:48:03.000' AS DateTime), N'checked unit ok, filters did not need cleaning at this time', 1, CAST(N'2015-01-16 09:26:38.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20217, 327, CAST(N'2015-01-20 09:26:39.660' AS DateTime), CAST(N'2015-01-18 15:48:01.000' AS DateTime), N'checked unit it was ok, filters did not need cleaning at this time', 1, CAST(N'2015-01-20 09:26:39.660' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20218, 324, CAST(N'2015-01-20 09:26:41.157' AS DateTime), CAST(N'2015-01-18 15:47:53.000' AS DateTime), N'checked unit ok did not need filters change at this time', 1, CAST(N'2015-01-16 09:26:41.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20219, 326, CAST(N'2015-01-20 09:26:43.183' AS DateTime), CAST(N'2015-01-18 15:47:45.000' AS DateTime), N'checked unit ok, unit did not need filter change at this time', 1, CAST(N'2015-01-16 09:26:43.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20220, 325, CAST(N'2015-01-20 09:26:45.320' AS DateTime), CAST(N'2015-01-18 15:47:43.000' AS DateTime), N'checked unit ok, unit did not need filter change at this time', 1, CAST(N'2015-01-16 09:26:45.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20221, 61, CAST(N'2015-01-20 09:26:51.170' AS DateTime), CAST(N'2015-01-16 11:40:31.180' AS DateTime), N'purged and flexed all fine air diffusers in aeration basin', 1, CAST(N'2015-01-16 09:26:51.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20222, 221, CAST(N'2015-01-20 09:26:57.240' AS DateTime), CAST(N'2015-01-16 11:34:41.740' AS DateTime), N'inspected conveyor belt tracking and alignment both were ok, scraper was ok no adjustment needed at this time', 1, CAST(N'2015-01-16 09:26:57.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20223, 282, CAST(N'2015-01-20 09:27:19.530' AS DateTime), CAST(N'2015-01-16 11:34:35.950' AS DateTime), N'checked uint for leaks, extra vibration, noise or heat build up all were ok, output was ok  ', 1, CAST(N'2015-01-16 09:27:19.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20224, 285, CAST(N'2015-01-20 09:27:27.147' AS DateTime), CAST(N'2015-01-15 10:46:30.000' AS DateTime), N'removed covers inspected spiral, brushes and spray openings all were ok ', 1, CAST(N'2015-01-16 09:27:27.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20225, 328, CAST(N'2015-01-20 09:34:28.720' AS DateTime), CAST(N'2015-01-22 15:47:51.283' AS DateTime), N'checked unit ok, filters did not need cleaning at this time', 1, CAST(N'2015-01-16 09:34:28.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20226, 250, CAST(N'2015-01-20 10:02:14.227' AS DateTime), CAST(N'2015-01-01 10:27:51.887' AS DateTime), N'checked valve for regulation and continuous leakage both were ok vent was ok no water found ', 1, CAST(N'2015-01-16 10:02:14.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20227, 284, CAST(N'2015-01-20 10:02:24.693' AS DateTime), CAST(N'2015-01-01 10:40:26.000' AS DateTime), N'inspected control panel found no leaks or signs of water, conduit entries were ok, replaced vapor corrosion inhibitor  ', 1, CAST(N'2015-01-16 10:02:24.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20228, 246, CAST(N'2015-01-20 10:13:56.167' AS DateTime), CAST(N'2015-01-06 09:20:03.207' AS DateTime), N'motor was clean vent was clear, found no loose fasteners, vibration was ok, stuffing box was ok ', 1, CAST(N'2015-01-16 10:13:56.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20229, 248, CAST(N'2015-01-20 10:13:57.930' AS DateTime), CAST(N'2015-01-06 09:20:05.217' AS DateTime), N'motor was clean, vent was clear, vibration was ok, found no loose fasteneres, stuffing box was ok ', 1, CAST(N'2015-01-16 10:13:57.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20230, 136, CAST(N'2015-01-20 10:55:43.777' AS DateTime), CAST(N'2015-01-21 16:03:05.737' AS DateTime), N'did a walk around check,checked coolant level, both air filters, battery electrolyte levels in all batterys and water jacket heater all were ok ', 1, CAST(N'2015-01-20 10:55:43.777' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20231, 283, CAST(N'2015-01-20 11:15:29.570' AS DateTime), CAST(N'2015-01-03 11:41:19.043' AS DateTime), N'removed covers cleaned strainer and checked spray wash system and hardware all were ok, checked nozzles for blockage they were ok, alignment of nozzles were ok ', 1, CAST(N'2015-01-16 11:15:29.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20232, 185, CAST(N'2015-01-20 15:20:29.653' AS DateTime), CAST(N'2015-01-04 15:46:09.047' AS DateTime), N'checked all hand rails and floor plates found no loose fasteners, bridge expansion connection was free', 1, CAST(N'2015-01-20 15:20:29.653' AS DateTime), N'RK /AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20233, 191, CAST(N'2015-01-20 15:20:31.807' AS DateTime), CAST(N'2015-01-04 15:46:06.143' AS DateTime), N'greased fitting located on hub, and checked setscrews and key also checked and adjusted on limit switch alignment. ', 1, CAST(N'2015-01-20 15:20:31.807' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20234, 186, CAST(N'2015-01-20 15:20:34.267' AS DateTime), CAST(N'2015-01-04 15:46:04.260' AS DateTime), N'checked condition of oil found very fine particles only no water, check to see that all stop block bolts were in place and ok, ', 1, CAST(N'2015-01-20 15:20:34.267' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20235, 187, CAST(N'2015-01-20 15:20:43.723' AS DateTime), CAST(N'2015-01-04 15:46:02.540' AS DateTime), N'checked oil level it was a little low add oil ', 1, CAST(N'2015-01-20 15:20:43.723' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20236, 188, CAST(N'2015-01-20 15:20:46.563' AS DateTime), CAST(N'2015-01-04 15:46:00.857' AS DateTime), N'checked sprockets alignment and set screws both were ok, tighten chain, wear on chain was ok ', 1, CAST(N'2015-01-20 15:20:46.563' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20237, 190, CAST(N'2015-01-20 15:20:48.640' AS DateTime), CAST(N'2015-01-04 15:45:59.263' AS DateTime), N'checked vent ok,  greased both fittings on worm gear two shots each, checked oil condition and level only found very fine particles the level was ok ', 1, CAST(N'2015-01-20 15:20:48.640' AS DateTime), N'AW /RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20238, 262, CAST(N'2015-01-22 14:25:57.423' AS DateTime), CAST(N'2015-01-01 10:27:57.880' AS DateTime), N'tightened packing, greased bearings upper and lower, reported a banging noise to Mike from SU, also showed  Fred while he was here send pics of back wash valves  to Scott H with SU, ', 1, CAST(N'2015-01-22 14:25:57.423' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20239, 255, CAST(N'2015-01-22 14:25:59.073' AS DateTime), CAST(N'2015-01-01 10:28:00.140' AS DateTime), N'tightened packing and upper bearing, removed cover on strainer housing checked drum and media found no problem, reported a banging noise to Mike M with SU show Fred with SU he asked me to send pics to Scott H with SU so I did, also talked to Mike M with SP Kinney he is to call me back ', 1, CAST(N'2015-01-22 14:25:59.073' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20240, 221, CAST(N'2015-01-26 09:39:38.573' AS DateTime), CAST(N'2015-01-23 09:26:57.000' AS DateTime), N'checked tracking and aligment was ok, scraper did not need adjustment at this time ', 1, CAST(N'2015-01-26 09:39:38.573' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20241, 282, CAST(N'2015-01-26 09:39:40.740' AS DateTime), CAST(N'2015-01-23 09:27:19.000' AS DateTime), N'checked for leaks, noise and heat build up all were ok, vibration was ok, output was ok ', 1, CAST(N'2015-01-23 09:39:40.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20242, 246, CAST(N'2015-01-26 09:39:54.487' AS DateTime), CAST(N'2015-01-23 10:13:56.000' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, stuffing box was ok ', 1, CAST(N'2015-01-23 09:39:54.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20243, 248, CAST(N'2015-01-26 09:39:56.263' AS DateTime), CAST(N'2015-01-23 10:13:57.000' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, stuffing box was ok, ', 1, CAST(N'2015-01-23 09:39:56.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20244, 345, CAST(N'2015-01-26 15:00:53.920' AS DateTime), CAST(N'2015-01-30 11:41:22.770' AS DateTime), N'checked fan listened for excessive noise and vibration both were ok, did not hear any belt noise, all checks were made from the ground', 1, CAST(N'2015-01-26 15:00:53.920' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20245, 347, CAST(N'2015-01-26 15:00:55.553' AS DateTime), CAST(N'2015-01-30 11:41:22.770' AS DateTime), N'checked fan for excessive noise and vibration both were ok, did not hear any belt noise, all checks were made from the ground', 1, CAST(N'2015-01-26 15:00:55.553' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20246, 360, CAST(N'2015-01-26 15:00:57.223' AS DateTime), CAST(N'2015-01-30 11:41:22.770' AS DateTime), N'checked fan and thermostat from the ground both were ok, did not hear any excessive noise or vibration, did not hear any belt noise', 1, CAST(N'2015-01-26 15:00:57.223' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20247, 362, CAST(N'2015-01-26 15:00:58.860' AS DateTime), CAST(N'2015-01-30 11:41:22.770' AS DateTime), N'checked fan and thermostat from the ground both were ok, did not hear any excessive noise or vibration, did not hear any belt noise', 1, CAST(N'2015-01-26 15:00:58.860' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20248, 364, CAST(N'2015-01-26 15:01:00.500' AS DateTime), CAST(N'2015-01-30 11:41:22.770' AS DateTime), N'checked from the ground fan and thermostat both worked ok, heard no escessive noise or vibration, did not hear any belt noise ', 1, CAST(N'2015-01-26 15:01:00.500' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20249, 248, CAST(N'2015-01-26 15:01:03.080' AS DateTime), CAST(N'2015-01-30 09:39:56.000' AS DateTime), N'motor and drive were clean, vent was clear, found no loose fasteners, stuffing box was ok, pump was not running at this time  ', 1, CAST(N'2015-01-26 15:01:03.080' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20250, 246, CAST(N'2015-01-26 15:01:05.110' AS DateTime), CAST(N'2015-01-30 09:39:54.000' AS DateTime), N'motor and drive was clean, vent was clear, found no loose fasteners, stuffing box was ok ', 1, CAST(N'2015-01-26 15:01:05.110' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20251, 282, CAST(N'2015-01-26 15:01:08.867' AS DateTime), CAST(N'2015-01-30 09:39:40.000' AS DateTime), N'checked washer for leaks, excess noise and heat all were ok, output was ok ', 1, CAST(N'2015-01-26 15:01:08.867' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20252, 151, CAST(N'2015-01-26 15:01:11.113' AS DateTime), CAST(N'2015-01-27 13:41:44.283' AS DateTime), N'checked vibration, lube level, PRV and expansion joint all were ok ', 1, CAST(N'2015-01-26 15:01:11.113' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20253, 58, CAST(N'2015-01-26 15:01:12.940' AS DateTime), CAST(N'2015-01-27 13:41:42.503' AS DateTime), N'checked vibration, lube level, PVR, and expansion joint all were ok ', 1, CAST(N'2015-01-26 15:01:12.940' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20254, 147, CAST(N'2015-01-26 15:01:14.517' AS DateTime), CAST(N'2015-01-27 13:41:40.787' AS DateTime), N'checked lube level, PVR, vibration and expansion joint  all were ok ', 1, CAST(N'2015-01-26 15:01:14.517' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20255, 136, CAST(N'2015-01-26 15:01:19.647' AS DateTime), CAST(N'2015-01-27 10:55:43.777' AS DateTime), N'did a walk around inspection checked coolant level, oil level, both air filters, battery electrolyte level in all batterys and water jacket heater temp all were ok ', 1, CAST(N'2015-01-26 15:01:19.647' AS DateTime), N'AW / RK ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20256, 61, CAST(N'2015-01-26 15:01:22.737' AS DateTime), CAST(N'2015-01-23 09:26:51.000' AS DateTime), N'purged and flex all fine air diffusers in aeration basin ', 1, CAST(N'2015-01-26 15:01:22.737' AS DateTime), N'RK / TS / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20257, 162, CAST(N'2015-01-27 16:04:46.293' AS DateTime), CAST(N'2014-12-30 07:50:58.000' AS DateTime), N'checked amps on both heater one had 3.1 amps one had 3.2 amps total amps 6.3, heat seem to be workiing correctly', 1, CAST(N'2015-01-27 16:04:46.293' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20258, 163, CAST(N'2015-01-27 16:05:56.323' AS DateTime), CAST(N'2015-01-04 11:45:40.917' AS DateTime), N'checked tank insulation found only a small crack on top near pick up hole', 1, CAST(N'2015-01-27 16:05:56.323' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20259, 203, CAST(N'2015-01-29 15:05:59.950' AS DateTime), CAST(N'2015-01-04 15:32:13.370' AS DateTime), N'checked hand rails and floor plates all were ok found no loose fasteners, bridge expansion plate was free to move ', 1, CAST(N'2015-01-20 15:05:59.000' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20260, 208, CAST(N'2015-01-29 15:06:01.260' AS DateTime), CAST(N'2015-01-04 15:32:11.527' AS DateTime), N'greased fitting on shear pin sprocket remove shear pin and rotated hub and lubed face plate, check setscrews and key and adjusted on limit switch trip aligment ', 1, CAST(N'2015-01-20 15:06:01.000' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20261, 204, CAST(N'2015-01-29 15:06:02.697' AS DateTime), CAST(N'2015-01-04 15:32:09.297' AS DateTime), N'checked condition of oil found no water and only very fine particles, checked stop blocks all were ok ', 1, CAST(N'2015-01-20 15:06:02.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20262, 205, CAST(N'2015-01-29 15:06:04.460' AS DateTime), CAST(N'2015-01-04 15:32:03.570' AS DateTime), N'checked oil level add a small amount to bring level to middle of sight glass', 1, CAST(N'2015-01-20 15:06:04.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20263, 206, CAST(N'2015-01-29 15:06:05.787' AS DateTime), CAST(N'2015-01-04 15:32:01.933' AS DateTime), N'checked sprocket alignment and chain for wear, checked setscrews and keys all were ok, tighten slack in chain and lubed chain', 1, CAST(N'2015-01-20 15:06:05.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20264, 207, CAST(N'2015-01-29 15:06:10.747' AS DateTime), CAST(N'2015-01-04 15:31:59.330' AS DateTime), N'checked vent, greased worm gear two shots each, checked oil condition found only very fine particles and no water ', 1, CAST(N'2015-01-20 15:06:10.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20265, 61, CAST(N'2015-02-03 11:04:27.013' AS DateTime), CAST(N'2015-02-02 15:01:22.737' AS DateTime), N'purged and flexed all fine air diffusers in aeration basin', 1, CAST(N'2015-02-03 11:04:27.013' AS DateTime), N'RK /AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20266, 225, CAST(N'2015-02-06 07:25:54.237' AS DateTime), CAST(N'2015-01-10 07:56:59.000' AS DateTime), N'cleaned screen and brushes, checked the belat and over load both were ok, found no loose fasteners and greased all fittings ', 1, CAST(N'2015-02-05 07:25:54.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20267, 230, CAST(N'2015-02-06 07:25:55.547' AS DateTime), CAST(N'2015-01-10 07:56:56.000' AS DateTime), N'cleaned screen and brushes, checked belt and overload both were ok, found no loose fasteners and greased all fittings ', 1, CAST(N'2015-02-05 07:25:55.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20268, 101, CAST(N'2015-02-06 13:31:00.627' AS DateTime), CAST(N'2015-02-09 15:54:57.857' AS DateTime), N'checked oil level it was a little low add oil', 1, CAST(N'2015-02-06 13:31:00.627' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20269, 114, CAST(N'2015-02-06 13:31:02.367' AS DateTime), CAST(N'2015-02-09 15:54:59.723' AS DateTime), N'checked oil it was ok ', 1, CAST(N'2015-02-06 13:31:02.367' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20270, 115, CAST(N'2015-02-06 13:31:04.037' AS DateTime), CAST(N'2015-02-09 15:55:01.417' AS DateTime), N'checked oil level it was ok ', 1, CAST(N'2015-02-06 13:31:04.037' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20271, 116, CAST(N'2015-02-06 13:31:05.847' AS DateTime), CAST(N'2015-02-09 15:55:03.190' AS DateTime), N'checked oil level it was ok ', 1, CAST(N'2015-02-06 13:31:05.847' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20272, 117, CAST(N'2015-02-06 13:31:07.843' AS DateTime), CAST(N'2015-02-09 15:55:05.137' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-02-06 13:31:07.843' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20273, 118, CAST(N'2015-02-06 13:31:09.920' AS DateTime), CAST(N'2015-02-09 15:55:07.100' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-02-06 13:31:09.920' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20274, 119, CAST(N'2015-02-06 13:31:11.697' AS DateTime), CAST(N'2015-02-09 15:55:09.223' AS DateTime), N'checked oil level it was ok found no oil leaks ', 1, CAST(N'2015-02-06 13:31:11.697' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20275, 120, CAST(N'2015-02-06 13:31:14.270' AS DateTime), CAST(N'2015-02-09 15:55:11.377' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-02-06 13:31:14.270' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20276, 121, CAST(N'2015-02-06 13:31:20.090' AS DateTime), CAST(N'2015-02-09 15:55:15.993' AS DateTime), N'checked oil level it was ok found no oil leaks', 1, CAST(N'2015-02-06 13:31:20.090' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20277, 122, CAST(N'2015-02-06 13:31:21.557' AS DateTime), CAST(N'2015-02-09 15:55:17.633' AS DateTime), N'checked oil level it was ok found no oil leaks ', 1, CAST(N'2015-02-06 13:31:21.557' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20278, 123, CAST(N'2015-02-06 13:31:23.333' AS DateTime), CAST(N'2015-02-09 15:55:19.473' AS DateTime), N'checked oil level it was ok found no oil leaks ', 1, CAST(N'2015-02-06 13:31:23.333' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20279, 124, CAST(N'2015-02-06 13:31:25.067' AS DateTime), CAST(N'2015-02-09 15:55:21.543' AS DateTime), N'checked oil level it was ok found no oil leaks ', 1, CAST(N'2015-02-06 13:31:25.067' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20280, 351, CAST(N'2015-02-06 13:31:41.330' AS DateTime), CAST(N'2015-02-09 15:54:49.617' AS DateTime), N'checked unit drains and filters all were ok ', 1, CAST(N'2015-02-06 13:31:41.330' AS DateTime), N'')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20281, 352, CAST(N'2015-02-06 13:31:43.113' AS DateTime), CAST(N'2015-02-09 15:54:47.493' AS DateTime), N'checked unit drains and filters all were ok ', 1, CAST(N'2015-02-06 13:31:43.113' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20282, 353, CAST(N'2015-02-06 13:31:44.567' AS DateTime), CAST(N'2015-02-09 15:54:45.120' AS DateTime), N'checked unit drains and filters all were ok ', 1, CAST(N'2015-02-06 13:31:44.567' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20283, 354, CAST(N'2015-02-06 13:31:46.187' AS DateTime), CAST(N'2015-02-09 15:54:43.300' AS DateTime), N'checked unit drains and filters all were ok ', 1, CAST(N'2015-02-06 13:31:46.187' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20284, 355, CAST(N'2015-02-06 13:31:48.183' AS DateTime), CAST(N'2015-02-09 15:54:41.407' AS DateTime), N' checked unit drains and filters all were ok ', 1, CAST(N'2015-02-06 13:31:48.183' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20285, 356, CAST(N'2015-02-06 13:31:49.713' AS DateTime), CAST(N'2015-02-09 15:54:39.593' AS DateTime), N'checked unit drains and filters all were ok ', 1, CAST(N'2015-02-06 13:31:49.713' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20286, 136, CAST(N'2015-02-06 13:31:54.783' AS DateTime), CAST(N'2015-02-02 15:01:19.647' AS DateTime), N'Blanchard came to do PM2 E.O.C.XX , it was done by Brooke Cranford paper work is in O&M ', 1, CAST(N'2015-02-06 13:31:54.783' AS DateTime), N'Brooke Cranford ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20287, 282, CAST(N'2015-02-06 13:31:58.403' AS DateTime), CAST(N'2015-02-02 15:01:08.867' AS DateTime), N'checked screenings washer for leaks, excess vibration, heat and noise, found a little extra noise seem to be in motor of gear box to auger will call Tom with Heyward on Monday, auger output was ok  ', 1, CAST(N'2015-02-06 13:31:58.403' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20288, 246, CAST(N'2015-02-06 13:31:59.820' AS DateTime), CAST(N'2015-02-02 15:01:05.110' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, vibration was ok and stuffing box was good ', 1, CAST(N'2015-02-06 13:31:59.820' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20289, 248, CAST(N'2015-02-06 13:32:01.273' AS DateTime), CAST(N'2015-02-02 15:01:03.080' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, vibration was ok and stuffing box was good ', 1, CAST(N'2015-02-06 13:32:01.273' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20290, 221, CAST(N'2015-02-06 13:32:04.020' AS DateTime), CAST(N'2015-02-02 09:39:38.573' AS DateTime), N'checked belt tracking and alignment both were ok, did not work on scraper at this time, conveyor pan needs cleaning ', 1, CAST(N'2015-02-06 13:32:04.020' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20291, 271, CAST(N'2015-02-06 13:32:10.727' AS DateTime), CAST(N'2015-01-03 11:46:12.167' AS DateTime), N'removed cover checked v belts all were ok did not check air release valve it will be check on different work order', 1, CAST(N'2015-02-06 13:32:10.727' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20292, 274, CAST(N'2015-02-06 13:32:12.350' AS DateTime), CAST(N'2015-01-03 11:46:10.450' AS DateTime), N'removed cover and checked v belt all were ok reinstalled cover, did not check air release valve it will be checked on different work order', 1, CAST(N'2015-02-06 13:32:12.350' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20293, 277, CAST(N'2015-02-06 13:32:13.817' AS DateTime), CAST(N'2015-01-03 11:46:08.843' AS DateTime), N'removed cover  checked v belts all were ok, did not check air release valve it will be check on different work order', 1, CAST(N'2015-02-06 13:32:13.817' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20294, 150, CAST(N'2015-02-06 15:25:08.103' AS DateTime), CAST(N'2015-02-02 16:11:09.637' AS DateTime), N'changed oil in blowers oil side,  filled with AEON oil to middle of sight glass, grease other side of blower ', 1, CAST(N'2015-02-03 15:25:08.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20295, 70, CAST(N'2015-02-06 15:25:09.733' AS DateTime), CAST(N'2015-02-02 16:11:11.287' AS DateTime), N'changed oil both sides, filled with AEON oil to middle of sight glass on both sides ', 1, CAST(N'2015-02-03 15:25:09.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20296, 57, CAST(N'2015-02-06 15:25:11.513' AS DateTime), CAST(N'2015-02-02 16:11:13.550' AS DateTime), N'checked oil levels both were ok blower needs oil change ', 1, CAST(N'2015-02-06 15:25:11.513' AS DateTime), N'AW / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20297, 221, CAST(N'2015-02-09 15:40:41.073' AS DateTime), CAST(N'2015-02-13 13:32:04.020' AS DateTime), N'checked belt alignment and tracking belt was ok found drive shaft loose in bearings and running in and out, gear box was rubbing the frame of the conveyor, adjust shaft and tightened setscrews on bearings, also cleaned scraper and under tray of conveyor ', 1, CAST(N'2015-02-09 15:40:41.073' AS DateTime), N'RK / AW / JP / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20298, 248, CAST(N'2015-02-09 15:40:44.100' AS DateTime), CAST(N'2015-02-13 13:32:01.273' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, vibration and stuffing box was ok ', 1, CAST(N'2015-02-09 15:40:44.100' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20299, 246, CAST(N'2015-02-09 15:40:46.377' AS DateTime), CAST(N'2015-02-13 13:31:59.820' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, vibration and stuffing box was ok ', 1, CAST(N'2015-02-09 15:40:46.377' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20300, 282, CAST(N'2015-02-09 15:40:48.470' AS DateTime), CAST(N'2015-02-13 13:31:58.403' AS DateTime), N'checked screenings washer for leaks, excess vibration, noise and heat build up all were ok solids output was ok ', 1, CAST(N'2015-02-09 15:40:48.470' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20301, 136, CAST(N'2015-02-09 15:40:51.180' AS DateTime), CAST(N'2015-02-13 13:31:54.783' AS DateTime), N'did a walk around inspection and checked coolant level, oil level, both air filters, battery electrolyte in all batterys and water jacket heat all were ok ', 1, CAST(N'2015-02-09 15:40:51.180' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20302, 61, CAST(N'2015-02-09 15:40:59.963' AS DateTime), CAST(N'2015-02-10 11:04:27.013' AS DateTime), N'purged and flexed all fine air diffusers in aeration basin', 1, CAST(N'2015-02-09 15:40:59.963' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20303, 322, CAST(N'2015-02-12 16:16:31.480' AS DateTime), CAST(N'2015-01-03 11:41:54.550' AS DateTime), N'drive was clean, vent was clear, found no loose fasteners, vibration and seals were ok, we test ran pump', 1, CAST(N'2015-02-12 16:16:31.480' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20304, 298, CAST(N'2015-02-12 16:16:34.497' AS DateTime), CAST(N'2015-02-12 16:15:18.953' AS DateTime), N'drive was clean, vent was clear, found no loose fasteners, vibration and seals were ok, we test ran pump ', 1, CAST(N'2015-02-12 16:16:34.497' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20305, 306, CAST(N'2015-02-12 16:16:36.003' AS DateTime), CAST(N'2015-02-12 16:15:20.390' AS DateTime), N'drive was clean, vent was clear, found no loose fasteners, vibration and seals were ok, we test ran pump', 1, CAST(N'2015-02-12 16:16:36.003' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20306, 310, CAST(N'2015-02-12 16:16:37.893' AS DateTime), CAST(N'2015-02-12 16:15:21.870' AS DateTime), N'drive was clean, vent was clear, found no loose fasteners, vibration and seals were ok, we test ran pump', 1, CAST(N'2015-02-12 16:16:37.893' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20307, 314, CAST(N'2015-02-12 16:16:40.137' AS DateTime), CAST(N'2015-02-12 16:15:23.310' AS DateTime), N'drive was clean, vent was clear, found no loose fasteners, vibration and seals were ok, we test ran pump', 1, CAST(N'2015-02-12 16:16:40.137' AS DateTime), N'RK / AW')
GO
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20308, 318, CAST(N'2015-02-12 16:16:41.697' AS DateTime), CAST(N'2015-02-12 16:15:25.163' AS DateTime), N'drive was clean, vent was clear, found no loose fasteners, vibration and seals were ok, we test ran pump', 1, CAST(N'2015-02-12 16:16:41.697' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20309, 278, CAST(N'2015-02-13 15:09:47.390' AS DateTime), CAST(N'2015-02-12 16:11:36.357' AS DateTime), N'lubed drive chain and trunnion wheels, checked oil level in drive unit gear reducer and floc tank mixer all were ok ', 1, CAST(N'2015-02-13 15:09:47.390' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20310, 280, CAST(N'2015-02-13 15:09:48.607' AS DateTime), CAST(N'2015-02-12 16:11:34.750' AS DateTime), N'lubed chain on drive, lubed trunnion wheels, checked oil level in gear reducer on drive unit and floc tank mixer all were ok ', 1, CAST(N'2015-02-13 15:09:48.607' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20311, 265, CAST(N'2015-02-13 15:29:16.520' AS DateTime), CAST(N'2015-02-14 16:02:44.737' AS DateTime), N'checked unit it was operating properly, tubing and fittings all were ok, flushed mixing tank ', 1, CAST(N'2015-02-13 15:29:16.520' AS DateTime), N'JP / TS')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20312, 267, CAST(N'2015-02-13 15:29:17.920' AS DateTime), CAST(N'2015-02-09 16:02:46.000' AS DateTime), N'inspected unit it was operating properly, tubing and fittings were ok ', 1, CAST(N'2015-02-13 15:29:17.920' AS DateTime), N'JP / TS ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20313, 327, CAST(N'2015-02-16 11:26:40.527' AS DateTime), CAST(N'2015-02-20 09:26:39.660' AS DateTime), N'checked unit and filters all was ok ', 1, CAST(N'2015-02-16 11:26:40.527' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20314, 328, CAST(N'2015-02-16 11:26:50.897' AS DateTime), CAST(N'2015-02-16 09:34:28.000' AS DateTime), N'checked unit and filters all was ok ', 1, CAST(N'2015-02-16 11:26:50.897' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20315, 325, CAST(N'2015-02-16 11:26:52.537' AS DateTime), CAST(N'2015-02-16 09:26:45.000' AS DateTime), N'checked unit and filters all was ok ', 1, CAST(N'2015-02-16 11:26:52.537' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20316, 326, CAST(N'2015-02-16 11:26:54.453' AS DateTime), CAST(N'2015-02-16 09:26:43.000' AS DateTime), N'checked unit and filters, unit was ok, replaced all three filters', 1, CAST(N'2015-02-16 11:26:54.453' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20317, 324, CAST(N'2015-02-16 11:26:56.187' AS DateTime), CAST(N'2015-02-16 09:26:41.000' AS DateTime), N'checked unit and filters all was ok,', 1, CAST(N'2015-02-16 11:26:56.187' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20318, 329, CAST(N'2015-02-16 11:26:57.747' AS DateTime), CAST(N'2015-02-16 09:26:38.000' AS DateTime), N'unit is ok, unit has been used very little ', 1, CAST(N'2015-02-16 11:26:57.747' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20319, 136, CAST(N'2015-02-16 15:56:46.060' AS DateTime), CAST(N'2015-02-16 15:40:51.180' AS DateTime), N'did walk around inspection, also checked oil level, both air filters, battery electrolyte in all batterys and water jacket heater all were ok ', 1, CAST(N'2015-02-16 15:56:46.060' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20320, 246, CAST(N'2015-02-16 15:56:52.813' AS DateTime), CAST(N'2015-02-16 15:40:46.377' AS DateTime), N'motor clean, vent was clear, found no loose fasteners, pump was not running at this time ', 1, CAST(N'2015-02-16 15:56:52.813' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20321, 248, CAST(N'2015-02-16 15:56:55.313' AS DateTime), CAST(N'2015-02-16 15:40:44.100' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, vibration and stuffing box were ok ', 1, CAST(N'2015-02-16 15:56:55.313' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20322, 250, CAST(N'2015-02-16 15:57:03.857' AS DateTime), CAST(N'2015-02-16 10:02:14.000' AS DateTime), N'valve regulated properly it had continuous leakage through valve, ', 1, CAST(N'2015-02-16 15:57:03.857' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20323, 282, CAST(N'2015-02-19 08:21:26.530' AS DateTime), CAST(N'2015-02-16 15:40:48.470' AS DateTime), N'checked screeings washer for leaks, noise, and excess heat build up, vibration and solids reduction all was ok water system of due to cold temps ', 1, CAST(N'2015-02-18 08:21:26.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20324, 221, CAST(N'2015-02-19 08:21:29.937' AS DateTime), CAST(N'2015-02-16 15:40:41.073' AS DateTime), N'checked belt tracking and alignment both were ok, scraper was ok at this time ', 1, CAST(N'2015-02-18 08:21:29.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20325, 283, CAST(N'2015-02-19 08:21:32.847' AS DateTime), CAST(N'2015-02-16 11:15:29.000' AS DateTime), N'cleaned strainer and checked hardware, water system is turn off for now due to cold temp.', 1, CAST(N'2015-02-18 08:21:32.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20326, 61, CAST(N'2015-02-19 08:22:04.867' AS DateTime), CAST(N'2015-02-16 15:40:59.963' AS DateTime), N'purged and flex all fine air diffusers in aeration basin', 1, CAST(N'2015-02-18 08:22:04.000' AS DateTime), N'AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20327, 282, CAST(N'2015-02-19 08:22:24.950' AS DateTime), CAST(N'2015-02-16 15:40:48.470' AS DateTime), N'checked by JWC Brain he said grinder sounded ok to him and we adjusted spray wash cycles for a cleaner output', 1, CAST(N'2015-02-23 08:22:24.000' AS DateTime), N'JWC Brain / RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20328, 283, CAST(N'2015-02-19 08:22:28.397' AS DateTime), CAST(N'2015-02-16 11:15:29.000' AS DateTime), N'checked by JWC Brain, he said that the grinder sounded ok to him and we adjusted the spray wash cycles, everything else was ok ', 1, CAST(N'2015-02-23 08:22:28.000' AS DateTime), N'JWC Brian / RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20329, 221, CAST(N'2015-02-19 08:38:13.790' AS DateTime), CAST(N'2015-02-16 15:40:41.073' AS DateTime), N'checked belt tracking and alignment both were ok, cleaned off scraper', 1, CAST(N'2015-02-27 08:38:13.000' AS DateTime), N'RK ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20330, 152, CAST(N'2015-02-19 08:54:07.497' AS DateTime), CAST(N'2015-02-19 08:35:39.000' AS DateTime), N'changed oil and checked filter, refilled both sides of blower to middle of sight glass, used AEON PD oil, hours on blower were 1726 ', 1, CAST(N'2015-02-03 08:54:07.000' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20331, 148, CAST(N'2015-02-19 08:54:17.497' AS DateTime), CAST(N'2015-02-19 08:35:39.000' AS DateTime), N'changed oil used AEON PD oil, fill to middle of sight glass on both sides, checked and replaced air filter, blower hours at time of oil change was 1726 ', 1, CAST(N'2015-02-19 08:54:17.497' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20332, 136, CAST(N'2015-03-02 08:21:19.727' AS DateTime), CAST(N'2015-02-23 15:56:46.060' AS DateTime), N'did a walk around inspection, checked oil level, both air filters, battery electrolyte levels in all batterys and water jacket heater all were ok ', 1, CAST(N'2015-03-27 08:21:19.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20333, 246, CAST(N'2015-03-02 08:21:23.110' AS DateTime), CAST(N'2015-02-23 15:56:52.813' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, stuffing box was ok ', 1, CAST(N'2015-03-27 08:21:23.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20334, 248, CAST(N'2015-03-02 08:21:25.670' AS DateTime), CAST(N'2015-02-23 15:56:55.313' AS DateTime), N'motor was clean, vent was clear, found no loose fasteners, stuffing box was ok  ', 1, CAST(N'2015-03-27 08:21:25.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20335, 61, CAST(N'2015-03-02 08:22:04.013' AS DateTime), CAST(N'2015-02-25 08:22:04.000' AS DateTime), N'purged and flex all fine air diffusers in aeration basin', 1, CAST(N'2015-03-27 08:22:04.000' AS DateTime), N'RK')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20336, 101, CAST(N'2015-03-02 13:36:25.697' AS DateTime), CAST(N'2015-03-06 13:31:00.627' AS DateTime), N'checked oil level ok found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:25.697' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20337, 114, CAST(N'2015-03-02 13:36:27.880' AS DateTime), CAST(N'2015-03-06 13:31:02.367' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:27.880' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20338, 115, CAST(N'2015-03-02 13:36:29.873' AS DateTime), CAST(N'2015-03-06 13:31:04.037' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:29.873' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20339, 116, CAST(N'2015-03-02 13:36:31.780' AS DateTime), CAST(N'2015-03-06 13:31:05.847' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:31.780' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20340, 117, CAST(N'2015-03-02 13:36:33.730' AS DateTime), CAST(N'2015-03-06 13:31:07.843' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:33.730' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20341, 118, CAST(N'2015-03-02 13:36:35.617' AS DateTime), CAST(N'2015-03-06 13:31:09.920' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:35.617' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20342, 119, CAST(N'2015-03-02 13:36:37.397' AS DateTime), CAST(N'2015-03-06 13:31:11.697' AS DateTime), N'checked oil level ok, found no oil leaks no adjustment needed', 1, CAST(N'2015-03-02 13:36:37.397' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20343, 120, CAST(N'2015-03-02 13:36:39.640' AS DateTime), CAST(N'2015-03-06 13:31:14.270' AS DateTime), N'checked oil level ok, found no oil leaks no adjustment needed', 1, CAST(N'2015-03-02 13:36:39.640' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20344, 121, CAST(N'2015-03-02 13:36:41.530' AS DateTime), CAST(N'2015-03-06 13:31:20.090' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:41.530' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20345, 122, CAST(N'2015-03-02 13:36:45.740' AS DateTime), CAST(N'2015-03-06 13:31:21.557' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:45.740' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20346, 123, CAST(N'2015-03-02 13:36:47.627' AS DateTime), CAST(N'2015-03-06 13:31:23.333' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:47.627' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20347, 124, CAST(N'2015-03-02 13:36:49.330' AS DateTime), CAST(N'2015-03-06 13:31:25.067' AS DateTime), N'checked oil level ok, found no oil leaks and no adjustment was needed', 1, CAST(N'2015-03-02 13:36:49.330' AS DateTime), N'RK / AW')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20348, 353, CAST(N'2015-03-02 14:43:59.517' AS DateTime), CAST(N'2015-03-06 13:31:44.567' AS DateTime), N'checked unit and air filters all were ok ', 1, CAST(N'2015-03-02 14:43:59.517' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20349, 354, CAST(N'2015-03-02 14:44:00.937' AS DateTime), CAST(N'2015-03-06 13:31:46.187' AS DateTime), N'checked unit and air filters all were ok ', 1, CAST(N'2015-03-02 14:44:00.937' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20350, 355, CAST(N'2015-03-02 14:44:02.533' AS DateTime), CAST(N'2015-03-06 13:31:48.183' AS DateTime), N'checked unit and air filters all were ok ', 1, CAST(N'2015-03-02 14:44:02.533' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20351, 356, CAST(N'2015-03-02 14:44:03.917' AS DateTime), CAST(N'2015-03-06 13:31:49.713' AS DateTime), N'checked unit and all air filters all were ok ', 1, CAST(N'2015-03-02 14:44:03.917' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20352, 352, CAST(N'2015-03-02 14:46:42.303' AS DateTime), CAST(N'2015-03-06 13:31:43.113' AS DateTime), N'checked unit and all filters all were ok unit was firing', 1, CAST(N'2015-03-02 14:46:42.303' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20353, 351, CAST(N'2015-03-02 14:46:43.707' AS DateTime), CAST(N'2015-03-06 13:31:41.330' AS DateTime), N'checked unit and all air filters all were ok unit was firing', 1, CAST(N'2015-03-02 14:46:43.707' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20354, 360, CAST(N'2015-03-02 14:51:37.067' AS DateTime), CAST(N'2015-02-26 15:00:57.223' AS DateTime), N'used heater to operate systems and checked all fan best we could from the ground everything sounded ok ', 1, CAST(N'2015-03-02 14:51:37.067' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20355, 364, CAST(N'2015-03-02 14:51:39.080' AS DateTime), CAST(N'2015-02-26 15:01:00.500' AS DateTime), N'used heater to operate systems checked all fan best we could from ground all fans sounded ok ', 1, CAST(N'2015-03-02 14:51:39.080' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20356, 362, CAST(N'2015-03-02 14:51:41.730' AS DateTime), CAST(N'2015-02-26 15:00:58.860' AS DateTime), N'used heater to operate systems checked all fans best we could from ground all fans sounded ok ', 1, CAST(N'2015-03-02 14:51:41.730' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20357, 57, CAST(N'2015-03-02 14:56:21.953' AS DateTime), CAST(N'2015-02-27 15:25:11.513' AS DateTime), N'checked oil levels on both sides of blower, both were ok ', 1, CAST(N'2015-03-02 14:56:21.953' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20358, 70, CAST(N'2015-03-02 14:56:33.187' AS DateTime), CAST(N'2015-02-24 15:25:09.000' AS DateTime), N'checked oil level on both sides of blower both were ok ', 1, CAST(N'2015-03-02 14:56:33.187' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20359, 150, CAST(N'2015-03-02 14:56:34.700' AS DateTime), CAST(N'2015-02-24 15:25:08.000' AS DateTime), N'checked oil level it was ok, greased other side of blower and cleaned up expelled grease, vent was clear', 1, CAST(N'2015-03-02 14:56:34.700' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20360, 59, CAST(N'2015-03-02 14:56:43.607' AS DateTime), CAST(N'2015-02-19 08:35:39.000' AS DateTime), N'changed oil in blower both sides refilled to middle of sight glass with AEON PD oil, hours on blowere at this time was 1726, checked air filter and APR valve all were ok ', 1, CAST(N'2015-03-02 14:56:43.607' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20361, 347, CAST(N'2015-03-02 15:03:20.497' AS DateTime), CAST(N'2015-02-26 15:00:55.553' AS DateTime), N'ran fan checked as best we could from ground all was ok ', 1, CAST(N'2015-03-02 15:03:20.497' AS DateTime), N'RK / AW ')
INSERT [dbo].[WorkOrders] ([woID], [reqId], [woDateCreated], [woDateDue], [woNotes], [woComplete], [woDateCompleted], [woCompletedBy]) VALUES (20362, 345, CAST(N'2015-03-02 15:03:21.963' AS DateTime), CAST(N'2015-02-26 15:00:53.920' AS DateTime), N'ran fan checked as best we could from the ground all was ok ', 1, CAST(N'2015-03-02 15:03:21.963' AS DateTime), N'RK / AW ')
SET IDENTITY_INSERT [dbo].[WorkOrders] OFF
ALTER TABLE [dbo].[Cycles] ADD  CONSTRAINT [DF_Cycles_cyclesDate]  DEFAULT (getdate()-(1)) FOR [cyclesDate]
GO
ALTER TABLE [dbo].[Runtimes] ADD  CONSTRAINT [DF_Runtimes_runtimeDate]  DEFAULT (getdate()-(1)) FOR [runtimeDate]
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
ALTER TABLE [dbo].[WorkOrderRequests]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderRequests_WorkOrderRequests] FOREIGN KEY([reqId])
REFERENCES [dbo].[WorkOrderRequests] ([reqId])
GO
ALTER TABLE [dbo].[WorkOrderRequests] CHECK CONSTRAINT [FK_WorkOrderRequests_WorkOrderRequests]
GO
ALTER TABLE [dbo].[WorkOrders]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrders_WorkOrders] FOREIGN KEY([woID])
REFERENCES [dbo].[WorkOrders] ([woID])
GO
ALTER TABLE [dbo].[WorkOrders] CHECK CONSTRAINT [FK_WorkOrders_WorkOrders]
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Daily Total, Previous Total, or Continuous Total' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipment', @level2type=N'COLUMN',@level2name=N'hmiRuntimeCont'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Daily Total, Previous Total, or Continuous Total' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipment', @level2type=N'COLUMN',@level2name=N'hmiCyclesCont'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time in hours' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'taskEstDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[11] 4[11] 2[57] 3) )"
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
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 48
               Left = 1129
               Bottom = 139
               Right = 1280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 4
               Left = 827
               Bottom = 202
               Right = 978
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 12
               Left = 498
               Bottom = 120
               Right = 649
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
               Top = 160
               Left = 605
               Bottom = 329
               Right = 784
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "Priorities"
            Begin Extent = 
               Top = 431
               Left = 324
               Bottom = 509
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 0
               Left = 251
               Bottom = 78
               Right = 418
            End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "wo"
            Begin Extent = 
               Top = 78
               Left = 219
               Bottom = 156
               Right = 386
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 178
               Left = 325
               Bottom = 275
               Right = 492
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cyc"
            Begin Extent = 
               Top = 321
               Left = 325
               Bottom = 414
               Right = 492
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
      Begin ColumnWidths = 27
         Width = 284
         Width = 1500
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1995
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2145
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
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 7170
         Alias = 1200
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
         Configuration = "(H (1[12] 4[5] 2[46] 3) )"
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
         Left = -672
      End
      Begin Tables = 
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
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 42
               Left = 970
               Bottom = 231
               Right = 1121
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
         Begin Table = "Locations"
            Begin Extent = 
               Top = 7
               Left = 741
               Bottom = 180
               Right = 892
            E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
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
         Begin Table = "EquipmentModels"
            Begin Extent = 
               Top = 502
               Left = 740
               Bottom = 590
               Right = 891
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 31
               Left = 1319
               Bottom = 124
               Right = 1470
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
         Width = 2175
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
