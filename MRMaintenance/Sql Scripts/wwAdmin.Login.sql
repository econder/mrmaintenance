USE [master]
GO
/****** Object:  Login [wwAdmin]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [wwAdmin]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwAdmin]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [wwAdmin] WITH PASSWORD=N'¡%|myrñ#~G¢LZh¤+çÍ§®Íu}§kµ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwAdmin] DISABLE
GO
