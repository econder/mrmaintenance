USE [master]
GO
/****** Object:  Login [wwUser]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [wwUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'8>éØÍyX¨möcØlüìÁWç¿ÒØ
', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
