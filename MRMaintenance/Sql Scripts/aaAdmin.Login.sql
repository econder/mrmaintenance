USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'ößZ0q	]¶Yî\Î9jú
+Çï9÷`íWB', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
