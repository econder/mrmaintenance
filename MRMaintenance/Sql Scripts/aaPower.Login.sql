USE [master]
GO
/****** Object:  Login [aaPower]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [aaPower]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [aaPower]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [aaPower] WITH PASSWORD=N'c9WQZOV5XVLMIXtDc296qVsGfK21Q4f1zfRwDe2DxdI=', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [aaPower] DISABLE
GO
