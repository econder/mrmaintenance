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
CREATE PROCEDURE spDepartmentAdd
	@deptName varchar

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Departments(name) VALUES(@deptName);
END
GO
