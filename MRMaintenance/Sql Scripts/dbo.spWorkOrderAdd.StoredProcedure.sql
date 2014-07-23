USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spWorkOrderAdd]
	@name nvarchar = NULL,
	@descr nvarchar = NULL,
	@equipId bigint = NULL,
	@deptId bigint = NULL,
	@startDate datetime = NULL,
	@recurCount int = NULL,
	@timeFreq int = NULL,
	@timeInterval nvarchar = NULL
AS

BEGIN
	SET NOCOUNT ON;

	INSERT INTO WOSchedules(name, descr, equipId, deptId, startDate, recurCount, timeFreq, timeInterval)
	VALUES(@name, @descr, @equipId, @deptId, @startDate, @recurCount, @timeFreq, @timeFreq)
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrderAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spWorkOrderAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrderAdd] TO [mrsystems] AS [dbo]
GO
