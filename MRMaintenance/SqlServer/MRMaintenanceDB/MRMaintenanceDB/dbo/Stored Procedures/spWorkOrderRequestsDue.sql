-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-07-10
-- Description:	Returns list of near-due & past-due work orders
-- =============================================
CREATE PROCEDURE [dbo].[spWorkOrderRequestsDue]
	@dueDateDeadband int = NULL,		 -- Deadband units = Days
	@facilityId bigint = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT reqId AS [ID], reqName AS [Name], reqDateSubmitted AS [Date Submitted], nextDue AS [Due By], locName AS [Location], equipId AS [Equipment ID],
	equipName AS [Equipment Name], priorityName AS [Priority], woCount AS [Open Work Orders]
	FROM v_WorkOrderRequests
	WHERE v_WorkOrderRequests.nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
	AND v_WorkOrderRequests.facId = @facilityId
	AND v_WorkOrderRequests.enabled = 1
	ORDER BY v_WorkOrderRequests.nextDue DESC, priorityId DESC
END
