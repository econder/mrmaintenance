USE [master]
GO
/****** Object:  Login [aaAdmin]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [aaAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'Î
ÚÖÒÿÈvQ£à''¾ÿK
p%4ìï!)A', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
