USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spVendorContactAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spVendorContactAdd]
	@venId bigint = NULL,
	@firstName nvarchar = NULL,
	@midName nvarchar = NULL,
	@lastName nvarchar = NULL,
	@title nvarchar = NULL,
	@phone1 nvarchar = NULL,
	@phone2 nvarchar = NULL,
	@fax nvarchar = NULL,
	@email nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO VendorContacts(venId, firstName, midName, lastName, title, phone1, phone2, fax, email) 
	VALUES(@venId, @firstName, @midName, @lastName, @title, @phone1, @phone2, @fax, @email)
END

GO
ALTER AUTHORIZATION ON [dbo].[spVendorContactAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spVendorContactAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spVendorContactAdd] TO [mrsystems] AS [dbo]
GO
