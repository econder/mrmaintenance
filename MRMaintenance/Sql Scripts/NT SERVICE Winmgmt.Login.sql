USE [master]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
