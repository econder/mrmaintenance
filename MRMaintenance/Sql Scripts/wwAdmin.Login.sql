USE [master]
GO
/****** Object:  Login [wwAdmin]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [wwAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'øé²SÓÞ_#ÁC´O¶¸:é3Á^ò#úÕ$r', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
