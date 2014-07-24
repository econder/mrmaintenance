USE [MRMaintenance]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_Parts]
GO
ALTER TABLE [dbo].[Inventory] DROP CONSTRAINT [FK_Inventory_InventoryLocations]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 7/23/2014 10:12:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[invId] [bigint] IDENTITY(1,1) NOT NULL,
	[invLocId] [bigint] NOT NULL,
	[partId] [bigint] NOT NULL,
	[qty] [bigint] NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[invId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Inventory] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_InventoryLocations] FOREIGN KEY([invLocId])
REFERENCES [dbo].[InventoryLocations] ([invLocId])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_InventoryLocations]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Parts] FOREIGN KEY([partId])
REFERENCES [dbo].[Parts] ([partId])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Parts]
GO
