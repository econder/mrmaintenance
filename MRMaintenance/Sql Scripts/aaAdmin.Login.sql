USE [master]
GO
/****** Object:  Login [aaAdmin]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP LOGIN [aaAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 8/2/2014 9:19:00 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'§«DQE<1»ÔYbt¯ÀG³í{á§3¬', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
