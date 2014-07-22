USE [MRMaintenance]
GO
/****** Object:  StoredProcedure [dbo].[spWOTest]    Script Date: 7/12/2014 10:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spWOTest]
	@dueDateDeadband int = NULL		 -- Deadband units = Days
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM v_WorkOrders
	WHERE nextDue <= DATEADD(DAY, @dueDateDeadband, GETDATE())
END

GO
