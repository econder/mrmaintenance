USE [MRMaintenance]
GO
ALTER TABLE [dbo].[Departments] DROP CONSTRAINT [FK_Departments_Departments]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP TABLE [dbo].[Departments]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/2/2014 9:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[deptId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[deptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Departments] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([deptId], [name]) VALUES (1, N'Maintenance')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (2, N'Engineering')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (3, N'Operations')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (4, N'Distribution')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (5, N'Collections')
INSERT [dbo].[Departments] ([deptId], [name]) VALUES (7, N'Billing')
SET IDENTITY_INSERT [dbo].[Departments] OFF
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Departments]
GO
