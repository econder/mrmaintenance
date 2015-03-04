CREATE TABLE [dbo].[Parts] (
    [partId]     BIGINT         IDENTITY (1, 1) NOT NULL,
    [manId]      BIGINT         NULL,
    [venId]      BIGINT         NULL,
    [partName]   NVARCHAR (255) NOT NULL,
    [partDescr]  VARCHAR (255)  NULL,
    [partNumber] NVARCHAR (255) NULL,
    [partSize]   FLOAT (53)     CONSTRAINT [DF_Parts_partSize] DEFAULT ((0)) NOT NULL,
    [unitId]     BIGINT         NULL,
    CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED ([partId] ASC),
    CONSTRAINT [FK_Parts_Manufacturers] FOREIGN KEY ([manId]) REFERENCES [dbo].[Manufacturers] ([manId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Parts_Units] FOREIGN KEY ([unitId]) REFERENCES [dbo].[Units] ([unitId]),
    CONSTRAINT [FK_Parts_Vendors] FOREIGN KEY ([venId]) REFERENCES [dbo].[Vendors] ([venId]) ON DELETE CASCADE ON UPDATE CASCADE
);



