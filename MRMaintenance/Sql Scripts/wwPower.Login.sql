USE [master]
GO
/****** Object:  Login [wwPower]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [wwPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'ÚôÔ£»zâ`U$És_ai6r¶_byõÛ»ìÀ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
