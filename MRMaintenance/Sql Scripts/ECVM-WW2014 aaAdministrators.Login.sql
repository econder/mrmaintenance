USE [master]
GO
/****** Object:  Login [ECVM-WW2014\aaAdministrators]    Script Date: 7/24/2014 11:30:32 PM ******/
CREATE LOGIN [ECVM-WW2014\aaAdministrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\aaAdministrators]
GO
