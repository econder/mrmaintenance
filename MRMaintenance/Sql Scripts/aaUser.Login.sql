USE [master]
GO
/****** Object:  Login [aaUser]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [aaUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'Çï<Ê$+;¯_ÚB¢¹S~úÂÝþ~öÒÆ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
