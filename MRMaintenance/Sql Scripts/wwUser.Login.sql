USE [master]
GO
/****** Object:  Login [wwUser]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [wwUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'ÜýEA4Æñê®ñ«WªozRçéÞ¨zfd³ #{', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
