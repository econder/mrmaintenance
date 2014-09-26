-- ======================================================================
-- Author:		Eric Conder
-- Create date: 2014-08-07
-- Description:	Inserts equipment cycles into Cycles table using
--				the equipment cycles tagname.
-- ======================================================================
CREATE PROCEDURE [dbo].[spLogCycles]
	@equipCycTag nvarchar(255) = null,
	@cycles int = null,
	@isPrevDay bit = 1
AS
DECLARE
	@cyclesDate datetime

BEGIN
	SET NOCOUNT ON;
	
	--If runtime corresponds to today
	IF @isPrevDay = 0 SET @cyclesDate = GETDATE()
	
	--If runtime corresponds to yesterday
	IF @isPrevDay = 1 SET @cyclesDate = GETDATE()-1
	

	INSERT INTO Cycles(equipId, cyclesDate, cycles)
	VALUES((SELECT equipId FROM Equipment WHERE hmiCyclesTagname=@equipCycTag), @cyclesDate, @cycles)
END
