CREATE TABLE [dbo].[Tools] (
    [toolId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [name]     NVARCHAR (255) NOT NULL,
    [descr]    NVARCHAR (255) NULL,
    [invLocId] BIGINT         NOT NULL,
    [qty]      INT            NOT NULL,
    CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED ([toolId] ASC),
    CONSTRAINT [FK_Tools_InventoryLocations] FOREIGN KEY ([invLocId]) REFERENCES [dbo].[InventoryLocations] ([invLocId]) ON DELETE CASCADE ON UPDATE CASCADE
);

