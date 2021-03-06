USE [MRMaintenance]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrders2_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrders2_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrders2_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequestsRtCycDue'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequestsRtCycDue'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequestsRtCycDue'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequests_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequests_Obscelete'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderTasks'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderTasks'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderTasks'

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
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [FK_WorkOrderTasks_Tasks]
GO
ALTER TABLE [dbo].[WorkOrderTasks] DROP CONSTRAINT [FK_WorkOrderTasks_EquipmentModels]
GO
ALTER TABLE [dbo].[WorkOrders] DROP CONSTRAINT [FK_WorkOrders_WorkOrderRequests]
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
ALTER TABLE [dbo].[Cycles] DROP CONSTRAINT [FK_Cycles_Equipment]
GO
/****** Object:  View [dbo].[zv_WorkOrderRequestsRtCycDue]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP VIEW [dbo].[zv_WorkOrderRequestsRtCycDue]
GO
/****** Object:  View [dbo].[zv_WorkOrderRequests_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP VIEW [dbo].[zv_WorkOrderRequests_Obscelete]
GO
/****** Object:  View [dbo].[v_WorkOrderTasks]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP VIEW [dbo].[v_WorkOrderTasks]
GO
/****** Object:  View [dbo].[v_WorkOrderRequests]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP VIEW [dbo].[v_WorkOrderRequests]
GO
/****** Object:  View [dbo].[zv_WorkOrders2_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP VIEW [dbo].[zv_WorkOrders2_Obscelete]
GO
/****** Object:  View [dbo].[zv_WorkOrdersDetailed]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP VIEW [dbo].[zv_WorkOrdersDetailed]
GO
/****** Object:  View [dbo].[v_WorkOrders]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP VIEW [dbo].[v_WorkOrders]
GO
/****** Object:  Table [dbo].[WorkOrderTasks]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[WorkOrderTasks]
GO
/****** Object:  Table [dbo].[WorkOrders]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[WorkOrders]
GO
/****** Object:  Table [dbo].[WorkOrderRequests]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[WorkOrderRequests]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Vendors]
GO
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[VendorContacts]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Units]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Tools]
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[TimeIntervals]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Tasks]
GO
/****** Object:  Table [dbo].[TaskParts]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[TaskParts]
GO
/****** Object:  Table [dbo].[States]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[States]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Runtimes]
GO
/****** Object:  Table [dbo].[Priorities]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Priorities]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Parts]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Manufacturers]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Locations]
GO
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[InventoryLocations]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Facilities]
GO
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[EquipmentTypes]
GO
/****** Object:  Table [dbo].[EquipmentModels]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[EquipmentModels]
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[EquipmentDocs]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Equipment]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[EmployeeAccessLevels]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP TABLE [dbo].[Cycles]
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrdersDueByFacility_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[zspWorkOrdersDueByFacility_Obscelete]
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrdersDue_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[zspWorkOrdersDue_Obscelete]
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrderRequestsDueByFacilityBrief]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[zspWorkOrderRequestsDueByFacilityBrief]
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrderRequestsDueByFacility]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[zspWorkOrderRequestsDueByFacility]
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrderRequestsDueByEquipment]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[zspWorkOrderRequestsDueByEquipment]
GO
/****** Object:  StoredProcedure [dbo].[zspCreateWorkOrder]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[zspCreateWorkOrder]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDue]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderRequestsDue]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderMarkComplete]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderMarkComplete]
GO
/****** Object:  StoredProcedure [dbo].[spLogRuntime]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[spLogRuntime]
GO
/****** Object:  StoredProcedure [dbo].[spLogCycles]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[spLogCycles]
GO
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrderRequest]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP PROCEDURE [dbo].[spCreateWorkOrderRequest]
GO
/****** Object:  User [mrsystems]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP USER [mrsystems]
GO
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP APPLICATION ROLE  [MRMaintenanceApp]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [aaAdmin]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [aaAdmin]
GO
/****** Object:  Login [aadbo]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [aadbo]
GO
/****** Object:  Login [aaPower]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [aaPower]
GO
/****** Object:  Login [aaUser]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [aaUser]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [BUILTIN\Users]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [ECVM-WW2014\aaAdministrators]
GO
/****** Object:  Login [ECVM-WW2014\aaPowerUsers]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [ECVM-WW2014\aaPowerUsers]
GO
/****** Object:  Login [ECVM-WW2014\aaUsers]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [ECVM-WW2014\aaUsers]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [ECVM-WW2014\ASBService]
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [ECVM-WW2014\mrsystems]
GO
/****** Object:  Login [mrsystems]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [mrsystems]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [NT SERVICE\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [NT SERVICE\ReportServer]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [wwAdmin]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [wwAdmin]
GO
/****** Object:  Login [wwdbo]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [wwdbo]
GO
/****** Object:  Login [wwPower]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [wwPower]
GO
/****** Object:  Login [wwUser]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP LOGIN [wwUser]
GO
/****** Object:  Database [MRMaintenance]    Script Date: 8/14/2014 10:38:00 PM ******/
DROP DATABASE [MRMaintenance]
GO
/****** Object:  Database [MRMaintenance]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Login [wwUser]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'VVWc3Tzbnox0oP7KDJCLk4ng+eZJ32MaicsvYGJjoVM=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'YY3/772tyQbW8RrUrPVXS4l/M0a7JRKkjHUOD01hvLo=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'MfchNFKd2xbaOye+SpHosrNJTXKsuI6MaytTXo19bR4=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'g3NQyQm7W838c9X+8aQZWWrTttpZaWeOfwvd/oQ0zK8=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [NT SERVICE\ReportServer] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'8D22iu+pqcwUcVdkjpC8W4ZU0ozmfxA8Ff2XoBi101M=', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [ECVM-WW2014\mrsystems] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [ECVM-WW2014\ASBService] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaUsers]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [ECVM-WW2014\aaUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaPowerUsers]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [ECVM-WW2014\aaPowerUsers] FROM WINDOWS WITH DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [ECVM-WW2014\aaAdministrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'DvoO5uWQCpd91QMQddDCv1ZoYGBs75f/cWJIvKLqfaA=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'cl+Aa5e9gC6rhciRRGmAEP2N/5cx/JTLHzzlTyYdp2c=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'ZJONvFXqchgy7Bk+iM0lEvk4jCRhRyogBVlK001XXHY=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'RQK4Wkmmjdz8w8y3Vparx34pi6ExYUobRpMHsEFCIzQ=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'zLc6h2MgrNHZ/YqKvQNgXs/JsLbQPLrz9EofXVbLgA4=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 8/14/2014 10:38:00 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'73ZxP4PzPGd0mIN0tH7Xc+2VF40hvaW1JXv+M7LOvd0=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
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
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  User [mrsystems]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spCreateWorkOrderRequest]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spLogCycles]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spLogRuntime]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spWorkOrderMarkComplete]    Script Date: 8/14/2014 10:38:00 PM ******/
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
GRANT EXECUTE ON [dbo].[spWorkOrderMarkComplete] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrderMarkComplete] TO [mrsystems] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderRequestsDue]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  StoredProcedure [dbo].[zspCreateWorkOrder]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-08-06
-- Description:	Creates work order from work order request
-- =============================================
CREATE PROCEDURE [dbo].[zspCreateWorkOrder]
	@reqId bigint = NULL,
	@woDateDue datetime = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.WorkOrders(reqId, woDateCreated, woDateDue) 
	VALUES(@reqId, GETDATE(), @woDateDue)
END

GO
ALTER AUTHORIZATION ON [dbo].[zspCreateWorkOrder] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrderRequestsDueByEquipment]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-08-08
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[zspWorkOrderRequestsDueByEquipment]
	@equipId bigint = NULL,		 -- Facility Name
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM v_WorkOrderRequestsRtCycDue
	WHERE v_WorkOrderRequestsRtCycDue.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	AND v_WorkOrderRequestsRtCycDue.equipId = @equipId
END
GO
ALTER AUTHORIZATION ON [dbo].[zspWorkOrderRequestsDueByEquipment] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrderRequestsDueByFacility]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-21
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[zspWorkOrderRequestsDueByFacility]
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
ALTER AUTHORIZATION ON [dbo].[zspWorkOrderRequestsDueByFacility] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrderRequestsDueByFacilityBrief]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-08-09
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[zspWorkOrderRequestsDueByFacilityBrief]
	@facilityId bigint = NULL,		 -- Facility Name
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT v_WorkOrderRequests.reqId AS [ID], v_WorkOrderRequests.reqName AS [Name], v_WorkOrderRequests.reqDateSubmitted AS [Date Submitted],
			v_WorkOrderRequests.equipId AS [Equipment ID], v_WorkOrderRequests.equipName AS [Equipment Name], v_WorkOrderRequests.locName AS [Location], v_WorkOrderRequests.nextDue AS [Due By], 
			v_WorkOrderRequests.woCount AS [Open Work Orders]
	FROM v_WorkOrderRequests
	WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	AND v_WorkOrderRequests.facId = @facilityId
	AND v_WorkOrderRequests.enabled = 1
END

GO
ALTER AUTHORIZATION ON [dbo].[zspWorkOrderRequestsDueByFacilityBrief] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrdersDue_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-10
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[zspWorkOrdersDue_Obscelete]
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
ALTER AUTHORIZATION ON [dbo].[zspWorkOrdersDue_Obscelete] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[zspWorkOrdersDue_Obscelete] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[zspWorkOrdersDue_Obscelete] TO [mrsystems] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[zspWorkOrdersDueByFacility_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-21
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[zspWorkOrdersDueByFacility_Obscelete]
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
ALTER AUTHORIZATION ON [dbo].[zspWorkOrdersDueByFacility_Obscelete] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[zspWorkOrdersDueByFacility_Obscelete] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[zspWorkOrdersDueByFacility_Obscelete] TO [mrsystems] AS [dbo]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cycles](
	[cycleId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[cyclesDate] [datetime] NULL CONSTRAINT [DF_Cycles_cyclesDate]  DEFAULT (getdate()-(1)),
	[cycles] [bigint] NOT NULL,
 CONSTRAINT [PK_Cycles] PRIMARY KEY CLUSTERED 
(
	[cycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Cycles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/14/2014 10:38:00 PM ******/
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
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Equipment] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[EquipmentModels]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Facilities]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Inventory]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Locations]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Parts]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Priorities]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Runtimes]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[States]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[TaskParts]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Tasks]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Tools]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Units]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[WorkOrderRequests]    Script Date: 8/14/2014 10:38:00 PM ******/
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
 CONSTRAINT [PK_WOSchedules] PRIMARY KEY CLUSTERED 
(
	[reqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WorkOrderRequests] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[WorkOrders]    Script Date: 8/14/2014 10:38:00 PM ******/
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
/****** Object:  Table [dbo].[WorkOrderTasks]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderTasks](
	[woTaskId] [bigint] IDENTITY(1,1) NOT NULL,
	[modelId] [bigint] NOT NULL,
	[taskId] [bigint] NOT NULL,
	[taskStep] [int] NULL,
	[taskComplete] [bit] NOT NULL CONSTRAINT [DF_WorkOrderTasks_taskComplete]  DEFAULT ((0)),
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
/****** Object:  View [dbo].[v_WorkOrders]    Script Date: 8/14/2014 10:38:00 PM ******/
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
FROM         dbo.WorkOrders INNER JOIN
                      dbo.Locations INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId INNER JOIN
                      dbo.EquipmentTypes ON dbo.Equipment.equipTypeId = dbo.EquipmentTypes.typeId INNER JOIN
                      dbo.EquipmentModels ON dbo.Equipment.modelId = dbo.EquipmentModels.modelId ON dbo.Locations.locId = dbo.Equipment.locId INNER JOIN
                      dbo.Facilities ON dbo.Locations.facId = dbo.Facilities.facId INNER JOIN
                      dbo.Manufacturers ON dbo.Equipment.manId = dbo.Manufacturers.manId ON dbo.WorkOrders.reqId = dbo.WorkOrderRequests.reqId INNER JOIN
                      dbo.Vendors ON dbo.Equipment.vendorId = dbo.Vendors.venId INNER JOIN
                      dbo.Priorities ON dbo.WorkOrderRequests.priorityId = dbo.Priorities.priorityId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrders] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[zv_WorkOrdersDetailed]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[zv_WorkOrdersDetailed]
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
ALTER AUTHORIZATION ON [dbo].[zv_WorkOrdersDetailed] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[zv_WorkOrders2_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[zv_WorkOrders2_Obscelete]
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
ALTER AUTHORIZATION ON [dbo].[zv_WorkOrders2_Obscelete] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrderRequests]    Script Date: 8/14/2014 10:38:00 PM ******/
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
                      dbo.WorkOrderRequests.priorityId, dbo.Priorities.priorityName, rt.runtime, cyc.cycles, CASE WHEN dbo.TimeIntervals.intAbbr = '1x' THEN NULL 
                      WHEN dbo.TimeIntervals.intAbbr = 'cyc' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'rt' THEN NULL 
                      WHEN dbo.TimeIntervals.intAbbr = 'n' THEN DATEADD(MINUTE, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'h' THEN DATEADD(HOUR, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'd' THEN DATEADD(DAY, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'ww' THEN DATEADD(WEEK, 
                      timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'm' THEN DATEADD(MONTH, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'q' THEN DATEADD(QUARTER, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'yyyy' THEN DATEADD(YEAR, timeFreq,
                       lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'w' THEN DATEADD(WEEKDAY, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'y' THEN DATEADD(DAYOFYEAR, timeFreq, lastcompleted) END AS nextDue, wo.woCount
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
                          (SELECT     equipId, SUM(runtime) AS runtime
                            FROM          dbo.Runtimes
                            GROUP BY equipId) AS rt ON dbo.Equipment.equipId = rt.equipId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(cycles) AS cycles
                            FROM          dbo.Cycles
                            GROUP BY equipId) AS cyc ON dbo.Equipment.equipId = cyc.equipId
GROUP BY dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.TimeIntervals.intName, 
                      dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, dbo.Equipment.equipName, dbo.Facilities.name, dbo.Locations.name, rt.runtime, 
                      cyc.cycles, dbo.TimeIntervals.intAbbr, wo.woCount, dbo.Priorities.priorityName, dbo.WorkOrderRequests.priorityId, dbo.Departments.name, 
                      dbo.WorkOrderRequests.deptId, dbo.WorkOrderRequests.intId, dbo.Locations.facId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrderRequests] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[v_WorkOrderTasks]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrderTasks]
AS
SELECT     TOP (100) PERCENT dbo.WorkOrderTasks.taskId AS woTaskId, dbo.WorkOrderTasks.taskStep, dbo.WorkOrderTasks.taskComplete, 
                      dbo.WorkOrderTasks.taskDateComplete, dbo.WorkOrderTasks.taskDuration, dbo.WorkOrderTasks.woTaskNotes, dbo.Tasks.taskName, dbo.Tasks.taskDescr, 
                      dbo.Tasks.taskEstDuration, dbo.Tasks.equipShutdownRequired, dbo.Parts.name AS partName, dbo.Parts.descr, dbo.Parts.number
FROM         dbo.Parts INNER JOIN
                      dbo.TaskParts ON dbo.Parts.partId = dbo.TaskParts.partId RIGHT OUTER JOIN
                      dbo.WorkOrderRequests INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId INNER JOIN
                      dbo.WorkOrderTasks INNER JOIN
                      dbo.Tasks ON dbo.Tasks.taskId = dbo.WorkOrderTasks.taskId INNER JOIN
                      dbo.EquipmentModels ON dbo.EquipmentModels.modelId = dbo.WorkOrderTasks.modelId ON dbo.Equipment.modelId = dbo.EquipmentModels.modelId INNER JOIN
                      dbo.WorkOrders ON dbo.WorkOrderRequests.reqId = dbo.WorkOrders.reqId ON dbo.TaskParts.taskId = dbo.Tasks.taskId
ORDER BY dbo.WorkOrderTasks.taskStep

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrderTasks] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[zv_WorkOrderRequests_Obscelete]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[zv_WorkOrderRequests_Obscelete]
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
ALTER AUTHORIZATION ON [dbo].[zv_WorkOrderRequests_Obscelete] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[zv_WorkOrderRequestsRtCycDue]    Script Date: 8/14/2014 10:38:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[zv_WorkOrderRequestsRtCycDue]
AS
SELECT     dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.WorkOrderRequests.intId, 
                      dbo.TimeIntervals.intName, dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, dbo.Equipment.equipName, dbo.WorkOrderRequests.deptId, 
                      dbo.Departments.name AS deptName, dbo.Facilities.facId, dbo.Facilities.name AS facName, dbo.Locations.name AS locName, rt.runtime, cyc.cycles, 
                      CASE WHEN dbo.TimeIntervals.intAbbr = '1x' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'cyc' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'rt' THEN NULL 
                      WHEN dbo.TimeIntervals.intAbbr = 'n' THEN DATEADD(MINUTE, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'h' THEN DATEADD(HOUR, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'd' THEN DATEADD(DAY, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'ww' THEN DATEADD(WEEK, 
                      timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'm' THEN DATEADD(MONTH, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'q' THEN DATEADD(QUARTER, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'yyyy' THEN DATEADD(YEAR, timeFreq,
                       lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'w' THEN DATEADD(WEEKDAY, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'y' THEN DATEADD(DAYOFYEAR, timeFreq, lastcompleted) END AS nextDue
FROM         dbo.Facilities INNER JOIN
                      dbo.Locations ON dbo.Facilities.facId = dbo.Locations.facId INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId ON dbo.Locations.locId = dbo.Equipment.locId INNER JOIN
                      dbo.Departments ON dbo.WorkOrderRequests.deptId = dbo.Departments.deptId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(runtime) AS runtime
                            FROM          dbo.Runtimes
                            GROUP BY equipId) AS rt ON dbo.Equipment.equipId = rt.equipId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(cycles) AS cycles
                            FROM          dbo.Cycles
                            GROUP BY equipId) AS cyc ON dbo.Equipment.equipId = cyc.equipId
WHERE     (rt.runtime >= dbo.WorkOrderRequests.timeFreq - dbo.WorkOrderRequests.timeFreq * 0.10) OR
                      (cyc.cycles >= dbo.WorkOrderRequests.timeFreq - dbo.WorkOrderRequests.timeFreq * 0.10)

GO
ALTER AUTHORIZATION ON [dbo].[zv_WorkOrderRequestsRtCycDue] TO  SCHEMA OWNER 
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
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Equipment]
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
ALTER TABLE [dbo].[WorkOrders]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrders_WorkOrderRequests] FOREIGN KEY([reqId])
REFERENCES [dbo].[WorkOrderRequests] ([reqId])
ON UPDATE CASCADE
ON DELETE CASCADE
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Time in hours' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tasks', @level2type=N'COLUMN',@level2name=N'taskEstDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[23] 2[12] 3) )"
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
               Top = 386
               Left = 330
               Bottom = 494
               Right = 481
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
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 2
               Left = 731
               Bottom = 80
               Right = 882
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cyc"
            Begin Extent = 
               Top = 47
               Left = 927
               Bottom = 125
               Right = 1078
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
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 14
               Left = 14
               Bottom = 268
               Right = 181
            End
            DisplayFla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'gs = 280
            TopColumn = 0
         End
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
         Configuration = "(H (1[21] 4[23] 2[31] 3) )"
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
               Top = 5
               Left = 738
               Bottom = 178
               Right = 889
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
            End
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
         Begin Table = "WorkOrders"
            Begin Extent = 
               Top = 96
               Left = 41
               Bottom = 296
               Right = 197
            End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 1
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
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[15] 2[34] 3) )"
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
         Begin Table = "Parts"
            Begin Extent = 
               Top = 71
               Left = 1634
               Bottom = 243
               Right = 1785
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TaskParts"
            Begin Extent = 
               Top = 109
               Left = 1413
               Bottom = 205
               Right = 1564
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 42
               Left = 214
               Bottom = 178
               Right = 381
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 25
               Left = 430
               Bottom = 174
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderTasks"
            Begin Extent = 
               Top = 34
               Left = 914
               Bottom = 195
               Right = 1082
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tasks"
            Begin Extent = 
               Top = 68
               Left = 1164
               Bottom = 194
               Right = 1361
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EquipmentModels"
            Begin Extent = 
               Top = 20
               Left = 700
               Bottom = 98
               Right = 851
            End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderTasks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrders"
            Begin Extent = 
               Top = 9
               Left = 16
               Bottom = 143
               Right = 172
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
         Width = 10380
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderTasks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrderTasks'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequests_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequests_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[51] 2[26] 3) )"
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
               Top = 191
               Left = 700
               Bottom = 299
               Right = 851
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 189
               Left = 479
               Bottom = 297
               Right = 630
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 282
               Left = 69
               Bottom = 395
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 16
               Left = 12
               Bottom = 238
               Right = 179
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 14
               Left = 232
               Bottom = 272
               Right = 411
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 12
               Left = 479
               Bottom = 90
               Right = 630
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cyc"
            Begin Extent = 
               Top = 99
               Left = 480
               Bottom = 177
               Right = 631
            End
            Displ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequestsRtCycDue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 289
               Left = 262
               Bottom = 367
               Right = 413
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
         Filter = 2775
         Or = 3960
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequestsRtCycDue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrderRequestsRtCycDue'
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
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrders2_Obscelete'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrders2_Obscelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrders2_Obscelete'
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
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrdersDetailed'
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrdersDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'zv_WorkOrdersDetailed'
GO
USE [master]
GO
ALTER DATABASE [MRMaintenance] SET  READ_WRITE 
GO
