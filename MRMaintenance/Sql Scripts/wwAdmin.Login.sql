USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 7/23/2014 12:44:44 AM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'å?È¿\e0Å<õ	¡}g-V¦zæ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
