USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spRuntimeAdd]    Script Date: 7/23/2014 12:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spRuntimeAdd]
	@equipId bigint = NULL,
	@runtimeDate datetime = NULL,
	@runtime float = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Runtimes(equipId, runtimeDate, runtime) VALUES(@equipId, @runtimeDate, @runtime)
END

GO
ALTER AUTHORIZATION ON [dbo].[spRuntimeAdd] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[spRuntimeAdd] TO [MRMaintenanceApp] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[spRuntimeAdd] TO [mrsystems] AS [dbo]
GO
