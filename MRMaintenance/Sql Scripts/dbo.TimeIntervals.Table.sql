USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP TABLE [dbo].[TimeIntervals]
GO
/****** Object:  Table [dbo].[TimeIntervals]    Script Date: 7/23/2014 10:12:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeIntervals](
	[intId] [bigint] NOT NULL,
	[intName] [nvarchar](50) NOT NULL,
	[intAbbr] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TimeIntervals] PRIMARY KEY CLUSTERED 
(
	[intId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[TimeIntervals] TO  SCHEMA OWNER 
GO
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (1, N'Run Once', N'1x')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (2, N'Minute', N'n')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (3, N'Hour', N'h')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (4, N'Day', N'd')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (5, N'Week', N'ww')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (6, N'Month', N'm')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (7, N'Quarter', N'q')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (8, N'Year', N'yyyy')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (9, N'Cycles', N'cyc')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (10, N'Runtime Hours', N'rt')
INSERT [dbo].[TimeIntervals] ([intId], [intName], [intAbbr]) VALUES (11, N'Weekday', N'w')
