USE [master]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
