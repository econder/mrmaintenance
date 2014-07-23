USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spInventoryLocationAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spInventoryLocationAdd]
	@facId bigint = NULL,
	@name nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO InventoryLocations(facId, name) VALUES(@facId, @name)
END

GO
ALTER AUTHORIZATION ON [dbo].[spInventoryLocationAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spInventoryLocationAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spInventoryLocationAdd] TO [mrsystems] AS [dbo]
GO
