USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spEquipmentAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spEquipmentAdd]
	@locId bigint = NULL,
	@equipTypeId bigint = NULL,
	@manId bigint = NULL,
	@vendorId bigint = NULL,
	@equipNumber nvarchar = NULL,
	@equipName nvarchar = NULL,
	@equipSerial nvarchar = NULL,
	@equipModel nvarchar = NULL,
	@equipModelDesc nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Equipment(locId, equipTypeId, manId, vendorId, equipNumber, equipName, equipSerial, equipModel, equipModelDesc)
	VALUES(@locId, @equipTypeId, @manId, @vendorId, @equipNumber, @equipName, @equipSerial, @equipModel, @equipModelDesc)
END

GO
ALTER AUTHORIZATION ON [dbo].[spEquipmentAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spEquipmentAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spEquipmentAdd] TO [mrsystems] AS [dbo]
GO
