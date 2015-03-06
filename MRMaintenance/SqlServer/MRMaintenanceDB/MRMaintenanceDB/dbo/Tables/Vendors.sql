CREATE TABLE [dbo].[Vendors] (
    [venId]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (255)  NOT NULL,
    [addr1]   NVARCHAR (255)  NULL,
    [addr2]   NVARCHAR (255)  NULL,
    [city]    NVARCHAR (255)  NULL,
    [stateId] BIGINT          NULL,
    [zip]     VARCHAR (11)    NULL,
    [phone1]  NVARCHAR (15)   NULL,
    [phone2]  NVARCHAR (15)   NULL,
    [fax]     NVARCHAR (15)   NULL,
    [web]     NVARCHAR (4000) NULL,
    CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED ([venId] ASC),
    CONSTRAINT [FK_Vendors_States] FOREIGN KEY ([stateId]) REFERENCES [dbo].[States] ([stateId]) ON UPDATE CASCADE
);



