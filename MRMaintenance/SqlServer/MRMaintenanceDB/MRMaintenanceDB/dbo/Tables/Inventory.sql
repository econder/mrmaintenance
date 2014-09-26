CREATE TABLE [dbo].[Inventory] (
    [invId]    BIGINT     IDENTITY (1, 1) NOT NULL,
    [invLocId] BIGINT     NOT NULL,
    [partId]   BIGINT     NOT NULL,
    [qty]      FLOAT (53) NOT NULL,
    CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED ([invId] ASC),
    CONSTRAINT [FK_Inventory_InventoryLocations] FOREIGN KEY ([invLocId]) REFERENCES [dbo].[InventoryLocations] ([invLocId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Inventory_Parts] FOREIGN KEY ([partId]) REFERENCES [dbo].[Parts] ([partId]) ON DELETE CASCADE ON UPDATE CASCADE
);

