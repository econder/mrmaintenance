USE [master]
GO
/****** Object:  Login [aaUser]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [aaUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'í-cQZxÓÇ®!ù±è´ÆXà¾8ÜÕèë¶yæ7Ý', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
