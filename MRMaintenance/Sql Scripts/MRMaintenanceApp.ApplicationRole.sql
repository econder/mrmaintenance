USE [MRMaintenance]
GO
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP APPLICATION ROLE  [MRMaintenanceApp]
GO
/****** Object:  ApplicationRole [MRMaintenanceApp]    Script Date: 8/2/2014 9:19:01 PM ******/
/* To avoid disclosure of passwords, the password is generated in script. */
declare @idx as int
declare @randomPwd as nvarchar(64)
declare @rnd as float
select @idx = 0
select @randomPwd = N''
select @rnd = rand((@@CPU_BUSY % 100) + ((@@IDLE % 100) * 100) + 
       (DATEPART(ss, GETDATE()) * 10000) + ((cast(DATEPART(ms, GETDATE()) as int) % 100) * 1000000))
while @idx < 64
begin
   select @randomPwd = @randomPwd + char((cast((@rnd * 83) as int) + 43))
   select @idx = @idx + 1
select @rnd = rand()
end
declare @statement nvarchar(4000)
select @statement = N'CREATE APPLICATION ROLE [MRMaintenanceApp] WITH DEFAULT_SCHEMA = [guest], ' + N'PASSWORD = N' + QUOTENAME(@randomPwd,'''')
EXEC dbo.sp_executesql @statement

GO
