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
    [hmiRuntimeCont]    BIT            CONSTRAINT [DF_Equipment_hmiRuntimeType] DEFAULT ((0)) NULL,
    [hmiCyclesTagname]  NVARCHAR (255) NULL,
    [hmiCyclesCont]     BIT            CONSTRAINT [DF_Equipment_hmiCyclesType] DEFAULT ((0)) NULL,
    [equipMccLoc]       NVARCHAR (255) NULL,
    [equipMccPanel]     NVARCHAR (255) NULL,
    CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED ([equipId] ASC),
    CONSTRAINT [FK_Equipment_EquipmentModels] FOREIGN KEY ([modelId]) REFERENCES [dbo].[EquipmentModels] ([modelId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_EquipmentTypes] FOREIGN KEY ([equipTypeId]) REFERENCES [dbo].[EquipmentTypes] ([typeId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_Locations] FOREIGN KEY ([locId]) REFERENCES [dbo].[Locations] ([locId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_Manufacturers] FOREIGN KEY ([manId]) REFERENCES [dbo].[Manufacturers] ([manId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Equipment_Vendors] FOREIGN KEY ([vendorId]) REFERENCES [dbo].[Vendors] ([venId]) ON DELETE CASCADE ON UPDATE CASCADE
);








GO



GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Daily Total, Previous Total, or Continuous Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Equipment', @level2type = N'COLUMN', @level2name = N'hmiRuntimeCont';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Daily Total, Previous Total, or Continuous Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Equipment', @level2type = N'COLUMN', @level2name = N'hmiCyclesCont';

