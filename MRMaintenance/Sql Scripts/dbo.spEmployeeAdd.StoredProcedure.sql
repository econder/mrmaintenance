USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spEmployeeAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spEmployeeAdd]
	@facId bigint = NULL,
	@levelId bigint = NULL,
	@deptId bigint = NULL,
	@firstName nvarchar = NULL,
	@middleName nvarchar = NULL,
	@lastName nvarchar = NULL,
	@empNumber nvarchar = NULL,
	@addr1 nvarchar = NULL,
	@addr2 nvarchar = NULL,
	@city nvarchar = NULL,
	@stateId bigint = NULL,
	@zip nvarchar = NULL,
	@phone1 nvarchar = NULL,
	@phone2 nvarchar = NULL,
	@email nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Employees(facId, levelId, deptId, firstName, middleName, lastName, empNumber, addr1, addr2, city, stateId, zip, phone1, phone2, email)
	VALUES(@facId, @levelId, @deptId, @firstName, @middleName, @lastName, @empNumber, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @email)
END

GO
ALTER AUTHORIZATION ON [dbo].[spEmployeeAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spEmployeeAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spEmployeeAdd] TO [mrsystems] AS [dbo]
GO
