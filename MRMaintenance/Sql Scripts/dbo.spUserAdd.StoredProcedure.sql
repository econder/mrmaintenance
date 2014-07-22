USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spUserAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
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
