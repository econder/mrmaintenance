USE [master]
GO
/****** Object:  Login [wwUser]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [wwUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'8BKMFEY6khrmCaqfkiaaad7vwARjVLjrToMWuoEf1Js=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
