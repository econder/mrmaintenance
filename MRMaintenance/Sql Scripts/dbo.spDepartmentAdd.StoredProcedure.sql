USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spDepartmentAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spDepartmentAdd]
	@deptName nvarchar

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Departments(name) VALUES(@deptName);
END

GO
ALTER AUTHORIZATION ON [dbo].[spDepartmentAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spDepartmentAdd] TO [MRMaintenanceApp] AS [dbo]
GO
