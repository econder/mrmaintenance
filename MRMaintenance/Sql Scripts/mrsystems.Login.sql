USE [master]
GO
/****** Object:  Login [mrsystems]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [mrsystems]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrsystems]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [mrsystems] WITH PASSWORD=N'2KcXFQNhPeoZ9qEQ1DVRoveGtCLBY/menSHLe9emRIk=', DEFAULT_DATABASE=[mrsystems], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [mrsystems] DISABLE
GO
