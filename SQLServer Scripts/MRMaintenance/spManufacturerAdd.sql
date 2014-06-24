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
CREATE PROCEDURE spManufacturerAdd
	@name varchar = NULL,
	@addr1 varchar = NULL,
	@addr2 varchar = NULL,
	@city varchar = NULL,
	@stateId bigint = NULL,
	@zip varchar = NULL,
	@phone1 varchar = NULL,
	@phone2 varchar = NULL,
	@fax varchar = NULL,
	@web varchar = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Manufacturers(name, addr1, addr2, city, stateId, zip, phone1, phone2, fax, web) VALUES(@name, @addr1, @addr2, @city, @stateId, @zip, @phone1, @phone2, @fax, @web);
END
GO
