USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 7/26/2014 12:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[empId] [bigint] IDENTITY(1,1) NOT NULL,
	[facId] [bigint] NOT NULL,
	[levelId] [bigint] NOT NULL,
	[deptId] [bigint] NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[middleName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[empNumber] [nvarchar](255) NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [nvarchar](255) NULL,
	[phone1] [nvarchar](10) NULL,
	[phone2] [nvarchar](10) NULL,
	[email] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Employees] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([deptId])
REFERENCES [dbo].[Departments] ([deptId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_EmployeeAccessLevels] FOREIGN KEY([levelId])
REFERENCES [dbo].[EmployeeAccessLevels] ([levelId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_EmployeeAccessLevels]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Facilities]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_States]
GO
