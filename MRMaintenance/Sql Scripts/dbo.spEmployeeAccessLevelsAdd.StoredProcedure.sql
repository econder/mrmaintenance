USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spEmployeeAccessLevelsAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spEmployeeAccessLevelsAdd]
	@levelName nvarchar = NULL,
	@levelDesc nvarchar = NULL,
	@levelCode nvarchar = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO EmployeeAccessLevels(levelName, levelDesc, levelCode) VALUES(@levelName, @levelDesc, @levelCode);
END

GO
ALTER AUTHORIZATION ON [dbo].[spEmployeeAccessLevelsAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spEmployeeAccessLevelsAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spEmployeeAccessLevelsAdd] TO [mrsystems] AS [dbo]
GO
