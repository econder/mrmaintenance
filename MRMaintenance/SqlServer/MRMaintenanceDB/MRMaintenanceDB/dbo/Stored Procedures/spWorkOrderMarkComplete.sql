
CREATE PROCEDURE [dbo].[spWorkOrderMarkComplete]
	@workOrderId bigint = NULL
AS

BEGIN
	SET NOCOUNT ON;

	/* Update lastcompleted field in WOSchedules */
	UPDATE WorkOrders SET woComplete=1, woDateCompleted=GETDATE() WHERE woId=@workOrderId
END
