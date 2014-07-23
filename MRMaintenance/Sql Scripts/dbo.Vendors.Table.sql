USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 7/23/2014 12:44:45 AM ******/
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

INSERT [dbo].[Vendors] ([venId], [name], [addr1], [addr2], [city], [stateId], [zip], [phone1], [phone2], [fax], [web]) VALUES (1, N'Advantage Industrial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Vendors] OFF
ALTER TABLE [dbo].[Vendors]  WITH CHECK ADD  CONSTRAINT [FK_Vendors_States] FOREIGN KEY([stateId])
REFERENCES [dbo].[States] ([stateId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Vendors] CHECK CONSTRAINT [FK_Vendors_States]
GO
