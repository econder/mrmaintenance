USE [master]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'nQiWTAZe9t+KtatSSg+6PP+Grxl8grtnXnM3z4UD3X8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
