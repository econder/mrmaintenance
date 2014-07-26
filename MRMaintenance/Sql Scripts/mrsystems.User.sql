USE [MRMaintenance]
GO
/****** Object:  User [mrsystems]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
