USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'¾wmUMaèµÛ³¦öèd¾bêæ:&$Ó', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
