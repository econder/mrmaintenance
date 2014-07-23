USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spUnitAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spUnitAdd]
	@abbr nvarchar = NULL,
	@descr nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Units(abbr, descr) VALUES(@abbr, @descr)
END

GO
ALTER AUTHORIZATION ON [dbo].[spUnitAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spUnitAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spUnitAdd] TO [mrsystems] AS [dbo]
GO
