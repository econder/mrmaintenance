USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwUser]    Script Date: 7/23/2014 12:44:44 AM ******/
CREATE LOGIN [wwUser] WITH PASSWORD=N'°³uÊâÐY¶-ÈÇÑCÂôGÕm<úãß_} S÷æ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwUser] DISABLE
GO
