USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'¸Ïz8ù¯ÃµSV@8¦J·®èÆ	!5¡VP¼n', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
