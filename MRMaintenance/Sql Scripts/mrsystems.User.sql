USE [MRMaintenance]
GO
/****** Object:  User [mrsystems]    Script Date: 7/22/2014 12:00:48 AM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
