-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-08-06
-- Description:	Creates work order request
-- =============================================
CREATE PROCEDURE [dbo].[spCreateWorkOrderRequest]
	@reqName nvarchar(255) = NULL,
	@reqDescr nvarchar(4000) = NULL,
	@equipId bigint = NULL,
	@deptId bigint = NULL,
	@reqStartDate datetime = NULL,
	@timeFreq int = NULL,
	@intId bigint = NULL,
	@enabled bit = 1,
	@priorityId int = NULL
AS
BEGIN
	SET NOCOUNT ON;

	--lastCompleted field is set to the same date as reqStartDate, otherwise 
	--there's no baseline date to calculate the time intervals from
	INSERT INTO dbo.WorkOrderRequests(reqName, reqDescr, equipId, deptId, reqStartDate, timeFreq, intId, lastCompleted, enabled, priorityId) 
	VALUES(@reqName, @reqDescr, @equipId, @deptId, @reqStartDate, @timeFreq, @intId, @reqStartDate, @enabled, @priorityId)
END
