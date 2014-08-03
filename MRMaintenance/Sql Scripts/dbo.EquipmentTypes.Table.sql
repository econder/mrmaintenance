USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP TABLE [dbo].[EquipmentTypes]
GO
/****** Object:  Table [dbo].[EquipmentTypes]    Script Date: 8/2/2014 9:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentTypes](
	[typeId] [bigint] IDENTITY(1,1) NOT NULL,
	[typeName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_EquipmentTypes] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[EquipmentTypes] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[EquipmentTypes] ON 

INSERT [dbo].[EquipmentTypes] ([typeId], [typeName]) VALUES (1, N'PLC')
SET IDENTITY_INSERT [dbo].[EquipmentTypes] OFF
