USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spToolAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spToolAdd]
	@name nvarchar = NULL,
	@descr nvarchar = NULL,
	@invLocId bigint = NULL,
	@qty int = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Tools(name, descr, invLocId, qty) VALUES(@name, @descr, @invLocId, @qty)
END

GO
