USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spEquipmentDocAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spEquipmentDocAdd]
	@equipId bigint = NULL,
	@equipDoclink nvarchar = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO EquipmentDocs(equipId, equipDocLink) VALUES(@equipId, @equipDoclink);
END

GO
ALTER AUTHORIZATION ON [dbo].[spEquipmentDocAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spEquipmentDocAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spEquipmentDocAdd] TO [mrsystems] AS [dbo]
GO
