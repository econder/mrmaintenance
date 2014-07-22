USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spManufacturerAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spManufacturerAdd]
	@name nvarchar = NULL,
	@addr1 nvarchar = NULL,
	@addr2 nvarchar = NULL,
	@city nvarchar = NULL,
	@stateId bigint = NULL,
	@zip nvarchar = NULL,
	@phone1 nvarchar = NULL,
	@phone2 nvarchar = NULL,
	@fax nvarchar = NULL,
	@web nvarchar = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Manufacturers(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax, web) VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax, @web);
END

GO
