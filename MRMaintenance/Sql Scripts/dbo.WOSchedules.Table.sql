USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[WOSchedules]    Script Date: 7/24/2014 11:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WOSchedules](
	[woSchedId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[deptId] [bigint] NOT NULL,
	[startDate] [datetime] NOT NULL,
	[recurCount] [int] NULL,
	[timeFreq] [int] NOT NULL,
	[intId] [bigint] NOT NULL,
	[lastcompleted] [datetime] NULL,
 CONSTRAINT [PK_WOSchedules] PRIMARY KEY CLUSTERED 
(
	[woSchedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WOSchedules] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[WOSchedules] ON 

INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastcompleted]) VALUES (1, N'PLC Battery Replace', N'Replace PLC Processor Backup Batteries', 1, 1, CAST(0x0000A13900000000 AS DateTime), 0, 1, 8, CAST(0x0000A28700000000 AS DateTime))
INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastcompleted]) VALUES (4, N'PLC Program Backup', N'', 1, 1, CAST(0x0000A35F00000000 AS DateTime), 0, 1, 8, CAST(0x0000A35F00000000 AS DateTime))
INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastcompleted]) VALUES (7, N'Lube Bearings', N'', 2, 1, CAST(0x0000A35B00000000 AS DateTime), 0, 150, 10, CAST(0x0000A37000C7FEAD AS DateTime))
INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastcompleted]) VALUES (10, N'Lube Bearings', N'', 2, 1, CAST(0x0000A35B00000000 AS DateTime), 0, 5000, 9, CAST(0x0000A35B00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[WOSchedules] OFF
ALTER TABLE [dbo].[WOSchedules] ADD  CONSTRAINT [DF_WOSchedules_recurCount]  DEFAULT ((0)) FOR [recurCount]
GO
ALTER TABLE [dbo].[WOSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WOSchedules_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WOSchedules] CHECK CONSTRAINT [FK_WOSchedules_Departments]
GO
ALTER TABLE [dbo].[WOSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WOSchedules_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
GO
ALTER TABLE [dbo].[WOSchedules] CHECK CONSTRAINT [FK_WOSchedules_Equipment]
GO
ALTER TABLE [dbo].[WOSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WOSchedules_TimeIntervals] FOREIGN KEY([intId])
REFERENCES [dbo].[TimeIntervals] ([intId])
GO
ALTER TABLE [dbo].[WOSchedules] CHECK CONSTRAINT [FK_WOSchedules_TimeIntervals]
GO
