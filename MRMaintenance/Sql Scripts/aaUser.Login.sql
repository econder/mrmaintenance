USE [master]
GO
/****** Object:  Login [aaUser]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [aaUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'KKFV3e4ZPZiPTcAEFIaKGyVZ3LxKDdukXZrBSC8Jomg=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
