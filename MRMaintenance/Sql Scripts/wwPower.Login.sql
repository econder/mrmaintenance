USE [master]
GO
/****** Object:  Login [wwPower]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [wwPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N's9gsBXGZjk2vS1kGArmIewjuwz0rLYzoEl4CQcFBvqw=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
