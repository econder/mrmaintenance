USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spToolAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
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
ALTER AUTHORIZATION ON [dbo].[spToolAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spToolAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spToolAdd] TO [mrsystems] AS [dbo]
GO
