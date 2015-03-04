CREATE TABLE [dbo].[Manufacturers] (
    [manId]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (255)  NOT NULL,
    [addr1]   NVARCHAR (255)  NULL,
    [addr2]   NVARCHAR (255)  NULL,
    [city]    NVARCHAR (255)  NULL,
    [stateId] BIGINT          NULL,
    [zip]     VARCHAR (11)    NULL,
    [phone1]  VARCHAR (15)    NULL,
    [phone2]  VARCHAR (15)    NULL,
    [fax]     VARCHAR (15)    NULL,
    [web]     NVARCHAR (4000) NULL,
    CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED ([manId] ASC),
    CONSTRAINT [FK_Manufacturers_States] FOREIGN KEY ([stateId]) REFERENCES [dbo].[States] ([stateId])
);



