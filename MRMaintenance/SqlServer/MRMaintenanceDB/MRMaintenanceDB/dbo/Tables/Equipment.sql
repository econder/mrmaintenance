CREATE TABLE [dbo].[Equipment] (
    [equipId]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [locId]             BIGINT         NOT NULL,
    [equipTypeId]       BIGINT         NOT NULL,
    [manId]             BIGINT         NOT NULL,
    [vendorId]          BIGINT         NULL,
    [modelId]           BIGINT         NULL,
    [equipNumber]       NVARCHAR (255) NULL,
    [equipName]         NVARCHAR (255) NOT NULL,
    [descr]             NVARCHAR (255) NULL,
    [equipSerial]       NVARCHAR (255) NULL,
    [hmiRuntimeTagname] NVARCHAR (255) NULL,
    [hmiCyclesTagname]  NVARCHAR (255) NULL,
    [equipMccLoc]       NVARCHAR (255) NULL,
    [equipMccPanel]     NVARCHAR (255) NULL,
    CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED ([equipId] ASC),
    CONSTRAINT [FK_Equipment_EquipmentModels] FOREIGN KEY ([modelId]) REFERENCES [dbo].[EquipmentModels] ([modelId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_EquipmentTypes] FOREIGN KEY ([equipTypeId]) REFERENCES [dbo].[EquipmentTypes] ([typeId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_Locations] FOREIGN KEY ([locId]) REFERENCES [dbo].[Locations] ([locId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_Manufacturers] FOREIGN KEY ([manId]) REFERENCES [dbo].[Manufacturers] ([manId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_Vendors] FOREIGN KEY ([vendorId]) REFERENCES [dbo].[Vendors] ([venId]) ON DELETE CASCADE ON UPDATE CASCADE
);

