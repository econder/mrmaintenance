CREATE TABLE [dbo].[Manufacturers] (
    [manId]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (255)  NOT NULL,
    [addr1]   NVARCHAR (255)  NULL,
    [addr2]   NVARCHAR (255)  NULL,
    [city]    NVARCHAR (255)  NULL,
    [stateId] BIGINT          NULL,
    [zip]     VARCHAR (10)    NULL,
    [phone1]  VARCHAR (10)    NULL,
    [phone2]  VARCHAR (10)    NULL,
    [fax]     VARCHAR (10)    NULL,
    [web]     NVARCHAR (4000) NULL,
    CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED ([manId] ASC),
    CONSTRAINT [FK_Manufacturers_States] FOREIGN KEY ([stateId]) REFERENCES [dbo].[States] ([stateId])
);

