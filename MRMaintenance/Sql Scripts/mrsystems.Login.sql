USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'Äa±Áµ%c-,FF:²§yro¹', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
