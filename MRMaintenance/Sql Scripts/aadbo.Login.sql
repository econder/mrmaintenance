USE [master]
GO
/****** Object:  Login [aadbo]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [aadbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'ÓXPÃÜìèPpìYÓ)¬ÑæJÿbÌ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
