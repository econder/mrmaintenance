USE [master]
GO
/****** Object:  Login [aaPower]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [aaPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'û¹WÌ§©kNxrn16h_eW¸ ÐçªÜÔß_×', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
