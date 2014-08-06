USE [MRMaintenance]
GO
ALTER TABLE [dbo].[WOSchedules] DROP CONSTRAINT [FK_WOSchedules_TimeIntervals]
GO
ALTER TABLE [dbo].[WOSchedules] DROP CONSTRAINT [FK_WOSchedules_Equipment]
GO
ALTER TABLE [dbo].[WOSchedules] DROP CONSTRAINT [FK_WOSchedules_Departments]
GO
/****** Object:  Table [dbo].[WOSchedules]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP TABLE [dbo].[WOSchedules]
GO
/****** Object:  Table [dbo].[WOSchedules]    Script Date: 8/5/2014 8:42:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WOSchedules](
	[woSchedId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NULL,
	[equipId] [bigint] NOT NULL,
	[deptId] [bigint] NOT NULL,
	[startDate] [datetime] NOT NULL,
	[recurCount] [int] NULL CONSTRAINT [DF_WOSchedules_recurCount]  DEFAULT ((0)),
	[timeFreq] [int] NOT NULL,
	[intId] [bigint] NOT NULL,
	[lastCompleted] [datetime] NULL,
 CONSTRAINT [PK_WOSchedules] PRIMARY KEY CLUSTERED 
(
	[woSchedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WOSchedules] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[WOSchedules] ON 

INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastCompleted]) VALUES (1, N'PLC Battery Replace', N'Replace PLC Processor Backup Batteries', 1, 1, CAST(N'2013-01-01 00:00:00.000' AS DateTime), 0, 1, 8, CAST(N'2013-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastCompleted]) VALUES (4, N'PLC Program Backup', N'', 1, 1, CAST(N'2014-07-05 00:00:00.000' AS DateTime), 0, 1, 8, CAST(N'2014-07-05 00:00:00.000' AS DateTime))
INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastCompleted]) VALUES (7, N'Lube Bearings', N'', 2, 1, CAST(N'2014-07-01 00:00:00.000' AS DateTime), 0, 150, 10, CAST(N'2014-07-22 12:08:09.537' AS DateTime))
INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastCompleted]) VALUES (10, N'Lube Bearings', N'', 2, 1, CAST(N'2014-07-01 00:00:00.000' AS DateTime), 0, 5000, 9, CAST(N'2014-07-01 00:00:00.000' AS DateTime))
INSERT [dbo].[WOSchedules] ([woSchedId], [name], [descr], [equipId], [deptId], [startDate], [recurCount], [timeFreq], [intId], [lastCompleted]) VALUES (36, N'Wash Conder''s Car', N'Wash & wax exterior. Vaccum interior. Dress dash and all colored plastic surfaces.', 5, 7, CAST(N'2014-08-04 00:00:00.000' AS DateTime), 0, 5, 4, CAST(N'2014-08-04 12:08:09.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[WOSchedules] OFF
ALTER TABLE [dbo].[WOSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WOSchedules_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WOSchedules] CHECK CONSTRAINT [FK_WOSchedules_Departments]
GO
ALTER TABLE [dbo].[WOSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WOSchedules_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WOSchedules] CHECK CONSTRAINT [FK_WOSchedules_Equipment]
GO
ALTER TABLE [dbo].[WOSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WOSchedules_TimeIntervals] FOREIGN KEY([intId])
REFERENCES [dbo].[TimeIntervals] ([intId])
GO
ALTER TABLE [dbo].[WOSchedules] CHECK CONSTRAINT [FK_WOSchedules_TimeIntervals]
GO
