USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 7/23/2014 12:44:44 AM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'Öç77e~Éú-ó£?Sñe^%ÕÁJáÚ¿ýl¾ª5h', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
