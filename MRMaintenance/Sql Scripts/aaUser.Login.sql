USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'Ñ·±ÂÏ9¯SYö\Úä³ÅRÉ8Âª×Kîe', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
