USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aadbo]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [aadbo] WITH PASSWORD=N'\`KË,ñú!ðò³_wÁgØ(ÈÕ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aadbo] DISABLE
GO
