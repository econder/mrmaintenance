USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[EmployeeAccessLevels]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeAccessLevels](
	[levelId] [bigint] IDENTITY(1,1) NOT NULL,
	[levelName] [nvarchar](50) NOT NULL,
	[levelDesc] [nvarchar](255) NULL,
	[levelCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeAccessLevels] PRIMARY KEY CLUSTERED 
(
	[levelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
