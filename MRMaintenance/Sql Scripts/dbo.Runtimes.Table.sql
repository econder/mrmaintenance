USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP TABLE [dbo].[Runtimes]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 7/24/2014 3:23:55 PM ******/
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
ALTER AUTHORIZATION ON [dbo].[Runtimes] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Runtimes] ON 

INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (1, 2, CAST(0x0000A35B00000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (2, 2, CAST(0x0000A35C00000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (3, 2, CAST(0x0000A35D00000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (6, 2, CAST(0x0000A35E00000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (7, 2, CAST(0x0000A35F00000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (8, 2, CAST(0x0000A36000000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (10, 2, CAST(0x0000A36100000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (12, 2, CAST(0x0000A36200000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (13, 2, CAST(0x0000A36300000000 AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (14, 2, CAST(0x0000A36400000000 AS DateTime), 24)
SET IDENTITY_INSERT [dbo].[Runtimes] OFF
