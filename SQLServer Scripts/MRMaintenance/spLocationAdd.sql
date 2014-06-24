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
CREATE PROCEDURE spLocationAdd
	@facId bigint = NULL,
	@name varchar = NULL,
	@addr1 varchar = NULL,
	@addr2 varchar = NULL,
	@city varchar = NULL,
	@stateId bigint = NULL,
	@zip varchar = NULL,
	@coords varchar = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Locations(facId, name, addr1, addr2, city, stateId, zip, coords) VALUES(@facId, @name, @addr1, @addr2, @city, @stateId, @zip, @coords);
END
GO
