USE [master]
GO
/****** Object:  Login [wwdbo]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [wwdbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'é«²Y!ôjÞ#''2Ëb2­(Ìñt²Þ#´}D', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
