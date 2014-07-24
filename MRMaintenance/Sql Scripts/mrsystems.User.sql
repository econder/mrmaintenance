USE [MRMaintenance]
GO
/****** Object:  User [mrsystems]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP USER [mrsystems]
GO
/****** Object:  User [mrsystems]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
