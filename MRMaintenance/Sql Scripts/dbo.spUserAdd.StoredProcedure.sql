USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spUserAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spUserAdd]
	@empId bigint = NULL,
	@deptId bigint = NULL,
	@userName nvarchar = NULL,
	@password nvarchar = NULL,
	@salt nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Users(empId, deptId, userName, password, salt) VALUES(@empId, @deptId, @userName, @password, @salt)
END

GO
ALTER AUTHORIZATION ON [dbo].[spUserAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spUserAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spUserAdd] TO [mrsystems] AS [dbo]
GO
