USE [master]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 7/24/2014 3:23:55 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
