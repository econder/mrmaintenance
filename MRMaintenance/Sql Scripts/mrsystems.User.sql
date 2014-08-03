USE [MRMaintenance]
GO
/****** Object:  User [mrsystems]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP USER [mrsystems]
GO
/****** Object:  User [mrsystems]    Script Date: 8/2/2014 9:19:01 PM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
