USE [master]
GO
/****** Object:  Login [aaAdmin]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [aaAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'cZGwp63dtD/d5JY9s8ezwDuh1RpULwFuYWlVh+uf3Ro=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
