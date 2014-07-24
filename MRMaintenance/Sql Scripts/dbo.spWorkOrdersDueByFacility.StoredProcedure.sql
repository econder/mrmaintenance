USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDueByFacility]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP PROCEDURE [dbo].[spWorkOrdersDueByFacility]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDueByFacility]    Script Date: 7/23/2014 10:12:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-21
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrdersDueByFacility]
	@facility nvarchar = NULL,		 -- Facility Name
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT ID, Name, Description, [Start Date], Frequency, Interval, [Last Completed], [Next Due], Department, Equipment, Location, Runtime, Cycles
	FROM v_WorkOrders2
	WHERE v_WorkOrders2.[Next Due] <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	OR v_WorkOrders2.Runtime >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10)
	OR v_WorkOrders2.Cycles >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10)
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrdersDueByFacility] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDueByFacility] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDueByFacility] TO [mrsystems] AS [dbo]
GO
