USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[WOHistory]    Script Date: 7/26/2014 12:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WOHistory](
	[woHistId] [bigint] IDENTITY(1,1) NOT NULL,
	[woSchedId] [bigint] NOT NULL,
	[woHistDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_WOHistoriy] PRIMARY KEY CLUSTERED 
(
	[woHistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[WOHistory] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[WOHistory] ON 

INSERT [dbo].[WOHistory] ([woHistId], [woSchedId], [woHistDateTime]) VALUES (1, 7, CAST(0x0000A37000C2B3C5 AS DateTime))
INSERT [dbo].[WOHistory] ([woHistId], [woSchedId], [woHistDateTime]) VALUES (2, 7, CAST(0x0000A37000C7FEAD AS DateTime))
SET IDENTITY_INSERT [dbo].[WOHistory] OFF
ALTER TABLE [dbo].[WOHistory] ADD  CONSTRAINT [DF_WOHistoriy_woHistDateTime]  DEFAULT (getdate()) FOR [woHistDateTime]
GO
ALTER TABLE [dbo].[WOHistory]  WITH CHECK ADD  CONSTRAINT [FK_WOHistory_WOSchedules] FOREIGN KEY([woSchedId])
REFERENCES [dbo].[WOSchedules] ([woSchedId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WOHistory] CHECK CONSTRAINT [FK_WOHistory_WOSchedules]
GO
