USE [master]
GO
/****** Object:  Login [mrsystems]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [mrsystems]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'+³@µ°ñÞÇhF¥;Ãåäv?4¸Î}n`T²«[', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
