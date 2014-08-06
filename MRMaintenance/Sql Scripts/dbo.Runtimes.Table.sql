USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP TABLE [dbo].[Runtimes]
GO
/****** Object:  Table [dbo].[Runtimes]    Script Date: 8/5/2014 8:42:35 PM ******/
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

INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (1, 2, CAST(N'2014-07-01 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (2, 2, CAST(N'2014-07-02 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (3, 2, CAST(N'2014-07-03 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (6, 2, CAST(N'2014-07-04 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (7, 2, CAST(N'2014-07-05 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (8, 2, CAST(N'2014-07-06 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (10, 2, CAST(N'2014-07-07 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (12, 2, CAST(N'2014-07-08 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (13, 2, CAST(N'2014-07-09 00:00:00.000' AS DateTime), 24)
INSERT [dbo].[Runtimes] ([runtimeId], [equipId], [runtimeDate], [runtime]) VALUES (14, 2, CAST(N'2014-07-10 00:00:00.000' AS DateTime), 24)
SET IDENTITY_INSERT [dbo].[Runtimes] OFF
