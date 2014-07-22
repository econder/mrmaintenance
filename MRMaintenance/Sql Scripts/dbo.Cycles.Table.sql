USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cycles](
	[cycleId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[cyclesDate] [datetime] NOT NULL,
	[cycles] [int] NOT NULL,
 CONSTRAINT [PK_Cycles] PRIMARY KEY CLUSTERED 
(
	[cycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cycles]  WITH CHECK ADD  CONSTRAINT [FK_Cycles_Cycles] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
GO
ALTER TABLE [dbo].[Cycles] CHECK CONSTRAINT [FK_Cycles_Cycles]
GO
