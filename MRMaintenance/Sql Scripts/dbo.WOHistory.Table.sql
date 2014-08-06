USE [MRMaintenance]
GO
ALTER TABLE [dbo].[WOHistory] DROP CONSTRAINT [FK_WOHistory_WOSchedules]
GO
/****** Object:  Table [dbo].[WOHistory]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP TABLE [dbo].[WOHistory]
GO
/****** Object:  Table [dbo].[WOHistory]    Script Date: 8/5/2014 8:42:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WOHistory](
	[woHistId] [bigint] IDENTITY(1,1) NOT NULL,
	[woSchedId] [bigint] NOT NULL,
	[woHistDateTime] [datetime] NOT NULL CONSTRAINT [DF_WOHistoriy_woHistDateTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_WOHistoriy] PRIMARY KEY CLUSTERED 
(
	[woHistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WOHistory] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[WOHistory] ON 

INSERT [dbo].[WOHistory] ([woHistId], [woSchedId], [woHistDateTime]) VALUES (1, 7, CAST(N'2014-07-22 11:48:53.350' AS DateTime))
INSERT [dbo].[WOHistory] ([woHistId], [woSchedId], [woHistDateTime]) VALUES (2, 7, CAST(N'2014-07-22 12:08:09.537' AS DateTime))
INSERT [dbo].[WOHistory] ([woHistId], [woSchedId], [woHistDateTime]) VALUES (3, 7, CAST(N'2014-08-04 12:14:45.860' AS DateTime))
INSERT [dbo].[WOHistory] ([woHistId], [woSchedId], [woHistDateTime]) VALUES (4, 36, CAST(N'2014-08-04 12:14:53.630' AS DateTime))
INSERT [dbo].[WOHistory] ([woHistId], [woSchedId], [woHistDateTime]) VALUES (5, 36, CAST(N'2014-08-04 12:15:06.063' AS DateTime))
SET IDENTITY_INSERT [dbo].[WOHistory] OFF
ALTER TABLE [dbo].[WOHistory]  WITH CHECK ADD  CONSTRAINT [FK_WOHistory_WOSchedules] FOREIGN KEY([woSchedId])
REFERENCES [dbo].[WOSchedules] ([woSchedId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WOHistory] CHECK CONSTRAINT [FK_WOHistory_WOSchedules]
GO
