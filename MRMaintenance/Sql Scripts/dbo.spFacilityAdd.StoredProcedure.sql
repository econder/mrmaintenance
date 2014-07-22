USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spFacilityAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
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
