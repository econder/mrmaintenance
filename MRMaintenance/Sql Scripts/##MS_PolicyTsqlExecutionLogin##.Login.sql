USE [master]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'gMO6ÎvPËèZOåvL¸
ü³Q¯)Ït', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
