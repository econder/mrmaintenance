USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDue]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-10
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrdersDue]
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM v_WorkOrders2
	WHERE v_WorkOrders2.[Next Due] <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	OR v_WorkOrders2.Runtime >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10)
	OR v_WorkOrders2.Cycles >= v_WorkOrders2.Frequency - (v_WorkOrders2.Frequency * 0.10)
END

GO
ALTER AUTHORIZATION ON [dbo].[spWorkOrdersDue] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDue] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spWorkOrdersDue] TO [mrsystems] AS [dbo]
GO
