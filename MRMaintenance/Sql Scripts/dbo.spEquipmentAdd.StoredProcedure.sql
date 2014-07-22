USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spEquipmentAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
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
