USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'¡Oÿ¾r®A½ªSý§µ]ÆTì"¤7¢Ù^>%òÛ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
