USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spPartAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spPartAdd]
	@manId bigint = NULL,
	@venId bigint = NULL,
	@name nvarchar = NULL,
	@descr nvarchar = NULL,
	@number nvarchar = NULL,
	@size nvarchar = NULL,
	@unitId bigint = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Parts(manId, venId, name, descr, number, size, unitId) VALUES(@manId, @venId, @name, @descr, @number, @size, @unitId)
END

GO
