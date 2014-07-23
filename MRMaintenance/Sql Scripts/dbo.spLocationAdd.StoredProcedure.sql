USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spLocationAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spLocationAdd]
	@facId bigint = NULL,
	@name nvarchar = NULL,
	@addr1 nvarchar = NULL,
	@addr2 nvarchar = NULL,
	@city nvarchar = NULL,
	@stateId bigint = NULL,
	@zip nvarchar = NULL,
	@lat float = NULL,
	@long float = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Locations(facId, name, addr1, addr2, city, stateId, zip, lat, long) VALUES(@facId, @name, @addr1, @addr2, @city, @stateId, @zip, @lat, @long);
END

GO
ALTER AUTHORIZATION ON [dbo].[spLocationAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spLocationAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spLocationAdd] TO [mrsystems] AS [dbo]
GO
