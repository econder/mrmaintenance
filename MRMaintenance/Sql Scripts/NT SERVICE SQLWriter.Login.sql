USE [master]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
