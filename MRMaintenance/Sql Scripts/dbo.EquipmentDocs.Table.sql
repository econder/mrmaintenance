USE [MRMaintenance]
GO
ALTER TABLE [dbo].[EquipmentDocs] DROP CONSTRAINT [FK_EquipmentDocs_Equipment]
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP TABLE [dbo].[EquipmentDocs]
GO
/****** Object:  Table [dbo].[EquipmentDocs]    Script Date: 8/2/2014 9:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentDocs](
	[equipDocId] [bigint] IDENTITY(1,1) NOT NULL,
	[equipId] [bigint] NOT NULL,
	[equipDocName] [nvarchar](50) NOT NULL,
	[equipDocLink] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_EquipmentDocs] PRIMARY KEY CLUSTERED 
(
	[equipDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EquipmentDocs] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[EquipmentDocs] ON 

INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (1, 1, N'User Manual', N'Z:\mrsystems\_work\Camden, City of (SC)\212009 - WWTP Expansion\Maintenance Database\docs\Dell\precision-t3600_Owner''s Manual_en-us.pdf')
INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (2, 1, N'Owner''s Manual', N'Z:\mrsystems\_work\Camden, City of (SC)\212009 - WWTP Expansion\Maintenance Database\docs\Dell\precision-t3600_Owner''s Manual_en-us.pdf')
INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (3, 1, N'Service Manual', N'Z:\mrsystems\_work\Camden, City of (SC)\212009 - WWTP Expansion\Maintenance Database\docs\Dell\precision-t3500_Service Manual_en-us.pdf')
INSERT [dbo].[EquipmentDocs] ([equipDocId], [equipId], [equipDocName], [equipDocLink]) VALUES (5, 1, N'Manufacturer''s Website', N'www.dell.com')
SET IDENTITY_INSERT [dbo].[EquipmentDocs] OFF
ALTER TABLE [dbo].[EquipmentDocs]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentDocs_Equipment] FOREIGN KEY([equipId])
REFERENCES [dbo].[Equipment] ([equipId])
GO
ALTER TABLE [dbo].[EquipmentDocs] CHECK CONSTRAINT [FK_EquipmentDocs_Equipment]
GO
