USE [master]
GO
/****** Object:  Login [aadbo]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [aadbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'³[\Óó_zå5»Ìñ©ÔÒNe?î', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
