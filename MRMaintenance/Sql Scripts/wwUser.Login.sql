USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'6)c¡°]ÇnÍR}",.fyiRÇüP¶ò', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
