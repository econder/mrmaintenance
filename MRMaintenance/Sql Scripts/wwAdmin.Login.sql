USE [master]
GO
/****** Object:  Login [wwAdmin]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [wwAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'»S³Ë0ì_ÂÂ|@¦ýDrGÝU(
ÍíZæÅã', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
