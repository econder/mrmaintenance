USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 7/23/2014 12:44:45 AM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'öü©ÛßµX_Ç¿Æ9Àöº
ã³ßHÞß+|Ë§y¹ª', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
