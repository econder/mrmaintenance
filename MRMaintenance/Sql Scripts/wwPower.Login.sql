USE [master]
GO
/****** Object:  Login [wwPower]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [wwPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'Ïv ÿGVø¤©|«ld,. ÑßGu!', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
