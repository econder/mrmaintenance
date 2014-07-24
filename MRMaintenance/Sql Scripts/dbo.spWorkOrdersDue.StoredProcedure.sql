USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDue]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP PROCEDURE [dbo].[spWorkOrdersDue]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDue]    Script Date: 7/24/2014 3:23:55 PM ******/
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
