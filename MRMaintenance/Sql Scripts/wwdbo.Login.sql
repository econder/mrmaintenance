USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'@þ¿XÚ´æÄªhÌ¶lah)²^ªV', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
