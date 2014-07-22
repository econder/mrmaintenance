USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[WOSchedules]    Script Date: 7/22/2014 12:00:48 AM ******/
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
	[recurCount] [int] NOT NULL,
	[timeFreq] [int] NOT NULL,
	[timeInterval] [nvarchar](50) NOT NULL,
	[lastcompleted] [datetime] NULL,
 CONSTRAINT [PK_WOSchedules] PRIMARY KEY CLUSTERED 
(
	[woSchedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[WOSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WOSchedules_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[WOSchedules] CHECK CONSTRAINT [FK_WOSchedules_Departments]
GO
