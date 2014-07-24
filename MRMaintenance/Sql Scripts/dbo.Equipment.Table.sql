USE [MRMaintenance]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Vendors]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Manufacturers]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Locations]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_EquipmentTypes]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP TABLE [dbo].[Equipment]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 7/23/2014 10:12:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipId] [bigint] IDENTITY(1,1) NOT NULL,
	[locId] [bigint] NOT NULL,
	[equipTypeId] [bigint] NOT NULL,
	[manId] [bigint] NOT NULL,
	[vendorId] [bigint] NOT NULL,
	[equipNumber] [nvarchar](255) NULL,
	[equipName] [nvarchar](255) NOT NULL,
	[equipSerial] [nvarchar](255) NULL,
	[equipModel] [nvarchar](255) NULL,
	[equipModelDesc] [nvarchar](255) NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Equipment] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [equipNumber], [equipName], [equipSerial], [equipModel], [equipModelDesc]) VALUES (1, 1, 1, 1, 1, NULL, N'PLC-RW', NULL, N'1756-L31', N'ControlLogix PLC')
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [equipNumber], [equipName], [equipSerial], [equipModel], [equipModelDesc]) VALUES (2, 1, 1, 1, 1, NULL, N'RWP1', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentTypes] FOREIGN KEY([equipTypeId])
REFERENCES [dbo].[EquipmentTypes] ([typeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentTypes]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Locations] FOREIGN KEY([locId])
REFERENCES [dbo].[Locations] ([locId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Locations]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Manufacturers] FOREIGN KEY([manId])
REFERENCES [dbo].[Manufacturers] ([manId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Manufacturers]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Vendors] FOREIGN KEY([vendorId])
REFERENCES [dbo].[Vendors] ([venId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Vendors]
GO
