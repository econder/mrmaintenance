CREATE TABLE [dbo].[Facilities] (
    [facId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (255) NOT NULL,
    [addr1]   NVARCHAR (255) NULL,
    [addr2]   NVARCHAR (255) NULL,
    [city]    NVARCHAR (255) NULL,
    [stateId] BIGINT         NULL,
    [zip]     VARCHAR (11)   NULL,
    [lat]     FLOAT (53)     NULL,
    [long]    FLOAT (53)     NULL,
    [phone1]  NVARCHAR (15)  NULL,
    [phone2]  NVARCHAR (15)  NULL,
    [fax]     NVARCHAR (15)  NULL,
    CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED ([facId] ASC),
    CONSTRAINT [FK_Facilities_States] FOREIGN KEY ([stateId]) REFERENCES [dbo].[States] ([stateId])
);



