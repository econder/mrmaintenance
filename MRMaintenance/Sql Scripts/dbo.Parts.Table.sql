USE [MRMaintenance]
GO
ALTER TABLE [dbo].[Parts] DROP CONSTRAINT [FK_Parts_Vendors]
GO
ALTER TABLE [dbo].[Parts] DROP CONSTRAINT [FK_Parts_Units]
GO
ALTER TABLE [dbo].[Parts] DROP CONSTRAINT [FK_Parts_Manufacturers]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP TABLE [dbo].[Parts]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 7/24/2014 3:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[partId] [bigint] IDENTITY(1,1) NOT NULL,
	[manId] [bigint] NOT NULL,
	[venId] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[descr] [varchar](255) NULL,
	[number] [nvarchar](255) NULL,
	[size] [int] NULL,
	[unitId] [bigint] NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[partId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Parts] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Manufacturers] FOREIGN KEY([manId])
REFERENCES [dbo].[Manufacturers] ([manId])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Manufacturers]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Units] FOREIGN KEY([unitId])
REFERENCES [dbo].[Units] ([unitId])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Units]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Vendors] FOREIGN KEY([venId])
REFERENCES [dbo].[Vendors] ([venId])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Vendors]
GO
