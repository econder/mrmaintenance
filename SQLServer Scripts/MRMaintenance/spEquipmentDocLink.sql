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
CREATE PROCEDURE spEquipmentDocAdd
	@equipId bigint = NULL,
	@equipDoclink varchar = NULL

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO EquipmentDocs(equipId, equipDocLink) VALUES(@equipId, @equipDoclink);
END
GO
