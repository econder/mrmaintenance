USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[InventoryLocations]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryLocations](
	[invLocId] [bigint] IDENTITY(1,1) NOT NULL,
	[facId] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_InventoryLocations] PRIMARY KEY CLUSTERED 
(
	[invLocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[InventoryLocations]  WITH CHECK ADD  CONSTRAINT [FK_InventoryLocations_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
GO
ALTER TABLE [dbo].[InventoryLocations] CHECK CONSTRAINT [FK_InventoryLocations_Facilities]
GO
