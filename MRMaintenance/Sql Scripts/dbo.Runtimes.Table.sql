USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Runtimes](
	[runtimeId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[runtimeDate] [datetime] NOT NULL,
	[runtime] [float] NOT NULL,
 CONSTRAINT [PK_Runtimes] PRIMARY KEY CLUSTERED 
(
	[runtimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
