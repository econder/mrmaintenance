USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWorkOrdersDue]    Script Date: 7/22/2014 12:00:48 AM ******/
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
	WHERE v_WorkOrders2.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	OR v_WorkOrders2.runtime >= v_WorkOrders2.timeFreq - (v_WorkOrders2.timeFreq * 0.10)
	OR v_WorkOrders2.cycles >= v_WorkOrders2.timeFreq - (v_WorkOrders2.timeFreq * 0.10)
END

GO
