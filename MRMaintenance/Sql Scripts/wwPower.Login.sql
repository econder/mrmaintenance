USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'E&y©õÉ½±Å''@(Py´+h»_ö3Û2', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
