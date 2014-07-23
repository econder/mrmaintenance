USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spCycleAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spCycleAdd]
	@equipId bigint = NULL,
	@cyclesDate datetime = NULL,
	@cycles int = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Cycles(equipId, cyclesDate, cycleId) VALUES(@equipId, @cyclesDate, @cycles)
END

GO
ALTER AUTHORIZATION ON [dbo].[spCycleAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spCycleAdd] TO [MRMaintenanceApp] AS [dbo]
GO
