USE [master]
GO
/****** Object:  Login [ECVM-WW2014\ASBService]    Script Date: 7/23/2014 12:44:45 AM ******/
CREATE LOGIN [ECVM-WW2014\ASBService] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ECVM-WW2014\ASBService]
GO
