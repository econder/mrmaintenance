USE [master]
GO
/****** Object:  Login [aadbo]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [aadbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'âÇª\VúGRUóqXÈCõèxjÏfèq-S', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
