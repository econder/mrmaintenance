USE [master]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'2AÍûÛ=Ã''|Kµa&*û^Ù\Ü	¾¥£_Ë`', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
