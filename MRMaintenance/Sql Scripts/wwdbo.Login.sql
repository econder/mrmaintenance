USE [master]
GO
/****** Object:  Login [wwdbo]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [wwdbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'¤8Á\¤F³ø4ÈÊÛ¿ÙxrQ}¼Ý*1¸', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
