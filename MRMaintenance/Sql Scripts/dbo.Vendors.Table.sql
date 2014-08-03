USE [MRMaintenance]
GO
ALTER TABLE [dbo].[Vendors] DROP CONSTRAINT [FK_Vendors_States]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/2/2014 9:19:00 PM ******/
DROP TABLE [dbo].[Vendors]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 8/2/2014 9:19:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendors](
	[venId] [bigint] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[venId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Vendors] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Vendors] ON 

INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (2, N'MR Systems Inc.', N'1185 Beaver Ruin Rd', N'Suite A', N'Norcross', 10, N'30093', N'6783252800', N'', N'6783252100', N'www.mrsystems.com')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (3, N'Burnette Lime', N'7095 Highway 11', N'', N'Campobello', 40, N'29322', N'8007264187', N'8645921658', N'8645921690', N'http://www.burnett-inc.com/')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (4, N'Wedeco (Xylem Water Solutions)', N'14125 South Bridge Circle', N'', N'Charlotte', 40, N'28273', N'7044099700', N'', N'7042959080', N'http://www.wedeco.com/us/')
INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (5, N'Heyward Inc.', N'2101 Cambridge Beltway Dr', N'', N'Charlotte', 33, N'28273', N'7045832305', N'', N'7045832900', N'http://www.heyward.net/')
SET IDENTITY_INSERT [dbo].[Vendors] OFF
ALTER TABLE [dbo].[Vendors]  WITH CHECK ADD  CONSTRAINT [FK_Vendors_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Vendors] CHECK CONSTRAINT [FK_Vendors_States]
GO
