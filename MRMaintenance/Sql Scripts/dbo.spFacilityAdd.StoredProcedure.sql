USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spFacilityAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spFacilityAdd]
	@name nvarchar = NULL,
	@addr1 nvarchar = NULL,
	@addr2 nvarchar = NULL,
	@city nvarchar = NULL,
	@stateId bigint = NULL,
	@zip nvarchar = NULL,
	@phone1 nvarchar = NULL,
	@phone2 nvarchar = NULL,
	@fax nvarchar = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Facilities(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax) VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax);
END

GO
ALTER AUTHORIZATION ON [dbo].[spFacilityAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spFacilityAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spFacilityAdd] TO [mrsystems] AS [dbo]
GO
