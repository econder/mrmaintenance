USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'hô+ü¶5;È°_JËhÏx©cÃ²°¿Øãg', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
