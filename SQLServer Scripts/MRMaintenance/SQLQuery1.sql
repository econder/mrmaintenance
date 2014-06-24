USE MRMaintenance
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE spEmployeeAdd
	@facId bigint = NULL,
	@levelId bigint = NULL,
	@deptId bigint = NULL,
	@firstName varchar

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO EmployeeAccessLevels(levelName, levelDesc, levelCode) VALUES(@levelName, @levelDesc, @levelCode);
END
GO
