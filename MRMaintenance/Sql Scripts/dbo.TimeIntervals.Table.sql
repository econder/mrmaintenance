USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 7/24/2014 11:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeIntervals](
	[intId] [bigint] NOT NULL,
	[intName] [nvarchar](50) NOT NULL,
	[intAbbr] [nvarchar](50) NOT NULL,
	[orderCode] [int] NOT NULL,
 CONSTRAINT [PK_TimeIntervals] PRIMARY KEY CLUSTERED 
(
	[intId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TimeIntervals] TO  SCHEMA OWNER 
GO
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (1, N'Run Once', N'1x', 0)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (2, N'Minute', N'n', 1)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (3, N'Hour', N'h', 2)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (4, N'Day', N'd', 3)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (5, N'Week', N'ww', 4)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (6, N'Month', N'm', 5)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (7, N'Quarter', N'q', 6)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (8, N'Year', N'yyyy', 7)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (9, N'Cycles', N'cyc', 10)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (10, N'Runtime Hours', N'rt', 9)
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr], [orderCode]) VALUES (11, N'Weekday', N'w', 8)
