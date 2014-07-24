USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[Count]    Script Date: 7/23/2014 10:12:05 PM ******/
DROP TABLE [dbo].[Count]
GO
/****** Object:  Table [dbo].[Count]    Script Date: 7/23/2014 10:12:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Count](
	[countId] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Count] PRIMARY KEY CLUSTERED 
(
	[countId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Count] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Count] ON 

INSERT [dbo].[Count] ([countId]) VALUES (1)
INSERT [dbo].[Count] ([countId]) VALUES (2)
INSERT [dbo].[Count] ([countId]) VALUES (3)
INSERT [dbo].[Count] ([countId]) VALUES (4)
INSERT [dbo].[Count] ([countId]) VALUES (5)
INSERT [dbo].[Count] ([countId]) VALUES (6)
INSERT [dbo].[Count] ([countId]) VALUES (7)
INSERT [dbo].[Count] ([countId]) VALUES (8)
INSERT [dbo].[Count] ([countId]) VALUES (9)
INSERT [dbo].[Count] ([countId]) VALUES (10)
SET IDENTITY_INSERT [dbo].[Count] OFF
