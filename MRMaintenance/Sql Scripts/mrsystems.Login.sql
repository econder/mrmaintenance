USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'ø^ñ£Z96P+´ßDð_wÀlä¡-l', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
