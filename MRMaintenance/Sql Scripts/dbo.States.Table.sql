USE [MRMaintenance]
GO
/****** Object:  Table [dbo].[States]    Script Date: 7/24/2014 3:23:55 PM ******/
DROP TABLE [dbo].[States]
GO
/****** Object:  Table [dbo].[States]    Script Date: 7/24/2014 3:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[stateId] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[abbr] [char](2) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[stateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[States] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (1, N'Alabama', N'AL')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (2, N'Alaska', N'AK')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (3, N'Arizona', N'AZ')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (4, N'Arkansas', N'AR')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (5, N'California', N'CA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (6, N'Colorado', N'CO')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (7, N'Connecticut', N'CT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (8, N'Delaware', N'DE')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (9, N'Florida', N'FL')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (10, N'Georgia', N'GA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (11, N'Hawaii', N'HI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (12, N'Idaho', N'ID')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (13, N'Illinois', N'IL')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (14, N'Indiana', N'IN')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (15, N'Iowa', N'IA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (16, N'Kansas', N'KS')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (17, N'Kentucky', N'KY')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (18, N'Louisiana', N'LA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (19, N'Maine', N'ME')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (20, N'Maryland', N'MD')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (21, N'Massachusetts', N'MA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (22, N'Michigan', N'MI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (23, N'Minnesota', N'MN')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (24, N'Mississippi', N'MS')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (25, N'Missouri', N'MO')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (26, N'Montana', N'MT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (27, N'Nebraska', N'NE')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (28, N'Nevada', N'NV')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (29, N'New Hampshire', N'NH')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (30, N'New Jersey', N'NJ')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (31, N'New Mexico', N'NM')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (32, N'New York', N'NY')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (33, N'North Carolina', N'NC')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (34, N'North Dakota', N'ND')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (35, N'Ohio', N'OH')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (36, N'Oklahoma', N'OK')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (37, N'Oregon', N'OR')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (38, N'Pennsylvania', N'PA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (39, N'Rhode Island', N'RI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (40, N'South Carolina', N'SC')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (41, N'South Dakota', N'SD')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (42, N'Tennessee', N'TN')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (43, N'Texas', N'TX')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (44, N'Utah', N'UT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (45, N'Vermont', N'VT')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (46, N'Virginia', N'VA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (47, N'Washington', N'WA')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (48, N'West Virginia', N'WV')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (49, N'Wisconsin', N'WI')
INSERT [dbo].[States] ([stateId], [name], [abbr]) VALUES (50, N'Wyoming', N'WY')
SET IDENTITY_INSERT [dbo].[States] OFF
