USE [MRMaintenance]
GO
/****** Object:  User [mrsystems]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE USER [mrsystems] FOR LOGIN [mrsystems] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mrsystems]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mrsystems]
GO
