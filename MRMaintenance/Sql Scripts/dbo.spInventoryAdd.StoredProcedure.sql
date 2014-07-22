USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spInventoryAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spInventoryAdd]
	@invLocId bigint = NULL,
	@partId bigint = NULL,
	@qty bigint = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Inventory(invLocId, partId, qty) VALUES(@invLocId, @partId, @qty)
END

GO
