USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP TABLE [dbo].[Cycles]
GO
/****** Object:  Table [dbo].[Cycles]    Script Date: 7/24/2014 3:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cycles](
	[cycleId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[cyclesDate] [datetime] NOT NULL,
	[cycles] [bigint] NOT NULL,
 CONSTRAINT [PK_Cycles] PRIMARY KEY CLUSTERED 
(
	[cycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Cycles] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Cycles] ON 

INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (1, 2, CAST(0x0000A35B00000000 AS DateTime), 2)
INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (2, 2, CAST(0x0000A35C00000000 AS DateTime), 4)
INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (3, 2, CAST(0x0000A35D00000000 AS DateTime), 6)
INSERT [dbo].[Cycles] ([cycleId], [equipId], [cyclesDate], [cycles]) VALUES (4, 2, CAST(0x0000A35E00000000 AS DateTime), 8)
SET IDENTITY_INSERT [dbo].[Cycles] OFF
