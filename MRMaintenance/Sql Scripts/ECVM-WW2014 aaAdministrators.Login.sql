USE [master]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP LOGIN [ECVM-WW2014\aaAdministrators]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 8/5/2014 8:42:34 PM ******/
CREATE LOGIN [ECVM-WW2014\aaAdministrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\aaAdministrators]
GO
