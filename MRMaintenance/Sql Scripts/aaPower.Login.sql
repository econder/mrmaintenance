USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 7/23/2014 12:44:45 AM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'ÿBØ479$çí% ïB)Ðß¯<õ°ÐÄ/û', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
