USE [master]
GO
/****** Object:  Login [aaUser]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [aaUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'.ðWúx~ÚG¤T¼~^Ô
¥ÍÓ{¸¹èÛþ¡AÛS', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
