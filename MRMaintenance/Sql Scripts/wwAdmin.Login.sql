USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'è¾Ê''ß;WBI×ùw?ro~3a®T/Á', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
