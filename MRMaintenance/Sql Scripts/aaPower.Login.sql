USE [master]
GO
/****** Object:  Login [aaPower]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [aaPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'w[½ÆÃó÷¢Þèûu6¯]©¹\}Çva', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
