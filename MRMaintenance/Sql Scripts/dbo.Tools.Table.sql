USE [MRMaintenance]
GO
ALTER TABLE [dbo].[Tools] DROP CONSTRAINT [FK_Tools_InventoryLocations]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP TABLE [dbo].[Tools]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 8/2/2014 9:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[toolId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NULL,
	[invLocId] [bigint] NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[toolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Tools] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_InventoryLocations] FOREIGN KEY([invLocId])
REFERENCES [dbo].[InventoryLocations] ([invLocId])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_InventoryLocations]
GO
