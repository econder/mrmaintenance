USE [master]
GO
/****** Object:  Login [wwdbo]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [wwdbo]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [wwdbo]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [wwdbo] WITH PASSWORD=N'iz¸`)t|E(x hkÓê¸ÍT,àåõÅ', DEFAULT_DATABASE=[Runtime], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [wwdbo] DISABLE
GO
