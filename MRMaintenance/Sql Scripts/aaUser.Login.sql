USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaUser]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [aaUser] WITH PASSWORD=N'§ +£r4D ùîäÅ *''
À`×y¥Â÷áy', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaUser] DISABLE
GO
