USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spUnitAdd]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eric Conder
-- Create date: 2014-06-16
-- =============================================
CREATE PROCEDURE [dbo].[spUnitAdd]
	@abbr nvarchar = NULL,
	@descr nvarchar = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Units(abbr, descr) VALUES(@abbr, @descr)
END

GO
