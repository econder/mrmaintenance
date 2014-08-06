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
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP TABLE [dbo].[Equipment]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/5/2014 8:42:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[equipId] [bigint] IDENTITY(1,1) NOT NULL,
	[locId] [bigint] NOT NULL,
	[equipTypeId] [bigint] NOT NULL,
	[manId] [bigint] NOT NULL,
	[vendorId] [bigint] NULL,
	[equipNumber] [nvarchar](255) NULL,
	[equipName] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NULL,
	[equipSerial] [nvarchar](255) NULL,
	[equipModel] [nvarchar](255) NULL,
	[hmiRuntimeTagname] [nvarchar](255) NULL,
	[hmiCyclesTagname] [nvarchar](255) NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[equipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Equipment] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [equipNumber], [equipName], [descr], [equipSerial], [equipModel], [hmiRuntimeTagname], [hmiCyclesTagname]) VALUES (1, 10, 1, 1, 2, N'', N'PLC-RW', N'ControlLogix PLC', N'', N'1756-L31', NULL, NULL)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [equipNumber], [equipName], [descr], [equipSerial], [equipModel], [hmiRuntimeTagname], [hmiCyclesTagname]) VALUES (2, 10, 1, 1, 2, N'', N'RWP1', N'', N'', N'', NULL, NULL)
INSERT [dbo].[Equipment] ([equipId], [locId], [equipTypeId], [manId], [vendorId], [equipNumber], [equipName], [descr], [equipSerial], [equipModel], [hmiRuntimeTagname], [hmiCyclesTagname]) VALUES (5, 2, 1, 5, 7, N'', N'2008 Compass', N'Green, 2WD, 6-speed automatic CVT with manual override, gray/black interior', N'', N'', NULL, NULL)
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
