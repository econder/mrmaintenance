USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spEquipmentTypeAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spEquipmentTypeAdd]
	@typeName nvarchar = NULL,
	@typeDesc nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO EquipmentTypes(typeName, typeDesc) VALUES(@typeName, @typeDesc)
END

GO
ALTER AUTHORIZATION ON [dbo].[spEquipmentTypeAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spEquipmentTypeAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spEquipmentTypeAdd] TO [mrsystems] AS [dbo]
GO
