CREATE TABLE [dbo].[InventoryLocations] (
    [invLocId] BIGINT         IDENTITY (1, 1) NOT NULL,
    [facId]    BIGINT         NOT NULL,
    [name]     NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_InventoryLocations] PRIMARY KEY CLUSTERED ([invLocId] ASC),
    CONSTRAINT [FK_InventoryLocations_Facilities] FOREIGN KEY ([facId]) REFERENCES [dbo].[Facilities] ([facId]) ON DELETE CASCADE ON UPDATE CASCADE
);

