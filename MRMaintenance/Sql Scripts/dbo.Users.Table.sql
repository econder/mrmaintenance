USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/26/2014 12:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [bigint] IDENTITY(1,1) NOT NULL,
	[empId] [bigint] NOT NULL,
	[deptId] [bigint] NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[password] [nvarchar](4000) NULL,
	[salt] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Users] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Departments]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Employees] FOREIGN KEY([empId])
REFERENCES [dbo].[Employees] ([empId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Employees]
GO
