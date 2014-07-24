USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDueByFacility]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP PROCEDURE [dbo].[spWorkOrdersDueByFacility]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDueByFacility]    Script Date: 7/24/2014 3:23:55 PM ******/
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
	@facilityId bigint = NULL,		 -- Facility Name
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT ID, Name, Description, [Start Date], Frequency, Interval, [Last Completed], [Next Due], Department, Equipment, Location, [Facility ID], Runtime, Cycles
	FROM v_WorkOrders2
	WHERE (v_WorkOrders2.[Next Due] <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	AND v_WorkOrders2.[Facility ID] = @facilityId)
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
