USE [master]
GO
/****** Object:  Login [aaPower]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [aaPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'9D×¢h¼ì^Ïé]`ÉèKiÎD<\', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
