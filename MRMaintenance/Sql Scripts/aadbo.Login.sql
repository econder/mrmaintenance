USE [master]
GO
/****** Object:  Login [aadbo]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [aadbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'NrdNFlrhE2X6CioaKRh7YTrAQ2FQxkqCTSFR2QXTx3Q=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
