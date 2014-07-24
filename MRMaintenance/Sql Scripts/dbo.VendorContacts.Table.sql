USE [MRMaintenance]
GO
ALTER TABLE [dbo].[VendorContacts] DROP CONSTRAINT [FK_VendorContacts_Vendors]
GO
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP TABLE [dbo].[VendorContacts]
GO
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 7/24/2014 3:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorContacts](
	[venContId] [bigint] IDENTITY(1,1) NOT NULL,
	[venId] [bigint] NOT NULL,
	[firstName] [nvarchar](255) NOT NULL,
	[midName] [nvarchar](255) NULL,
	[lastName] [nvarchar](255) NOT NULL,
	[title] [nvarchar](255) NULL,
	[phone1] [varchar](10) NULL,
	[phone2] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
	[email] [nvarchar](4000) NULL,
 CONSTRAINT [PK_VendorContacts] PRIMARY KEY CLUSTERED 
(
	[venContId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[VendorContacts] TO  SCHEMA OWNER 
GO
ALTER TABLE [dbo].[VendorContacts]  WITH CHECK ADD  CONSTRAINT [FK_VendorContacts_Vendors] FOREIGN KEY([venId])
REFERENCES [dbo].[Vendors] ([venId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorContacts] CHECK CONSTRAINT [FK_VendorContacts_Vendors]
GO
