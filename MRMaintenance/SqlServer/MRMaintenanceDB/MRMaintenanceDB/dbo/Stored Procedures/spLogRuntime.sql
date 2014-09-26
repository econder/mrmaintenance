-- ======================================================================
-- Author:		Eric Conder
-- Create date: 2014-08-07
-- Description:	Inserts equipment runtimes into Runtimes table using
--				the equipment runtime tagname.
-- ======================================================================
CREATE PROCEDURE [dbo].[spLogRuntime]
	@equipRtTag nvarchar(255) = null,
	@runtime float = null,
	@isPrevDay bit = 1
AS
DECLARE
	@runtimeDate datetime

BEGIN
	SET NOCOUNT ON;
	
	--If runtime corresponds to today
	IF @isPrevDay = 0 SET @runtimeDate = GETDATE()
	
	--If runtime corresponds to yesterday
	IF @isPrevDay = 1 SET @runtimeDate = GETDATE()-1
	

	INSERT INTO Runtimes(equipId, runtimeDate, runtime)
	VALUES((SELECT equipId FROM Equipment WHERE hmiRuntimeTagname=@equipRtTag), @runtimeDate, @runtime)
END
