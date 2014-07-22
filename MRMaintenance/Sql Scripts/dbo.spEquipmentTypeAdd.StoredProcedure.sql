USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spEquipmentTypeAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
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
