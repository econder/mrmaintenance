USE [master]
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP LOGIN [ECVM-WW2014\mrsystems]
GO
/****** Object:  Login [ECVM-WW2014\mrsystems]    Script Date: 7/23/2014 10:12:05 PM ******/
CREATE LOGIN [ECVM-WW2014\mrsystems] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\mrsystems]
GO
