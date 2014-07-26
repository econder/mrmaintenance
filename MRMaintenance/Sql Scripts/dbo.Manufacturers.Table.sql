USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 7/26/2014 12:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[manId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[addr1] [nvarchar](255) NULL,
	[addr2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[stateId] [bigint] NULL,
	[zip] [varchar](10) NULL,
	[phone1] [varchar](10) NULL,
	[phone2] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
	[web] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[manId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Manufacturers] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (1, N'Allen-Bradley', N'', N'', N'', 51, N'', N'', N'', N'', N'www.rockwellautomation.com')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (3, N'Modicon', N'', N'', N'', 51, N'', N'', N'', N'', N'')
INSERT [dbo].[Manufacturers] ([manId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (4, N'MR Systems', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', N'6783252800', N'', N'6783252100', N'www.mrsystems.com')
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
ALTER TABLE [dbo].[Manufacturers]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturers_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
GO
ALTER TABLE [dbo].[Manufacturers] CHECK CONSTRAINT [FK_Manufacturers_States]
GO
