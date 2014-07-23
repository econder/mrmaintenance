USE [MRMaintenance]
GO
/****** Object:  User [mrsystems]    Script Date: 7/23/2014 12:44:45 AM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
