USE [master]
GO
/****** Object:  Login [mrsystems]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [mrsystems]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'ôôB4®çÒZwó¯¨Çöü@sõ¥0`­P°¨*', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
