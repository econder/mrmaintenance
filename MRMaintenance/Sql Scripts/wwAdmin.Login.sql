USE [master]
GO
/****** Object:  Login [wwAdmin]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [wwAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'rhrw32BhH2xaN2zaq5XiozkZ5XFxIu9Jg7TxkeS0nUk=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
