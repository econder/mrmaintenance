USE [master]
GO
/****** Object:  Login [aaAdmin]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [aaAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaAdmin]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [aaAdmin] WITH PASSWORD=N'S/-¯fÕ@%N¼oy6
¥eT9¦L¬<2n', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaAdmin] DISABLE
GO
