USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 7/23/2014 12:44:44 AM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'î®lµqè4ì8 R È;Ã''¢ÝU-æjuÊ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
