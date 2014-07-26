USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Facilities]    Script Date: 7/26/2014 12:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facilities](
	[facId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [varchar](10) NULL,
	[lat] [float] NULL,
	[long] [float] NULL,
	[phone1] [varchar](10) NULL,
	[phone2] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[facId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Facilities] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Facilities] ON 

INSERT [dbo].[Facilities] ([facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long], [phone1], [phone2], [fax]) VALUES (2, N'Camden WWTP', N'175 Bramblewood Plantation Rd', N'', N'Camden', 40, N'29020', 0, 0, N'8034256053', N'', N'')
INSERT [dbo].[Facilities] ([facId], [name], [addr1], [addr2], [city], [stateId], [zip], [lat], [long], [phone1], [phone2], [fax]) VALUES (3, N'MR Systems - Atlanta', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', 0, 0, N'6783252800', N'6783252815', N'')
SET IDENTITY_INSERT [dbo].[Facilities] OFF
ALTER TABLE [dbo].[Facilities]  WITH CHECK ADD  CONSTRAINT [FK_Facilities_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Facilities] CHECK CONSTRAINT [FK_Facilities_States]
GO
