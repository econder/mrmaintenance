USE [master]
GO
/****** Object:  Login [wwPower]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [wwPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwPower]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [wwPower] WITH PASSWORD=N'ñ~Zuõ«¬ÄOü#(ª|ðäåUxöoY³p?+±', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwPower] DISABLE
GO
