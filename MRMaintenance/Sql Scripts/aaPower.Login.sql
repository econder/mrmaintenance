USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'¹ì¨Y+Ëòh5 7Ñz}Ýå,§arÀ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
