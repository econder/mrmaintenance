USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 7/26/2014 12:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[unitId] [bigint] IDENTITY(1,1) NOT NULL,
	[abbr] [nvarchar](255) NOT NULL,
	[descr] [nvarchar](255) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[unitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Units] TO  SCHEMA OWNER 
GO
