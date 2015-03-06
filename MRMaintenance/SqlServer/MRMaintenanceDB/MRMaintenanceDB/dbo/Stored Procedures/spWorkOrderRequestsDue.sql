-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-10
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrderRequestsDue]
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM v_WorkOrderRequests
	WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
END
