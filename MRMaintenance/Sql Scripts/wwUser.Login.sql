USE [master]
GO
/****** Object:  Login [wwUser]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [wwUser]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'RL£ÂDJÛ³s°ÍE­l3õ90Wÿ_J®', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
