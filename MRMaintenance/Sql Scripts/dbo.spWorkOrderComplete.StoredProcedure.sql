USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderComplete]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP PROCEDURE [dbo].[spWorkOrderComplete]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderComplete]    Script Date: 7/23/2014 10:12:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spWorkOrderComplete]
	@woSchedId bigint = NULL
AS
DECLARE @dateTimeNow datetime = getdate()

BEGIN
	SET NOCOUNT ON;

	/* Update lastcompleted field in WOSchedules */
	UPDATE WOSchedules SET lastcompleted=@dateTimeNow WHERE woSchedId=@woSchedId

	/* Add entry in WOHistory with same completion date/time */
	INSERT INTO WOHistory(woSchedId, woHistDateTime) VALUES(@woSchedId, @dateTimeNow)
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrderComplete] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spWorkOrderComplete] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrderComplete] TO [mrsystems] AS [dbo]
GO
