USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'¢Q''{WKJ÷ÆTZ)©;¨´:Aè+uñZcäsþ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
