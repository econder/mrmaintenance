USE [master]
GO
/****** Object:  Login [wwdbo]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [wwdbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'fnVG6y7VpgguCUDUkg2rWTwkFplqEBurM9YzFuuSzBE=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
