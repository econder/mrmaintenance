USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'Ù ÞÉbKÌÇ8úÐ	(8ë5æéÈYã?º*äðo9', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
