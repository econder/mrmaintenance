USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 7/23/2014 12:44:44 AM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'kP¾ÑEAzk7{¨zÂ¨^útüã', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
