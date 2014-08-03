USE [MRMaintenance]
GO
ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_States]
GO
ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_Locations_Facilities]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP TABLE [dbo].[Locations]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/2/2014 9:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Locations](
	[locId] [bigint] IDENTITY(1,1) NOT NULL,
	[facId] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [varchar](10) NULL,
	[lat] [float] NULL,
	[long] [float] NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[locId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Locations] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (1, 2, N'Raw Water PS', N'', N'', N'', 42, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (2, 3, N'MR Office', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', 15.000000953674316, -15.000000953674316)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (9, 2, N'Influent PS', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (10, 2, N'Clarifiers - Primary', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (11, 2, N'Clarifiers - Secondary', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (12, 2, N'UV', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (13, 2, N'RAS/WAS', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (14, 2, N'Dewatering', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (15, 2, N'Solids Processing', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (16, 2, N'Sludge Processing', N'', N'', N'', 40, N'', 0, 0)
INSERT [dbo].[Locations] ([locId], [facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long]) VALUES (17, 2, N'Equalization Basin', N'', N'', N'', 40, N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Locations] OFF
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Facilities] FOREIGN KEY([facId])
REFERENCES [dbo].[Facilities] ([facId])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Facilities]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_States]
GO
