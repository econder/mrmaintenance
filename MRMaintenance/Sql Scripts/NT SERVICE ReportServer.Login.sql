USE [master]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [NT SERVICE\ReportServer]
GO
/****** Object:  Login [NT SERVICE\ReportServer]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [NT SERVICE\ReportServer] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
