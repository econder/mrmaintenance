USE [master]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 7/26/2014 12:17:17 AM ******/
CREATE LOGIN [ECVM-WW2014\aaAdministrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\aaAdministrators]
GO
