USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'gÔ{Ö7c`Ô¯ü¥-7Êõqc&y©H¢Ä´F«', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
