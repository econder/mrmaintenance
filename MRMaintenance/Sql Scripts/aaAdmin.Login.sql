USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 7/23/2014 12:44:45 AM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'Ý)ÑG6C.z+H|óù½×''ã´æÅñÕPD', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
