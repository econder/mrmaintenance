USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 7/23/2014 12:44:45 AM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'»ìè¦íõ3ºÅ¡4ùyÃÂÙ÷"ªh»ûS''[', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
