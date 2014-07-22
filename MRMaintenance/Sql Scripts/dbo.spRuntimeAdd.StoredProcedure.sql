USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spRuntimeAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
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
