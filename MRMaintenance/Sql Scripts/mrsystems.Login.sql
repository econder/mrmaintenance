USE [master]
GO
/****** Object:  Login [mrsystems]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [mrsystems]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'KÃâA5>ÅÊ¨ÑÒEµ:êE~Æ©Ì&t¯ø2âã', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
