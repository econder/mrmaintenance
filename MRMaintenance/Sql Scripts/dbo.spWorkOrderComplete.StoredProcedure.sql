USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrderComplete]    Script Date: 7/22/2014 12:00:48 AM ******/
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
