USE [MRMaintenance]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequestsRtCycDue'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequestsRtCycDue'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'taskTime'

GO
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [FK_WorkOrderTasks_Tasks]
GO
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [FK_WorkOrderTasks_EquipmentModels]
GO
ALTER TABLE [dbo].[WorkOrders] DROP CONSTRAINT [FK_WorkOrders_WorkOrderRequests]
GO
ALTER TABLE [dbo].[WorkOrderRequests] DROP CONSTRAINT [FK_WorkOrderRequests_TimeIntervals]
GO
ALTER TABLE [dbo].[WorkOrderRequests] DROP CONSTRAINT [FK_WorkOrderRequests_Equipment]
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
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Equipment]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_States]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Facilities]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_EmployeeAccessLevels]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Departments] DROP CONSTRAINT [FK_Departments_Departments]
GO
ALTER TABLE [dbo].[Cycles] DROP CONSTRAINT [FK_Cycles_Equipment]
GO
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [DF_WorkOrderTasks_taskComplete]
GO
/****** Object:  View [dbo].[v_WorkOrdersDetailed]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP VIEW [dbo].[v_WorkOrdersDetailed]
GO
/****** Object:  View [dbo].[v_WorkOrders2_Obscelete]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP VIEW [dbo].[v_WorkOrders2_Obscelete]
GO
/****** Object:  View [dbo].[v_WorkOrderRequests_Obscelete]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP VIEW [dbo].[v_WorkOrderRequests_Obscelete]
GO
/****** Object:  View [dbo].[v_WorkOrderRequestsRtCycDue]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP VIEW [dbo].[v_WorkOrderRequestsRtCycDue]
GO
/****** Object:  View [dbo].[v_WorkOrderRequests]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP VIEW [dbo].[v_WorkOrderRequests]
GO
/****** Object:  Table [dbo].[WorkOrderTasks]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[WorkOrderTasks]
GO
/****** Object:  Table [dbo].[WorkOrders]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[WorkOrders]
GO
/****** Object:  Table [dbo].[WorkOrderRequests]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[WorkOrderRequests]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Vendors]
GO
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[VendorContacts]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Units]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Tools]
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[TimeIntervals]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Tasks]
GO
/****** Object:  Table [dbo].[TaskParts]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[TaskParts]
GO
/****** Object:  Table [dbo].[States]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[States]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Runtimes]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Parts]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Manufacturers]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Locations]
GO
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[InventoryLocations]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Facilities]
GO
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[EquipmentTypes]
GO
/****** Object:  Table [dbo].[EquipmentModels]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[EquipmentModels]
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[EquipmentDocs]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Equipment]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[EmployeeAccessLevels]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP TABLE [dbo].[Cycles]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDueByFacility_Obscelete]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP PROCEDURE [dbo].[spWorkOrdersDueByFacility_Obscelete]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDue_Obscelete]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP PROCEDURE [dbo].[spWorkOrdersDue_Obscelete]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDueByFacility]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderRequestsDueByFacility]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDue]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderRequestsDue]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderComplete]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderComplete]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrderRequest]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP PROCEDURE [dbo].[spCreateWorkOrderRequest]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrder]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP PROCEDURE [dbo].[spCreateWorkOrder]
GO
/****** Object:  User [mrsystems]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP USER [mrsystems]
GO
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP APPLICATION ROLE  [MRMaintenanceApp]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [aaAdmin]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [aaAdmin]
GO
/****** Object:  Login [aadbo]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [aadbo]
GO
/****** Object:  Login [aaPower]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [aaPower]
GO
/****** Object:  Login [aaUser]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [aaUser]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [ECVM-WW2014\aaAdministrators]
GO
/****** Object:  Login [ECVM-WW2014\aaPowerUsers]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [ECVM-WW2014\aaPowerUsers]
GO
/****** Object:  Login [ECVM-WW2014\aaUsers]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [ECVM-WW2014\aaUsers]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [ECVM-WW2014\ASBService]
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [ECVM-WW2014\mrsystems]
GO
/****** Object:  Login [mrsystems]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [mrsystems]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [NT SERVICE\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [NT SERVICE\ReportServer]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [wwAdmin]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [wwAdmin]
GO
/****** Object:  Login [wwdbo]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [wwdbo]
GO
/****** Object:  Login [wwPower]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [wwPower]
GO
/****** Object:  Login [wwUser]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP LOGIN [wwUser]
GO
/****** Object:  Database [MRMaintenance]    Script Date: 8/6/2014 10:39:07 PM ******/
DROP DATABASE [MRMaintenance]
GO
/****** Object:  Database [MRMaintenance]    Script Date: 8/6/2014 10:39:07 PM ******/
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
/****** Object:  Login [wwUser]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'DOpLBURJeQa2fGHBDiubaE5jc8gsNqWkFUB/mWV/80o=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'xPXzlrso2QwcPBQ0iTsbWfpoTSWoqFKqrBrpTRw6Ruc=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'MHQNyQ9hbOaPB2Ujo2I5tj4+bJPmx/WTaDvBVLhontA=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'uPiXNG07blSuPBVmuworpELy0XtowcfHxei63Nz+Ig4=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [NT SERVICE\ReportServer] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'U6UuB9fUCiJXTbGpYUzjU1ojzdd8rQpEJgGB8P0kdyA=', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [ECVM-WW2014\mrsystems] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [ECVM-WW2014\ASBService] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaUsers]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [ECVM-WW2014\aaUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaPowerUsers]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [ECVM-WW2014\aaPowerUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [ECVM-WW2014\aaAdministrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'cjB0A3oGJTLhTlGd6nCLSRIULrveXkxb0JiM8fyLx+o=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'OPo3iSBAF6WFxg16kc5TdeOZXGJfDKIXKoNEcI6jejA=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'nTeuM0q4lCJJj790/78cCsGfv+clJoPpnwiYQMFpXpE=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'1yDNoqmJPHB8HHpARumScft3ihlrY91CXdMe6b4X6C0=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'rMdXVE3hvaPdyJWUpZyYJDVp2BFWTGILowEXv9edeOw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'zhlzsN/bRetzUoJ+Vx8t9FvRXrdBUo37XiGrsdzYG0U=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
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
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 8/6/2014 10:39:07 PM ******/
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
/****** Object:  User [mrsystems]    Script Date: 8/6/2014 10:39:07 PM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
GRANT CONNECT TO [mrsystems] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrder]    Script Date: 8/6/2014 10:39:08 PM ******/
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

	INSERT INTO dbo.WorkOrders(reqId, woDateDue) 
	VALUES(@reqId, @woDateDue)
END

GO
ALTER AUTHORIZATION ON [dbo].[spCreateWorkOrder] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrderRequest]    Script Date: 8/6/2014 10:39:08 PM ******/
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
	@reqName nvarchar = NULL,
	@reqDescr nvarchar = NULL,
	@equipId bigint = NULL,
	@reqStartDate datetime = NULL,
	@timeFreq int = NULL,
	@intId bigint = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.WorkOrderRequests(reqName, reqDescr, equipId, reqStartDate, timeFreq, intId) 
	VALUES(@reqName, @reqDescr, @equipId, @reqStartDate, @timeFreq, @intId)
END

GO
ALTER AUTHORIZATION ON [dbo].[spCreateWorkOrderRequest] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderComplete]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spWorkOrderComplete]
	@woSchedId bigint = NULL
AS
DECLARE @dateTimeNow datetime = getdate()

BEGIN
	SET NOCOUNT ON;

	/* Update lastcompleted field in WOSchedules */
	UPDATE WOSchedules SET lastcompleted=@dateTimeNow WHERE woSchedId=@woSchedId

	/* Add entry in WOHistory with same completion date/time */
	INSERT INTO WOHistory(woSchedId, woHistDateTime) VALUES(@woSchedId, @dateTimeNow)
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrderComplete] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spWorkOrderComplete] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrderComplete] TO [mrsystems] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDue]    Script Date: 8/6/2014 10:39:08 PM ******/
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

	SELECT * FROM v_WorkOrderRequestsRtCycDue
	WHERE v_WorkOrderRequestsRtCycDue.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrderRequestsDue] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDueByFacility]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-21
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrderRequestsDueByFacility]
	@facilityId bigint = NULL,		 -- Facility Name
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM v_WorkOrderRequestsRtCycDue
	WHERE v_WorkOrderRequestsRtCycDue.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	AND v_WorkOrderRequestsRtCycDue.facId = @facilityId
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrderRequestsDueByFacility] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDue_Obscelete]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-10
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrdersDue_Obscelete]
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM v_WorkOrders2
	WHERE v_WorkOrders2.[Next Due] <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	OR v_WorkOrders2.Runtime >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10)
	OR v_WorkOrders2.Cycles >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10)
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrdersDue_Obscelete] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDue_Obscelete] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDue_Obscelete] TO [mrsystems] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDueByFacility_Obscelete]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-21
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrdersDueByFacility_Obscelete]
	@facilityId bigint = NULL,		 -- Facility Name
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT ID, Name, Description, [Start Date], Frequency, Interval, [Last Completed], [Next Due], Department, Equipment, Location, [Facility ID], Runtime, Cycles
	FROM v_WorkOrders2
	WHERE (v_WorkOrders2.[Next Due] <= DATEADD(DAY, @dueDateDeadband, GETDATE()) AND v_WorkOrders2.[Facility ID] = @facilityId)
	OR (v_WorkOrders2.Runtime >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10) OR v_WorkOrders2.Cycles >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10))
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrdersDueByFacility_Obscelete] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDueByFacility_Obscelete] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDueByFacility_Obscelete] TO [mrsystems] AS [dbo]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cycles](
	[cycleId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[cyclesDate] [datetime] NOT NULL,
	[cycles] [bigint] NOT NULL,
 CONSTRAINT [PK_Cycles] PRIMARY KEY CLUSTERED 
(
	[cycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Cycles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 8/6/2014 10:39:08 PM ******/
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
	[phone1] [nvarchar](10) NULL,
	[phone2] [nvarchar](10) NULL,
	[email] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Employees] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/6/2014 10:39:08 PM ******/
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
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Equipment] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[EquipmentModels]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[Facilities]    Script Date: 8/6/2014 10:39:08 PM ******/
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
	[zip] [varchar](10) NULL,
	[lat] [float] NULL,
	[long] [float] NULL,
	[phone1] [varchar](10) NULL,
	[phone2] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
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
/****** Object:  Table [dbo].[Inventory]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[Locations]    Script Date: 8/6/2014 10:39:08 PM ******/
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
	[zip] [varchar](10) NULL,
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
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 8/6/2014 10:39:08 PM ******/
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
	[zip] [varchar](10) NULL,
	[phone1] [varchar](10) NULL,
	[phone2] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
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
/****** Object:  Table [dbo].[Parts]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[partId] [bigint] IDENTITY(1,1) NOT NULL,
	[manId] [bigint] NOT NULL,
	[venId] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[descr] [varchar](255) NULL,
	[number] [nvarchar](255) NULL,
	[size] [int] NULL,
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
/****** Object:  Table [dbo].[Runtimes]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Runtimes](
	[runtimeId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[runtimeDate] [datetime] NOT NULL,
	[runtime] [float] NOT NULL,
 CONSTRAINT [PK_Runtimes] PRIMARY KEY CLUSTERED 
(
	[runtimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Runtimes] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[States]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[TaskParts]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[Tasks]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[taskId] [bigint] IDENTITY(1,1) NOT NULL,
	[taskName] [nvarchar](255) NOT NULL,
	[taskDescr] [nvarchar](4000) NOT NULL,
	[taskTime] [float] NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[taskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Tasks] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[Tools]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[Units]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[unitId] [bigint] IDENTITY(1,1) NOT NULL,
	[abbr] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[unitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Units] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/6/2014 10:39:08 PM ******/
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
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorContacts](
	[venContId] [bigint] IDENTITY(1,1) NOT NULL,
	[venId] [bigint] NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[midName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NULL,
	[phone1] [varchar](10) NULL,
	[phone2] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
	[email] [nvarchar](4000) NULL,
 CONSTRAINT [PK_VendorContacts] PRIMARY KEY CLUSTERED 
(
	[venContId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[VendorContacts] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/6/2014 10:39:08 PM ******/
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
	[zip] [varchar](10) NULL,
	[phone1] [varchar](10) NULL,
	[phone2] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
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
/****** Object:  Table [dbo].[WorkOrderRequests]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderRequests](
	[reqId] [bigint] IDENTITY(1,1) NOT NULL,
	[reqName] [nvarchar](255) NOT NULL,
	[reqDescr] [nvarchar](4000) NULL,
	[equipId] [bigint] NOT NULL,
	[reqDateSubmitted] [datetime] NOT NULL CONSTRAINT [DF_WorkOrderRequests_reqDateSubmitted]  DEFAULT (getdate()),
	[reqStartDate] [datetime] NOT NULL,
	[timeFreq] [int] NOT NULL,
	[intId] [bigint] NOT NULL,
	[lastCompleted] [datetime] NULL,
	[enabled] [bit] NOT NULL CONSTRAINT [DF_WOSchedules_enabled]  DEFAULT ((1)),
 CONSTRAINT [PK_WOSchedules] PRIMARY KEY CLUSTERED 
(
	[reqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WorkOrderRequests] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[WorkOrders]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrders](
	[woID] [bigint] IDENTITY(1,1) NOT NULL,
	[reqId] [bigint] NOT NULL,
	[woDateCreated] [datetime] NOT NULL,
	[woDateDue] [datetime] NOT NULL,
	[woNotes] [nvarchar](4000) NULL,
 CONSTRAINT [PK_WorkOrders] PRIMARY KEY CLUSTERED 
(
	[woID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WorkOrders] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[WorkOrderTasks]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderTasks](
	[woTaskId] [bigint] IDENTITY(1,1) NOT NULL,
	[modelId] [bigint] NOT NULL,
	[taskId] [bigint] NOT NULL,
	[taskComplete] [bit] NOT NULL,
	[taskDateComplete] [datetime] NULL,
	[woTaskNotes] [nvarchar](4000) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WorkOrderTasks] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrderRequests]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrderRequests]
AS
SELECT     dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.TimeIntervals.intName, 
                      dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, dbo.Equipment.equipName, dbo.Facilities.facId, dbo.Facilities.name AS facName, 
                      dbo.Locations.name AS locName, rt.runtime, cyc.cycles, CASE WHEN dbo.TimeIntervals.intAbbr = '1x' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'cyc' THEN NULL
                       WHEN dbo.TimeIntervals.intAbbr = 'rt' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'n' THEN DATEADD(MINUTE, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'h' THEN DATEADD(HOUR, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'd' THEN DATEADD(DAY, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'ww' THEN DATEADD(WEEK, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'm' THEN DATEADD(MONTH, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'q' THEN DATEADD(QUARTER, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'yyyy' THEN DATEADD(YEAR, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'w' THEN DATEADD(WEEKDAY, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'y' THEN DATEADD(DAYOFYEAR, 
                      timeFreq, lastcompleted) END AS nextDue
FROM         dbo.Locations INNER JOIN
                      dbo.Equipment ON dbo.Locations.locId = dbo.Equipment.locId INNER JOIN
                      dbo.Facilities ON dbo.Locations.facId = dbo.Facilities.facId INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId ON dbo.Equipment.equipId = dbo.WorkOrderRequests.equipId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(cycles) AS cycles
                            FROM          dbo.Cycles
                            GROUP BY equipId) AS cyc ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId RIGHT OUTER JOIN
                          (SELECT     equipId, SUM(runtime) AS runtime
                            FROM          dbo.Runtimes
                            GROUP BY equipId) AS rt ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrderRequests] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrderRequestsRtCycDue]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrderRequestsRtCycDue]
AS
SELECT     reqId, reqName, reqDescr, equipId, reqDateSubmitted, reqStartDate, timeFreq, intName, lastCompleted, enabled, equipName, facId, facName, locName, runtime, 
                      cycles, nextDue
FROM         dbo.v_WorkOrderRequests
WHERE     (runtime >= timeFreq - timeFreq * 0.10) OR
                      (cycles >= timeFreq - timeFreq * 0.10)

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrderRequestsRtCycDue] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrderRequests_Obscelete]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrderRequests_Obscelete]
AS
SELECT     dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.TimeIntervals.intName, 
                      dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, CASE WHEN dbo.TimeIntervals.intAbbr = '1x' THEN NULL 
                      WHEN dbo.TimeIntervals.intAbbr = 'cyc' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'rt' THEN NULL 
                      WHEN dbo.TimeIntervals.intAbbr = 'n' THEN DATEADD(MINUTE, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'h' THEN DATEADD(HOUR, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'd' THEN DATEADD(DAY, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'ww' THEN DATEADD(WEEK, 
                      timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'm' THEN DATEADD(MONTH, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'q' THEN DATEADD(QUARTER, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'yyyy' THEN DATEADD(YEAR, timeFreq,
                       lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'w' THEN DATEADD(WEEKDAY, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'y' THEN DATEADD(DAYOFYEAR, timeFreq, lastcompleted) END AS nextDue
FROM         dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrderRequests_Obscelete] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrders2_Obscelete]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrders2_Obscelete]
AS
SELECT     wo.woSchedId AS ID, wo.name, wo.descr AS Description, wo.startDate AS [Start Date], wo.timeFreq AS Frequency, wo.intName AS Interval, 
                      wo.lastcompleted AS [Last Completed], wo.nextDue AS [Next Due], dbo.Departments.name AS Department, dbo.Equipment.equipName AS Equipment, 
                      dbo.Locations.name AS Location, dbo.Locations.facId AS [Facility ID], rt.runtime, cyc.cycles
FROM         (SELECT     equipId, SUM(cycles) AS cycles
                       FROM          dbo.Cycles
                       GROUP BY equipId) AS cyc RIGHT OUTER JOIN
                      dbo.v_WorkOrders AS wo INNER JOIN
                      dbo.Departments ON wo.deptId = dbo.Departments.deptId INNER JOIN
                      dbo.Locations INNER JOIN
                      dbo.Equipment ON dbo.Locations.locId = dbo.Equipment.locId INNER JOIN
                      dbo.Facilities ON dbo.Locations.facId = dbo.Facilities.facId ON wo.equipId = dbo.Equipment.equipId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(runtime) AS runtime
                            FROM          dbo.Runtimes
                            GROUP BY equipId) AS rt ON wo.equipId = rt.equipId ON cyc.equipId = wo.equipId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrders2_Obscelete] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrdersDetailed]    Script Date: 8/6/2014 10:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrdersDetailed]
AS
SELECT     dbo.v_WorkOrders.woSchedId, dbo.v_WorkOrders.name, dbo.v_WorkOrders.descr, dbo.v_WorkOrders.startDate, dbo.v_WorkOrders.timeFreq, 
                      dbo.v_WorkOrders.intName, dbo.v_WorkOrders.lastcompleted, dbo.v_WorkOrders.nextDue, dbo.Equipment.equipNumber, dbo.Equipment.equipName, 
                      dbo.Equipment.descr AS equipDescr, dbo.Equipment.equipSerial, dbo.Equipment.equipModel, dbo.Departments.name AS deptName, dbo.Locations.name AS locName, 
                      dbo.Locations.addr1 AS locAddr1, dbo.Locations.addr2 AS locAddr2, dbo.Locations.city AS locCity, dbo.States.stateId AS locState, dbo.Locations.zip AS locZip, 
                      dbo.Locations.lat AS locLat, dbo.Locations.long AS locLong, dbo.EquipmentTypes.typeName AS equipType, dbo.Vendors.name AS venName, 
                      dbo.Vendors.addr1 AS venAddr1, dbo.Vendors.addr2 AS venAddr2, dbo.Vendors.city AS venCity, dbo.Vendors.zip AS venZip, dbo.Vendors.phone1 AS venPhone1, 
                      dbo.Vendors.phone2 AS venPhone2, dbo.Vendors.fax AS venFax, dbo.Vendors.web AS venWeb, dbo.Facilities.facId, dbo.Facilities.name AS facName, 
                      dbo.Facilities.addr1 AS facAddr1, dbo.Facilities.addr2 AS facAddr2, dbo.Facilities.city AS facCity, dbo.Facilities.zip AS facZip, dbo.Facilities.lat AS facLat, 
                      dbo.Facilities.long AS facLong, dbo.Facilities.phone1 AS facPhone1, dbo.Facilities.phone2 AS facPhone2, dbo.Facilities.fax AS facFax, dbo.States.abbr AS stateAbbr, 
                      dbo.Manufacturers.name AS manName, dbo.Manufacturers.addr1 AS manAddr1, dbo.Manufacturers.addr2 AS manAddr2, dbo.Manufacturers.city AS manCity, 
                      dbo.Manufacturers.zip AS manZip, dbo.Manufacturers.phone1 AS manPhone1, dbo.Manufacturers.phone2 AS manPhone2, dbo.Manufacturers.fax AS manFax, 
                      dbo.Manufacturers.web AS manWeb
FROM         dbo.EquipmentTypes INNER JOIN
                      dbo.Equipment ON dbo.EquipmentTypes.typeId = dbo.Equipment.equipTypeId INNER JOIN
                      dbo.Locations ON dbo.Equipment.locId = dbo.Locations.locId INNER JOIN
                      dbo.Facilities ON dbo.Locations.facId = dbo.Facilities.facId INNER JOIN
                      dbo.Manufacturers ON dbo.Equipment.manId = dbo.Manufacturers.manId INNER JOIN
                      dbo.Vendors ON dbo.Equipment.vendorId = dbo.Vendors.venId INNER JOIN
                      dbo.v_WorkOrders ON dbo.Equipment.equipId = dbo.v_WorkOrders.equipId INNER JOIN
                      dbo.Departments ON dbo.v_WorkOrders.deptId = dbo.Departments.deptId LEFT OUTER JOIN
                      dbo.States ON dbo.Locations.stateId = dbo.States.stateId AND dbo.Facilities.stateId = dbo.States.stateId AND dbo.Manufacturers.stateId = dbo.States.stateId AND 
                      dbo.Vendors.stateId = dbo.States.stateId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrdersDetailed] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Cycles] ON 

INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (1, 2, CAST(N'2014-07-01 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (2, 2, CAST(N'2014-07-02 00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (3, 2, CAST(N'2014-07-03 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (4, 2, CAST(N'2014-07-04 00:00:00.000' AS DateTime), 8)
SET IDENTITY_INSERT [dbo].[Cycles] OFF
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([deptId], [name]) VALUES (1, N'Maintenance')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (2, N'Engineering')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (3, N'Operations')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (4, N'Distribution')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (5, N'Collections')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (7, N'Billing')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname]) VALUES (1, 10, 1, 1, 2, NULL, N'', N'PLC-RW', N'ControlLogix PLC', N'', NULL, NULL)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname]) VALUES (2, 10, 1, 1, 2, NULL, N'', N'RWP1', N'', N'', NULL, NULL)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [modelId], [equipNumber], [equipName], [descr], [equipSerial], [hmiRuntimeTagname], [hmiCyclesTagname]) VALUES (5, 2, 1, 5, 7, NULL, N'', N'2008 Compass', N'Green, 2WD, 6-speed automatic CVT with manual override, gray/black interior', N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
SET IDENTITY_INSERT [dbo].[EquipmentDocs] ON 

INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (1, 1, N'User Manual', N'Z:\mrsystems\_work\Camden, City of (SC)\212009 - WWTP Expansion\Maintenance Database\docs\Dell\precision-t3600_Owner''s Manual_en-us.pdf')
INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (2, 1, N'Owner''s Manual', N'Z:\mrsystems\_work\Camden, City of (SC)\212009 - WWTP Expansion\Maintenance Database\docs\Dell\precision-t3600_Owner''s Manual_en-us.pdf')
INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (3, 1, N'Service Manual', N'Z:\mrsystems\_work\Camden, City of (SC)\212009 - WWTP Expansion\Maintenance Database\docs\Dell\precision-t3500_Service Manual_en-us.pdf')
INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (5, 1, N'Manufacturer''s Website', N'www.dell.com')
INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (6, 5, N'Jeep Website', N'www.jeep.com')
SET IDENTITY_INSERT [dbo].[EquipmentDocs] OFF
SET IDENTITY_INSERT [dbo].[EquipmentTypes] ON 

INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (1, N'PLC')
SET IDENTITY_INSERT [dbo].[EquipmentTypes] OFF
SET IDENTITY_INSERT [dbo].[Facilities] ON 

INSERT [dbo].[Facilities] ([facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long], [phone1], [phone2], [fax]) VALUES (2, N'Camden WWTP', N'175 Bramblewood Plantation Rd', N'', N'Camden', 40, N'29020', 0, 0, N'8034256053', N'', N'')
INSERT [dbo].[Facilities] ([facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long], [phone1], [phone2], [fax]) VALUES (3, N'MR Systems - Atlanta', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', 0, 0, N'6783252800', N'6783252815', N'')
SET IDENTITY_INSERT [dbo].[Facilities] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (1, 2, N'Raw Water PS', N'', N'', N'', 42, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (2, 3, N'MR Office', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', 15.000000953674316, -15.000000953674316)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (9, 2, N'Influent PS', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (10, 2, N'Clarifiers - Primary', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (11, 2, N'Clarifiers - Secondary', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (12, 2, N'UV', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (13, 2, N'RAS/WAS', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (14, 2, N'Dewatering', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (15, 2, N'Solids Processing', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (16, 2, N'Sludge Processing', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (17, 2, N'Equalization Basin', N'', N'', N'', 40, N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (1, N'Allen-Bradley', N'', N'', N'', 51, N'', N'', N'', N'', N'www.rockwellautomation.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (3, N'Modicon', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (4, N'MR Systems', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', N'6783252800', N'', N'6783252100', N'www.mrsystems.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (5, N'Jeep', N'', N'', N'', 51, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
SET IDENTITY_INSERT [dbo].[Runtimes] ON 

INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (1, 2, CAST(N'2014-07-01 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (2, 2, CAST(N'2014-07-02 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (3, 2, CAST(N'2014-07-03 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (6, 2, CAST(N'2014-07-04 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (7, 2, CAST(N'2014-07-05 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (8, 2, CAST(N'2014-07-06 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (10, 2, CAST(N'2014-07-07 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (12, 2, CAST(N'2014-07-08 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (13, 2, CAST(N'2014-07-09 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (14, 2, CAST(N'2014-07-10 00:00:00.000' AS DateTime), 24)
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
SET IDENTITY_INSERT [dbo].[Vendors] ON 

INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (2, N'MR Systems Inc.', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', N'6783252800', N'', N'6783252100', N'www.mrsystems.com')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (3, N'Burnette Lime', N'7095 Highway 11', N'', N'Campobello', 40, N'29322', N'8007264187', N'8645921658', N'8645921690', N'http://www.burnett-inc.com/')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (4, N'Wedeco (Xylem Water Solutions)', N'14125 South Bridge Circle', N'', N'Charlotte', 40, N'28273', N'7044099700', N'', N'7042959080', N'http://www.wedeco.com/us/')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (5, N'Heyward Inc.', N'2101 Cambridge Beltway Dr', N'', N'Charlotte', 33, N'28273', N'7045832305', N'', N'7045832900', N'http://www.heyward.net/')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (7, N'Carmax', N'', N'', N'', 51, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Vendors] OFF
SET IDENTITY_INSERT [dbo].[WorkOrderRequests] ON 

INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled]) VALUES (1, N'PLC Battery Replace', N'Replace PLC Processor Backup Batteries', 1, CAST(N'2014-08-06 20:40:23.090' AS DateTime), CAST(N'2013-01-01 00:00:00.000' AS DateTime), 1, 8, CAST(N'2013-12-01 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled]) VALUES (4, N'PLC Program Backup', N'', 1, CAST(N'2014-08-06 20:40:23.090' AS DateTime), CAST(N'2014-07-05 00:00:00.000' AS DateTime), 1, 8, CAST(N'2014-07-05 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled]) VALUES (7, N'Lube Bearings', N'', 2, CAST(N'2014-08-06 20:40:23.090' AS DateTime), CAST(N'2014-07-01 00:00:00.000' AS DateTime), 150, 10, CAST(N'2014-07-22 12:08:09.537' AS DateTime), 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled]) VALUES (10, N'Lube Bearings', N'', 2, CAST(N'2014-08-06 20:40:23.090' AS DateTime), CAST(N'2014-07-01 00:00:00.000' AS DateTime), 5000, 9, CAST(N'2014-07-01 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[WorkOrderRequests] ([reqId], [reqName], [reqDescr], [equipId], [reqDateSubmitted], [reqStartDate], [timeFreq], [intId], [lastCompleted], [enabled]) VALUES (36, N'Wash Conder''s Car', N'Wash & wax exterior. Vaccum interior. Dress dash and all colored plastic surfaces.', 5, CAST(N'2014-08-06 20:40:23.090' AS DateTime), CAST(N'2014-08-04 00:00:00.000' AS DateTime), 5, 4, CAST(N'2014-08-04 12:08:09.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[WorkOrderRequests] OFF
ALTER TABLE [dbo].[WorkOrderTasks] ADD  CONSTRAINT [DF_WorkOrderTasks_taskComplete]  DEFAULT ((0)) FOR [taskComplete]
GO
ALTER TABLE [dbo].[Cycles]  WITH CHECK ADD  CONSTRAINT [FK_Cycles_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cycles] CHECK CONSTRAINT [FK_Cycles_Equipment]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_EmployeeAccessLevels] FOREIGN KEY([levelId])
REFERENCES [dbo].[EmployeeAccessLevels] ([levelId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_EmployeeAccessLevels]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Facilities]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_States]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Equipment]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentTypes] FOREIGN KEY([equipTypeId])
REFERENCES [dbo].[EquipmentTypes] ([typeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentTypes]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Locations] FOREIGN KEY([locId])
REFERENCES [dbo].[Locations] ([locId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Locations]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Manufacturers] FOREIGN KEY([manId])
REFERENCES [dbo].[Manufacturers] ([manId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Manufacturers]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Vendors] FOREIGN KEY([vendorId])
REFERENCES [dbo].[Vendors] ([venId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Vendors]
GO
ALTER TABLE [dbo].[EquipmentDocs]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentDocs_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
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
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_InventoryLocations]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Parts] FOREIGN KEY([partId])
REFERENCES [dbo].[Parts] ([partId])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Parts]
GO
ALTER TABLE [dbo].[InventoryLocations]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLocations_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
GO
ALTER TABLE [dbo].[InventoryLocations] CHECK CONSTRAINT [FK_InventoryLocations_Facilities]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
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
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_InventoryLocations]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
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
ALTER TABLE [dbo].[WorkOrderRequests]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderRequests_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkOrderRequests] CHECK CONSTRAINT [FK_WorkOrderRequests_Equipment]
GO
ALTER TABLE [dbo].[WorkOrderRequests]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderRequests_TimeIntervals] FOREIGN KEY([intId])
REFERENCES [dbo].[TimeIntervals] ([intId])
GO
ALTER TABLE [dbo].[WorkOrderRequests] CHECK CONSTRAINT [FK_WorkOrderRequests_TimeIntervals]
GO
ALTER TABLE [dbo].[WorkOrders]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrders_WorkOrderRequests] FOREIGN KEY([reqId])
REFERENCES [dbo].[WorkOrderRequests] ([reqId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WorkOrders] CHECK CONSTRAINT [FK_WorkOrders_WorkOrderRequests]
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time in hours' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'taskTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[14] 4[34] 2[21] 3) )"
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
         Begin Table = "Locations"
            Begin Extent = 
               Top = 119
               Left = 516
               Bottom = 226
               Right = 667
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 45
               Left = 277
               Bottom = 214
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 133
               Left = 740
               Bottom = 224
               Right = 891
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 226
               Left = 235
               Bottom = 334
               Right = 386
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 14
               Left = 14
               Bottom = 223
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cyc"
            Begin Extent = 
               Top = 80
               Left = 998
               Bottom = 158
               Right = 1149
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 6
               Left = 781
               Bottom = 84
               Right = 932
            End
            Disp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'layFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
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
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2145
         Alias = 900
         Table = 2205
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
         Configuration = "(H (1[43] 4[2] 2[22] 3) )"
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
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 17
               Left = 295
               Bottom = 130
               Right = 446
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 205
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
      Begin ColumnWidths = 11
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[13] 4[28] 2[3] 3) )"
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
         Begin Table = "v_WorkOrderRequests"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 301
               Right = 205
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
      Begin ColumnWidths = 10
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequestsRtCycDue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequestsRtCycDue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[46] 2[13] 3) )"
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
         Begin Table = "cyc"
            Begin Extent = 
               Top = 170
               Left = 247
               Bottom = 248
               Right = 398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "wo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 93
               Left = 427
               Bottom = 171
               Right = 578
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 46
               Left = 805
               Bottom = 154
               Right = 956
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 6
               Left = 605
               Bottom = 189
               Right = 762
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 135
               Left = 1054
               Bottom = 243
               Right = 1205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 0
               Left = 219
               Bottom = 78
               Right = 370
            End
            DisplayFlags = 280
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1995
         Width = 960
         Width = 765
         Width = 1500
         Width = 1995
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1455
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[29] 2[18] 3) )"
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
         Begin Table = "EquipmentTypes"
            Begin Extent = 
               Top = 176
               Left = 728
               Bottom = 268
               Right = 879
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 52
               Left = 348
               Bottom = 237
               Right = 527
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 50
               Left = 644
               Bottom = 158
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 29
               Left = 864
               Bottom = 137
               Right = 1015
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Manufacturers"
            Begin Extent = 
               Top = 285
               Left = 820
               Bottom = 446
               Right = 971
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Vendors"
            Begin Extent = 
               Top = 320
               Left = 609
               Bottom = 428
               Right = 760
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "v_WorkOrders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 189
            End
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 251
               Left = 354
               Bottom = 338
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 162
               Left = 1067
               Bottom = 255
               Right = 1218
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
         Width = 1995
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'
GO
USE [master]
GO
ALTER DATABASE [MRMaintenance] SET  READ_WRITE 
GO
